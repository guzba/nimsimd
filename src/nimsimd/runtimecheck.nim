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

    InstructionSetCheckInfo = object
      leaf, register, bit: int

  const checkInfos = [
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 0), # SSE3
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 9), # SSSE3
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 19), # SSE41
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 20), # SSE42
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 28), # AVX
    InstructionSetCheckInfo(leaf: 7, register: 1, bit: 5), # AVX2
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 1), # PCLMULQDQ
    InstructionSetCheckInfo(leaf: 7, register: 1, bit: 29), # SHA
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 25) # AES
  ]

  proc cpuid(eaxi, ecxi: int32): array[4, int32] = # eax, ebx, ecx, edx
    when defined(vcc):
      proc cpuid(cpuInfo: ptr int32, functionId, subFunctionId: int32)
        {.cdecl, importc: "__cpuidex", header: "intrin.h".}
      cpuid(result.eax.addr, eaxi, ecxi)
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
      leaf7 = cpuid(7, 0)

    for instructionSet in instructionSets:
      let checkInfo = checkInfos[instructionSet.ord]
      if checkInfo.leaf == 1:
        if (leaf1[checkInfo.register] and (1 shl checkInfo.bit)) == 0:
          return false
      else:
        if (leaf7[checkInfo.register] and (1 shl checkInfo.bit)) == 0:
          return false
