## SSE3 intrinsics

import sse2
export sse2

{.push header: "pmmintrin.h".}

func mm_addsub_pd*(a, b: M128d): M128d {.importc: "_mm_addsub_pd".}

func mm_addsub_ps*(a, b: M128): M128 {.importc: "_mm_addsub_ps".}

func mm_hadd_pd*(a, b: M128d): M128d {.importc: "_mm_hadd_pd".}

func mm_hadd_ps *(a, b: M128): M128 {.importc: "_mm_hadd_ps".}

func mm_hsub_pd*(a, b: M128d): M128d {.importc: "_mm_hsub_pd".}

func mm_hsub_ps*(a, b: M128): M128 {.importc: "_mm_hsub_ps".}

func mm_lddqu_si128*(p: pointer): M128i {.importc: "_mm_lddqu_si128".}

func mm_loaddup_pd*(p: pointer): M128d {.importc: "_mm_loaddup_pd".}

func mm_movedup_pd*(a: M128d): M128d {.importc: "_mm_movedup_pd".}

func mm_movehdup_ps*(a: M128): M128 {.importc: "_mm_movehdup_ps".}

func mm_moveldup_ps*(a: M128): M128 {.importc: "_mm_moveldup_ps".}

{.pop.}
