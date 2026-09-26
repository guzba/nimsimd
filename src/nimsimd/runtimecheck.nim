when defined(amd64):
  ## https://www.felixcloutier.com/x86/cpuid

  type
    InstructionSet* = enum
      SSE3
      SSSE3
      SSE41
      SSE42
      AVX
      AVX2
      PCLMULQDQ
      SHA
      AES
      CMPXCHG16B
      F16C
      BMI1
      BMI2
      AVX512F
      AVX512CD
      AVX512DQ
      AVX512BW
      AVX512VL
      AVX512VNNI
      AVX512IFMA
      AVX512VBMI
      AVX512VBMI2
      AVX512VPOPCNTDQ
      AVX512BITALG
      AVX512BF16
      AVX512FP16
      AVX512VP2INTERSECT
      GFNI
      VPCLMULQDQ
      VAES

    InstructionSetCheckInfo = object
      leaf, subleaf, register, bit: int

  const checkInfos = [
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 0), # SSE3
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 9), # SSSE3
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 19), # SSE41
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 20), # SSE42
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 28), # AVX
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 5), # AVX2
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 1), # PCLMULQDQ
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 29), # SHA
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 25), # AES
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 13), # CMPXCHG16B
    InstructionSetCheckInfo(leaf: 1, subleaf: 0, register: 2, bit: 29), # F16C
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 3), # BMI1
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 8), # BMI2
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 16), # AVX512F
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 28), # AVX512CD
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 17), # AVX512DQ
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 30), # AVX512BW
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 31), # AVX512VL
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 2, bit: 11), # AVX512VNNI
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 1, bit: 21), # AVX512IFMA
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 2, bit: 1), # AVX512VBMI
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 2, bit: 6), # AVX512VBMI2
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 2, bit: 14), # AVX512VPOPCNTDQ
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 2, bit: 12), # AVX512BITALG
    InstructionSetCheckInfo(leaf: 7, subleaf: 1, register: 0, bit: 5), # AVX512BF16
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 3, bit: 23), # AVX512FP16
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 3, bit: 8), # AVX512VP2INTERSECT
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 2, bit: 8), # GFNI
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 2, bit: 10), # VPCLMULQDQ
    InstructionSetCheckInfo(leaf: 7, subleaf: 0, register: 2, bit: 9), # VAES
  ]

  proc cpuid(eaxi, ecxi: int32): array[4, int32] = # eax, ebx, ecx, edx
    when defined(vcc):
      proc cpuid(cpuInfo: ptr int32, functionId, subFunctionId: int32)
        {.cdecl, importc: "__cpuidex", header: "intrin.h".}
      cpuid(cast[ptr int32](result.addr), eaxi, ecxi)
    else:
      var (eaxr, ebxr, ecxr, edxr) = (0'i32, 0'i32, 0'i32, 0'i32)
      asm """
        cpuid
        :"=a"(`eaxr`), "=b"(`ebxr`), "=c"(`ecxr`), "=d"(`edxr`)
        :"a"(`eaxi`), "c"(`ecxi`)"""
      [eaxr, ebxr, ecxr, edxr]

  proc checkInstructionSets*(instructionSets: set[InstructionSet]): bool =
    result = true

    let
      leaf1 = cpuid(1, 0)
      leaf7_0 = cpuid(7, 0)
      leaf7_1 = cpuid(7, 1)

    for instructionSet in instructionSets:
      let checkInfo = checkInfos[instructionSet.ord]
      var leaf: array[4, int32]
      if checkInfo.leaf == 1:
        leaf = leaf1
      elif checkInfo.leaf == 7 and checkInfo.subleaf == 0:
        leaf = leaf7_0
      elif checkInfo.leaf == 7 and checkInfo.subleaf == 1:
        leaf = leaf7_1
      else:
        return false
      if (leaf[checkInfo.register] and (1'i32 shl checkInfo.bit)) == 0:
        return false
