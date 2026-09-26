import bw

export bw

{.push header: "immintrin.h".}

# DPBUSD - Dot Product of Unsigned Bytes and Signed Bytes

func mm512_dpbusd_epi32*(src, a, b: M512i): M512i {.importc: "_mm512_dpbusd_epi32".}

func mm512_mask_dpbusd_epi32*(src: M512i, k: Mmask16, a, b: M512i): M512i {.importc: "_mm512_mask_dpbusd_epi32".}

func mm512_maskz_dpbusd_epi32*(k: Mmask16, src, a, b: M512i): M512i {.importc: "_mm512_maskz_dpbusd_epi32".}

# DPBUSDS - Dot Product of Unsigned Bytes and Signed Bytes with Saturation

func mm512_dpbusds_epi32*(src, a, b: M512i): M512i {.importc: "_mm512_dpbusds_epi32".}

func mm512_mask_dpbusds_epi32*(src: M512i, k: Mmask16, a, b: M512i): M512i {.importc: "_mm512_mask_dpbusds_epi32".}

func mm512_maskz_dpbusds_epi32*(k: Mmask16, src, a, b: M512i): M512i {.importc: "_mm512_maskz_dpbusds_epi32".}

# DPWSSD - Dot Product of Signed Words

func mm512_dpwssd_epi32*(src, a, b: M512i): M512i {.importc: "_mm512_dpwssd_epi32".}

func mm512_mask_dpwssd_epi32*(src: M512i, k: Mmask16, a, b: M512i): M512i {.importc: "_mm512_mask_dpwssd_epi32".}

func mm512_maskz_dpwssd_epi32*(k: Mmask16, src, a, b: M512i): M512i {.importc: "_mm512_maskz_dpwssd_epi32".}

# DPWSSDS - Dot Product of Signed Words with Saturation

func mm512_dpwssds_epi32*(src, a, b: M512i): M512i {.importc: "_mm512_dpwssds_epi32".}

func mm512_mask_dpwssds_epi32*(src: M512i, k: Mmask16, a, b: M512i): M512i {.importc: "_mm512_mask_dpwssds_epi32".}

func mm512_maskz_dpwssds_epi32*(k: Mmask16, src, a, b: M512i): M512i {.importc: "_mm512_maskz_dpwssds_epi32".}

{.pop.}
