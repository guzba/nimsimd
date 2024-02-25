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
      CMPXCHG16B # Atomic CompareExchange 16-byte, avail. since Haswell
      F16C       # needs test
      BM1        # ŴIP
      BM2        # WIP

    InstructionSetCheckInfo = object
      leaf, register, bit: int

  const checkInfos = [
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 0),  # SSE3
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 9),  # SSSE3
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 19), # SSE41
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 20), # SSE42
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 28), # AVX
    InstructionSetCheckInfo(leaf: 7, register: 1, bit: 5),  # AVX2
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 1),  # PCLMULQDQ
    InstructionSetCheckInfo(leaf: 7, register: 1, bit: 29), # SHA
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 25), # AES
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 13), # CMPXCHG16B
    InstructionSetCheckInfo(leaf: 1, register: 2, bit: 29), # F16C
    InstructionSetCheckInfo(leaf: 7, register: 1, bit:  3), # BMI1
    InstructionSetCheckInfo(leaf: 7, register: 1, bit:  8), # BMI2
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
      leaf7 = cpuid(7, 0)

    for instructionSet in instructionSets:
      let checkInfo = checkInfos[instructionSet.ord]
      if checkInfo.leaf == 1:
        if (leaf1[checkInfo.register] and (1 shl checkInfo.bit)) == 0:
          return false
      else:
        if (leaf7[checkInfo.register] and (1 shl checkInfo.bit)) == 0:
          return false

  proc queryCacheLineSize*(): uint8 =
    #
    # CLFLUSH line size
    #
    # The size of this CPUs Cacheline sits in bits 7..15
    # of leaf-1 in the EAX-register. This value times 8
    # represents the capacity in bytes.
    # For my WhiskeyLake-i5 it reports eight, so 8 x 8 = 64.
    # Some more confirmation thru testing would be nice..
    
    let eax = cpuid(1, 0)

    result = 8 * (eax[1] shr 8).uint8
