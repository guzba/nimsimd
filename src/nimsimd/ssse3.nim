## SSSE3 intrinsics

import sse3
export sse3

when defined(gcc):
  {.localPassc: "-mssse3".}

{.push header: "tmmintrin.h".}

func mm_abs_epi16*(a: M128i): M128i {.importc: "_mm_abs_epi16".}

func mm_abs_epi32*(a: M128i): M128i {.importc: "_mm_abs_epi32".}

func mm_abs_epi8*(a: M128i): M128i {.importc: "_mm_abs_epi8".}

func mm_alignr_epi8*(a, b: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_alignr_epi8".}

func mm_hadd_epi16*(a, b: M128i): M128i {.importc: "_mm_hadd_epi16".}

func mm_hadd_epi32*(a, b: M128i): M128i {.importc: "_mm_hadd_epi32".}

func mm_hadds_epi16*(a, b: M128i): M128i {.importc: "_mm_hadds_epi16".}

func mm_hsub_epi16*(a, b: M128i): M128i {.importc: "_mm_hsub_epi16".}

func mm_hsub_epi32*(a, b: M128i): M128i {.importc: "_mm_hsub_epi32".}

func mm_hsubs_epi16*(a, b: M128i): M128i {.importc: "_mm_hsubs_epi16".}

func mm_maddubs_epi16*(a, b: M128i): M128i {.importc: "_mm_maddubs_epi16".}

func mm_mulhrs_epi16*(a, b: M128i): M128i {.importc: "_mm_mulhrs_epi16".}

func mm_shuffle_epi8*(a, b: M128i): M128i {.importc: "_mm_shuffle_epi8".}

func mm_sign_epi16*(a, b: M128i): M128i {.importc: "_mm_sign_epi16".}

func mm_sign_epi32*(a, b: M128i): M128i {.importc: "_mm_sign_epi32".}

func mm_sign_epi8*(a, b: M128i): M128i {.importc: "_mm_sign_epi8".}

{.pop.}
