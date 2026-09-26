import f

export f

{.push header: "immintrin.h".}

# MADD52LO - Multiply Low 52 Bits and Add

func mm512_madd52lo_epu64*(a, b, c: M512i): M512i {.importc: "_mm512_madd52lo_epu64".}

func mm512_mask_madd52lo_epu64*(a: M512i, k: Mmask8, b, c: M512i): M512i {.importc: "_mm512_mask_madd52lo_epu64".}

func mm512_maskz_madd52lo_epu64*(k: Mmask8, a, b, c: M512i): M512i {.importc: "_mm512_maskz_madd52lo_epu64".}

# MADD52HI - Multiply High 52 Bits and Add

func mm512_madd52hi_epu64*(a, b, c: M512i): M512i {.importc: "_mm512_madd52hi_epu64".}

func mm512_mask_madd52hi_epu64*(a: M512i, k: Mmask8, b, c: M512i): M512i {.importc: "_mm512_mask_madd52hi_epu64".}

func mm512_maskz_madd52hi_epu64*(k: Mmask8, a, b, c: M512i): M512i {.importc: "_mm512_maskz_madd52hi_epu64".}

{.pop.}
