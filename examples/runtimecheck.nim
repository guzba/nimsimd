import nimsimd/runtimecheck

let
  cpuHasAvx* = checkInstructionSets({AVX})
  cpuHasAvx2* = checkInstructionSets({AVX, AVX2})

echo "AVX: ", cpuHasAvx
echo "AVX2: ", cpuHasAvx2
