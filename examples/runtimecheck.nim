import nimsimd/runtimecheck

let
  cpuHasAvx* = checkInstructionSets({AVX})
  cpuHasAvx2* = checkInstructionSets({AVX, AVX2})
  cpuHasAvx512* = checkInstructionSets({AVX512F, AVX512CD, AVX512VL, AVX512DQ, AVX512BW})
  cpuHasAvx512vnni* = checkInstructionSets({AVX512VNNI})
  cpuHasAvx512bf16* = checkInstructionSets({AVX512BF16})
  cpuHasAvx512fp16* = checkInstructionSets({AVX512FP16})
  cpuHasAvx512cnl* = checkInstructionSets({
    AVX512F, AVX512CD, AVX512VL, AVX512DQ, AVX512BW, AVX512IFMA, AVX512VBMI
  })
  cpuHasAvx512icl* = checkInstructionSets({
    AVX512F, AVX512CD, AVX512VL, AVX512DQ, AVX512BW,
    AVX512IFMA, AVX512VBMI, AVX512VBMI2, AVX512VPOPCNTDQ, AVX512BITALG, AVX512VNNI,
    VPCLMULQDQ, GFNI, VAES
  })
  cpuHasAvx512zen4* = checkInstructionSets({
    AVX512F, AVX512CD, AVX512VL, AVX512DQ, AVX512BW,
    AVX512IFMA, AVX512VBMI, AVX512VBMI2, AVX512VPOPCNTDQ, AVX512BITALG, AVX512VNNI,
    VPCLMULQDQ, GFNI, VAES, AVX512BF16
  })
  cpuHasVp2intersect* = checkInstructionSets({AVX512VP2INTERSECT})

echo "AVX: ", cpuHasAvx
echo "AVX2: ", cpuHasAvx2
echo "AVX512 (Skylake): ", cpuHasAvx512
echo "AVX512 VNNI: ", cpuHasAvx512vnni
echo "AVX512 BF16: ", cpuHasAvx512bf16
echo "AVX512 FP16: ", cpuHasAvx512fp16
echo "AVX512 CNL (Cannon Lake): ", cpuHasAvx512cnl
echo "AVX512 ICL (Ice Lake): ", cpuHasAvx512icl
echo "AVX512 Zen4: ", cpuHasAvx512zen4
echo "VP2INTERSECT: ", cpuHasVp2intersect
