import nimsimd/avx512/vaes, nimsimd/runtimecheck

when defined(gcc) or defined(clang):
  {.localPassc: "-mavx512bw -mvaes".}

if checkInstructionSets({AVX512F, AVX512BW, VAES}):
  let
    plaintext = mm512_set_epi64(
      0x0123456789ABCDEF'i64, 0xFEDCBA9876543210'i64,
      0x0123456789ABCDEF'i64, 0xFEDCBA9876543210'i64,
      0x0123456789ABCDEF'i64, 0xFEDCBA9876543210'i64,
      0x0123456789ABCDEF'i64, 0xFEDCBA9876543210'i64
    )
    roundKey = mm512_setzero_si512()

    encrypted = mm512_aesenc_epi128(plaintext, roundKey)

  doAssert cast[array[8, int64]](encrypted)[0] != cast[array[8, int64]](plaintext)[0]

  let
    plain256 = mm256_set_epi64x(
      0x0123456789ABCDEF'i64, 0xFEDCBA9876543210'i64,
      0x0123456789ABCDEF'i64, 0xFEDCBA9876543210'i64
    )
    key256 = mm256_setzero_si256()
    enc256 = mm256_aesenc_epi128(plain256, key256)

  doAssert cast[array[4, int64]](enc256)[0] != cast[array[4, int64]](plain256)[0]

  echo "VAES: OK"
else:
  echo "VAES: not available on this CPU"
