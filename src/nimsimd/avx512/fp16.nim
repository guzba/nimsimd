import bw

export bw

type
  M512h* {.importc: "__m512h", header: "immintrin.h", bycopy.} = object
  M256h* {.importc: "__m256h", header: "immintrin.h", bycopy.} = object
  M128h* {.importc: "__m128h", header: "immintrin.h", bycopy.} = object

{.push header: "immintrin.h".}

# Arithmetic - float16

func mm512_add_ph*(a, b: M512h): M512h {.importc: "_mm512_add_ph".}

func mm512_mask_add_ph*(src: M512h, k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_mask_add_ph".}

func mm512_maskz_add_ph*(k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_maskz_add_ph".}

func mm256_add_ph*(a, b: M256h): M256h {.importc: "_mm256_add_ph".}

func mm256_mask_add_ph*(src: M256h, k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_mask_add_ph".}

func mm256_maskz_add_ph*(k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_maskz_add_ph".}

func mm_add_ph*(a, b: M128h): M128h {.importc: "_mm_add_ph".}

func mm_mask_add_ph*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_add_ph".}

func mm_maskz_add_ph*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_add_ph".}

func mm512_sub_ph*(a, b: M512h): M512h {.importc: "_mm512_sub_ph".}

func mm512_mask_sub_ph*(src: M512h, k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_mask_sub_ph".}

func mm512_maskz_sub_ph*(k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_maskz_sub_ph".}

func mm256_sub_ph*(a, b: M256h): M256h {.importc: "_mm256_sub_ph".}

func mm256_mask_sub_ph*(src: M256h, k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_mask_sub_ph".}

func mm256_maskz_sub_ph*(k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_maskz_sub_ph".}

func mm_sub_ph*(a, b: M128h): M128h {.importc: "_mm_sub_ph".}

func mm_mask_sub_ph*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_sub_ph".}

func mm_maskz_sub_ph*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_sub_ph".}

func mm512_mul_ph*(a, b: M512h): M512h {.importc: "_mm512_mul_ph".}

func mm512_mask_mul_ph*(src: M512h, k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_mask_mul_ph".}

func mm512_maskz_mul_ph*(k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_maskz_mul_ph".}

func mm256_mul_ph*(a, b: M256h): M256h {.importc: "_mm256_mul_ph".}

func mm256_mask_mul_ph*(src: M256h, k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_mask_mul_ph".}

func mm256_maskz_mul_ph*(k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_maskz_mul_ph".}

func mm_mul_ph*(a, b: M128h): M128h {.importc: "_mm_mul_ph".}

func mm_mask_mul_ph*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_mul_ph".}

func mm_maskz_mul_ph*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_mul_ph".}

func mm512_div_ph*(a, b: M512h): M512h {.importc: "_mm512_div_ph".}

func mm512_mask_div_ph*(src: M512h, k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_mask_div_ph".}

func mm512_maskz_div_ph*(k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_maskz_div_ph".}

func mm256_div_ph*(a, b: M256h): M256h {.importc: "_mm256_div_ph".}

func mm256_mask_div_ph*(src: M256h, k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_mask_div_ph".}

func mm256_maskz_div_ph*(k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_maskz_div_ph".}

func mm_div_ph*(a, b: M128h): M128h {.importc: "_mm_div_ph".}

func mm_mask_div_ph*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_div_ph".}

func mm_maskz_div_ph*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_div_ph".}

# FMA - float16

func mm512_fmadd_ph*(a, b, c: M512h): M512h {.importc: "_mm512_fmadd_ph".}

func mm512_mask_fmadd_ph*(a: M512h, k: Mmask32, b, c: M512h): M512h {.importc: "_mm512_mask_fmadd_ph".}

func mm512_mask3_fmadd_ph*(a, b, c: M512h, k: Mmask32): M512h {.importc: "_mm512_mask3_fmadd_ph".}

func mm512_maskz_fmadd_ph*(k: Mmask32, a, b, c: M512h): M512h {.importc: "_mm512_maskz_fmadd_ph".}

func mm256_fmadd_ph*(a, b, c: M256h): M256h {.importc: "_mm256_fmadd_ph".}

func mm256_mask_fmadd_ph*(a: M256h, k: Mmask16, b, c: M256h): M256h {.importc: "_mm256_mask_fmadd_ph".}

func mm256_mask3_fmadd_ph*(a, b, c: M256h, k: Mmask16): M256h {.importc: "_mm256_mask3_fmadd_ph".}

func mm256_maskz_fmadd_ph*(k: Mmask16, a, b, c: M256h): M256h {.importc: "_mm256_maskz_fmadd_ph".}

func mm_fmadd_ph*(a, b, c: M128h): M128h {.importc: "_mm_fmadd_ph".}

func mm_mask_fmadd_ph*(a: M128h, k: Mmask8, b, c: M128h): M128h {.importc: "_mm_mask_fmadd_ph".}

func mm_mask3_fmadd_ph*(a, b, c: M128h, k: Mmask8): M128h {.importc: "_mm_mask3_fmadd_ph".}

func mm_maskz_fmadd_ph*(k: Mmask8, a, b, c: M128h): M128h {.importc: "_mm_maskz_fmadd_ph".}

func mm512_fmsub_ph*(a, b, c: M512h): M512h {.importc: "_mm512_fmsub_ph".}

func mm512_mask_fmsub_ph*(a: M512h, k: Mmask32, b, c: M512h): M512h {.importc: "_mm512_mask_fmsub_ph".}

func mm512_mask3_fmsub_ph*(a, b, c: M512h, k: Mmask32): M512h {.importc: "_mm512_mask3_fmsub_ph".}

func mm512_maskz_fmsub_ph*(k: Mmask32, a, b, c: M512h): M512h {.importc: "_mm512_maskz_fmsub_ph".}

func mm256_fmsub_ph*(a, b, c: M256h): M256h {.importc: "_mm256_fmsub_ph".}

func mm256_mask_fmsub_ph*(a: M256h, k: Mmask16, b, c: M256h): M256h {.importc: "_mm256_mask_fmsub_ph".}

func mm256_mask3_fmsub_ph*(a, b, c: M256h, k: Mmask16): M256h {.importc: "_mm256_mask3_fmsub_ph".}

func mm256_maskz_fmsub_ph*(k: Mmask16, a, b, c: M256h): M256h {.importc: "_mm256_maskz_fmsub_ph".}

func mm_fmsub_ph*(a, b, c: M128h): M128h {.importc: "_mm_fmsub_ph".}

func mm_mask_fmsub_ph*(a: M128h, k: Mmask8, b, c: M128h): M128h {.importc: "_mm_mask_fmsub_ph".}

func mm_mask3_fmsub_ph*(a, b, c: M128h, k: Mmask8): M128h {.importc: "_mm_mask3_fmsub_ph".}

func mm_maskz_fmsub_ph*(k: Mmask8, a, b, c: M128h): M128h {.importc: "_mm_maskz_fmsub_ph".}

func mm512_fnmadd_ph*(a, b, c: M512h): M512h {.importc: "_mm512_fnmadd_ph".}

func mm512_mask_fnmadd_ph*(a: M512h, k: Mmask32, b, c: M512h): M512h {.importc: "_mm512_mask_fnmadd_ph".}

func mm512_mask3_fnmadd_ph*(a, b, c: M512h, k: Mmask32): M512h {.importc: "_mm512_mask3_fnmadd_ph".}

func mm512_maskz_fnmadd_ph*(k: Mmask32, a, b, c: M512h): M512h {.importc: "_mm512_maskz_fnmadd_ph".}

func mm256_fnmadd_ph*(a, b, c: M256h): M256h {.importc: "_mm256_fnmadd_ph".}

func mm256_mask_fnmadd_ph*(a: M256h, k: Mmask16, b, c: M256h): M256h {.importc: "_mm256_mask_fnmadd_ph".}

func mm256_mask3_fnmadd_ph*(a, b, c: M256h, k: Mmask16): M256h {.importc: "_mm256_mask3_fnmadd_ph".}

func mm256_maskz_fnmadd_ph*(k: Mmask16, a, b, c: M256h): M256h {.importc: "_mm256_maskz_fnmadd_ph".}

func mm_fnmadd_ph*(a, b, c: M128h): M128h {.importc: "_mm_fnmadd_ph".}

func mm_mask_fnmadd_ph*(a: M128h, k: Mmask8, b, c: M128h): M128h {.importc: "_mm_mask_fnmadd_ph".}

func mm_mask3_fnmadd_ph*(a, b, c: M128h, k: Mmask8): M128h {.importc: "_mm_mask3_fnmadd_ph".}

func mm_maskz_fnmadd_ph*(k: Mmask8, a, b, c: M128h): M128h {.importc: "_mm_maskz_fnmadd_ph".}

func mm512_fnmsub_ph*(a, b, c: M512h): M512h {.importc: "_mm512_fnmsub_ph".}

func mm512_mask_fnmsub_ph*(a: M512h, k: Mmask32, b, c: M512h): M512h {.importc: "_mm512_mask_fnmsub_ph".}

func mm512_mask3_fnmsub_ph*(a, b, c: M512h, k: Mmask32): M512h {.importc: "_mm512_mask3_fnmsub_ph".}

func mm512_maskz_fnmsub_ph*(k: Mmask32, a, b, c: M512h): M512h {.importc: "_mm512_maskz_fnmsub_ph".}

func mm256_fnmsub_ph*(a, b, c: M256h): M256h {.importc: "_mm256_fnmsub_ph".}

func mm256_mask_fnmsub_ph*(a: M256h, k: Mmask16, b, c: M256h): M256h {.importc: "_mm256_mask_fnmsub_ph".}

func mm256_mask3_fnmsub_ph*(a, b, c: M256h, k: Mmask16): M256h {.importc: "_mm256_mask3_fnmsub_ph".}

func mm256_maskz_fnmsub_ph*(k: Mmask16, a, b, c: M256h): M256h {.importc: "_mm256_maskz_fnmsub_ph".}

func mm_fnmsub_ph*(a, b, c: M128h): M128h {.importc: "_mm_fnmsub_ph".}

func mm_mask_fnmsub_ph*(a: M128h, k: Mmask8, b, c: M128h): M128h {.importc: "_mm_mask_fnmsub_ph".}

func mm_mask3_fnmsub_ph*(a, b, c: M128h, k: Mmask8): M128h {.importc: "_mm_mask3_fnmsub_ph".}

func mm_maskz_fnmsub_ph*(k: Mmask8, a, b, c: M128h): M128h {.importc: "_mm_maskz_fnmsub_ph".}

func mm512_fmaddsub_ph*(a, b, c: M512h): M512h {.importc: "_mm512_fmaddsub_ph".}

func mm512_mask_fmaddsub_ph*(a: M512h, k: Mmask32, b, c: M512h): M512h {.importc: "_mm512_mask_fmaddsub_ph".}

func mm512_mask3_fmaddsub_ph*(a, b, c: M512h, k: Mmask32): M512h {.importc: "_mm512_mask3_fmaddsub_ph".}

func mm512_maskz_fmaddsub_ph*(k: Mmask32, a, b, c: M512h): M512h {.importc: "_mm512_maskz_fmaddsub_ph".}

func mm256_fmaddsub_ph*(a, b, c: M256h): M256h {.importc: "_mm256_fmaddsub_ph".}

func mm256_mask_fmaddsub_ph*(a: M256h, k: Mmask16, b, c: M256h): M256h {.importc: "_mm256_mask_fmaddsub_ph".}

func mm256_mask3_fmaddsub_ph*(a, b, c: M256h, k: Mmask16): M256h {.importc: "_mm256_mask3_fmaddsub_ph".}

func mm256_maskz_fmaddsub_ph*(k: Mmask16, a, b, c: M256h): M256h {.importc: "_mm256_maskz_fmaddsub_ph".}

func mm_fmaddsub_ph*(a, b, c: M128h): M128h {.importc: "_mm_fmaddsub_ph".}

func mm_mask_fmaddsub_ph*(a: M128h, k: Mmask8, b, c: M128h): M128h {.importc: "_mm_mask_fmaddsub_ph".}

func mm_mask3_fmaddsub_ph*(a, b, c: M128h, k: Mmask8): M128h {.importc: "_mm_mask3_fmaddsub_ph".}

func mm_maskz_fmaddsub_ph*(k: Mmask8, a, b, c: M128h): M128h {.importc: "_mm_maskz_fmaddsub_ph".}

func mm512_fmsubadd_ph*(a, b, c: M512h): M512h {.importc: "_mm512_fmsubadd_ph".}

func mm512_mask_fmsubadd_ph*(a: M512h, k: Mmask32, b, c: M512h): M512h {.importc: "_mm512_mask_fmsubadd_ph".}

func mm512_mask3_fmsubadd_ph*(a, b, c: M512h, k: Mmask32): M512h {.importc: "_mm512_mask3_fmsubadd_ph".}

func mm512_maskz_fmsubadd_ph*(k: Mmask32, a, b, c: M512h): M512h {.importc: "_mm512_maskz_fmsubadd_ph".}

func mm256_fmsubadd_ph*(a, b, c: M256h): M256h {.importc: "_mm256_fmsubadd_ph".}

func mm256_mask_fmsubadd_ph*(a: M256h, k: Mmask16, b, c: M256h): M256h {.importc: "_mm256_mask_fmsubadd_ph".}

func mm256_mask3_fmsubadd_ph*(a, b, c: M256h, k: Mmask16): M256h {.importc: "_mm256_mask3_fmsubadd_ph".}

func mm256_maskz_fmsubadd_ph*(k: Mmask16, a, b, c: M256h): M256h {.importc: "_mm256_maskz_fmsubadd_ph".}

func mm_fmsubadd_ph*(a, b, c: M128h): M128h {.importc: "_mm_fmsubadd_ph".}

func mm_mask_fmsubadd_ph*(a: M128h, k: Mmask8, b, c: M128h): M128h {.importc: "_mm_mask_fmsubadd_ph".}

func mm_mask3_fmsubadd_ph*(a, b, c: M128h, k: Mmask8): M128h {.importc: "_mm_mask3_fmsubadd_ph".}

func mm_maskz_fmsubadd_ph*(k: Mmask8, a, b, c: M128h): M128h {.importc: "_mm_maskz_fmsubadd_ph".}

# Load - aligned

func mm512_load_ph*(p: pointer): M512h {.importc: "_mm512_load_ph".}

func mm512_mask_load_ph*(src: M512h, k: Mmask32, mem_addr: pointer): M512h {.importc: "_mm512_mask_load_ph".}

func mm512_maskz_load_ph*(k: Mmask32, mem_addr: pointer): M512h {.importc: "_mm512_maskz_load_ph".}

func mm256_load_ph*(p: pointer): M256h {.importc: "_mm256_load_ph".}

func mm256_mask_load_ph*(src: M256h, k: Mmask16, mem_addr: pointer): M256h {.importc: "_mm256_mask_load_ph".}

func mm256_maskz_load_ph*(k: Mmask16, mem_addr: pointer): M256h {.importc: "_mm256_maskz_load_ph".}

func mm_load_ph*(p: pointer): M128h {.importc: "_mm_load_ph".}

func mm_mask_load_ph*(src: M128h, k: Mmask8, mem_addr: pointer): M128h {.importc: "_mm_mask_load_ph".}

func mm_maskz_load_ph*(k: Mmask8, mem_addr: pointer): M128h {.importc: "_mm_maskz_load_ph".}

# Load - unaligned

func mm512_loadu_ph*(p: pointer): M512h {.importc: "_mm512_loadu_ph".}

func mm512_mask_loadu_ph*(src: M512h, k: Mmask32, mem_addr: pointer): M512h {.importc: "_mm512_mask_loadu_ph".}

func mm512_maskz_loadu_ph*(k: Mmask32, mem_addr: pointer): M512h {.importc: "_mm512_maskz_loadu_ph".}

func mm256_loadu_ph*(p: pointer): M256h {.importc: "_mm256_loadu_ph".}

func mm256_mask_loadu_ph*(src: M256h, k: Mmask16, mem_addr: pointer): M256h {.importc: "_mm256_mask_loadu_ph".}

func mm256_maskz_loadu_ph*(k: Mmask16, mem_addr: pointer): M256h {.importc: "_mm256_maskz_loadu_ph".}

func mm_loadu_ph*(p: pointer): M128h {.importc: "_mm_loadu_ph".}

func mm_mask_loadu_ph*(src: M128h, k: Mmask8, mem_addr: pointer): M128h {.importc: "_mm_mask_loadu_ph".}

func mm_maskz_loadu_ph*(k: Mmask8, mem_addr: pointer): M128h {.importc: "_mm_maskz_loadu_ph".}

# Store - aligned

func mm512_store_ph*(p: pointer, a: M512h) {.importc: "_mm512_store_ph".}

func mm512_mask_store_ph*(mem_addr: pointer, k: Mmask32, a: M512h) {.importc: "_mm512_mask_store_ph".}

func mm256_store_ph*(p: pointer, a: M256h) {.importc: "_mm256_store_ph".}

func mm256_mask_store_ph*(mem_addr: pointer, k: Mmask16, a: M256h) {.importc: "_mm256_mask_store_ph".}

func mm_store_ph*(p: pointer, a: M128h) {.importc: "_mm_store_ph".}

func mm_mask_store_ph*(mem_addr: pointer, k: Mmask8, a: M128h) {.importc: "_mm_mask_store_ph".}

# Store - unaligned

func mm512_storeu_ph*(p: pointer, a: M512h) {.importc: "_mm512_storeu_ph".}

func mm512_mask_storeu_ph*(mem_addr: pointer, k: Mmask32, a: M512h) {.importc: "_mm512_mask_storeu_ph".}

func mm256_storeu_ph*(p: pointer, a: M256h) {.importc: "_mm256_storeu_ph".}

func mm256_mask_storeu_ph*(mem_addr: pointer, k: Mmask16, a: M256h) {.importc: "_mm256_mask_storeu_ph".}

func mm_storeu_ph*(p: pointer, a: M128h) {.importc: "_mm_storeu_ph".}

func mm_mask_storeu_ph*(mem_addr: pointer, k: Mmask8, a: M128h) {.importc: "_mm_mask_storeu_ph".}

# Set - broadcast single value

func mm512_set1_ph*(a: uint16): M512h {.importc: "_mm512_set1_ph".}

func mm256_set1_ph*(a: uint16): M256h {.importc: "_mm256_set1_ph".}

func mm_set1_ph*(a: uint16): M128h {.importc: "_mm_set1_ph".}

# Set - zero

func mm512_setzero_ph*(): M512h {.importc: "_mm512_setzero_ph".}

func mm256_setzero_ph*(): M256h {.importc: "_mm256_setzero_ph".}

func mm_setzero_ph*(): M128h {.importc: "_mm_setzero_ph".}

# Min/Max

func mm512_min_ph*(a, b: M512h): M512h {.importc: "_mm512_min_ph".}

func mm512_mask_min_ph*(src: M512h, k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_mask_min_ph".}

func mm512_maskz_min_ph*(k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_maskz_min_ph".}

func mm256_min_ph*(a, b: M256h): M256h {.importc: "_mm256_min_ph".}

func mm256_mask_min_ph*(src: M256h, k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_mask_min_ph".}

func mm256_maskz_min_ph*(k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_maskz_min_ph".}

func mm_min_ph*(a, b: M128h): M128h {.importc: "_mm_min_ph".}

func mm_mask_min_ph*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_min_ph".}

func mm_maskz_min_ph*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_min_ph".}

func mm512_max_ph*(a, b: M512h): M512h {.importc: "_mm512_max_ph".}

func mm512_mask_max_ph*(src: M512h, k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_mask_max_ph".}

func mm512_maskz_max_ph*(k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_maskz_max_ph".}

func mm256_max_ph*(a, b: M256h): M256h {.importc: "_mm256_max_ph".}

func mm256_mask_max_ph*(src: M256h, k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_mask_max_ph".}

func mm256_maskz_max_ph*(k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_maskz_max_ph".}

func mm_max_ph*(a, b: M128h): M128h {.importc: "_mm_max_ph".}

func mm_mask_max_ph*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_max_ph".}

func mm_maskz_max_ph*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_max_ph".}

# Sqrt

func mm512_sqrt_ph*(a: M512h): M512h {.importc: "_mm512_sqrt_ph".}

func mm512_mask_sqrt_ph*(src: M512h, k: Mmask32, a: M512h): M512h {.importc: "_mm512_mask_sqrt_ph".}

func mm512_maskz_sqrt_ph*(k: Mmask32, a: M512h): M512h {.importc: "_mm512_maskz_sqrt_ph".}

func mm256_sqrt_ph*(a: M256h): M256h {.importc: "_mm256_sqrt_ph".}

func mm256_mask_sqrt_ph*(src: M256h, k: Mmask16, a: M256h): M256h {.importc: "_mm256_mask_sqrt_ph".}

func mm256_maskz_sqrt_ph*(k: Mmask16, a: M256h): M256h {.importc: "_mm256_maskz_sqrt_ph".}

func mm_sqrt_ph*(a: M128h): M128h {.importc: "_mm_sqrt_ph".}

func mm_mask_sqrt_ph*(src: M128h, k: Mmask8, a: M128h): M128h {.importc: "_mm_mask_sqrt_ph".}

func mm_maskz_sqrt_ph*(k: Mmask8, a: M128h): M128h {.importc: "_mm_maskz_sqrt_ph".}

# Rsqrt

func mm512_rsqrt_ph*(a: M512h): M512h {.importc: "_mm512_rsqrt_ph".}

func mm512_mask_rsqrt_ph*(src: M512h, k: Mmask32, a: M512h): M512h {.importc: "_mm512_mask_rsqrt_ph".}

func mm512_maskz_rsqrt_ph*(k: Mmask32, a: M512h): M512h {.importc: "_mm512_maskz_rsqrt_ph".}

func mm256_rsqrt_ph*(a: M256h): M256h {.importc: "_mm256_rsqrt_ph".}

func mm256_mask_rsqrt_ph*(src: M256h, k: Mmask16, a: M256h): M256h {.importc: "_mm256_mask_rsqrt_ph".}

func mm256_maskz_rsqrt_ph*(k: Mmask16, a: M256h): M256h {.importc: "_mm256_maskz_rsqrt_ph".}

func mm_rsqrt_ph*(a: M128h): M128h {.importc: "_mm_rsqrt_ph".}

func mm_mask_rsqrt_ph*(src: M128h, k: Mmask8, a: M128h): M128h {.importc: "_mm_mask_rsqrt_ph".}

func mm_maskz_rsqrt_ph*(k: Mmask8, a: M128h): M128h {.importc: "_mm_maskz_rsqrt_ph".}

# Rcp (reciprocal)

func mm512_rcp_ph*(a: M512h): M512h {.importc: "_mm512_rcp_ph".}

func mm512_mask_rcp_ph*(src: M512h, k: Mmask32, a: M512h): M512h {.importc: "_mm512_mask_rcp_ph".}

func mm512_maskz_rcp_ph*(k: Mmask32, a: M512h): M512h {.importc: "_mm512_maskz_rcp_ph".}

func mm256_rcp_ph*(a: M256h): M256h {.importc: "_mm256_rcp_ph".}

func mm256_mask_rcp_ph*(src: M256h, k: Mmask16, a: M256h): M256h {.importc: "_mm256_mask_rcp_ph".}

func mm256_maskz_rcp_ph*(k: Mmask16, a: M256h): M256h {.importc: "_mm256_maskz_rcp_ph".}

func mm_rcp_ph*(a: M128h): M128h {.importc: "_mm_rcp_ph".}

func mm_mask_rcp_ph*(src: M128h, k: Mmask8, a: M128h): M128h {.importc: "_mm_mask_rcp_ph".}

func mm_maskz_rcp_ph*(k: Mmask8, a: M128h): M128h {.importc: "_mm_maskz_rcp_ph".}

# Abs

func mm512_abs_ph*(a: M512h): M512h {.importc: "_mm512_abs_ph".}

func mm256_abs_ph*(a: M256h): M256h {.importc: "_mm256_abs_ph".}

func mm_abs_ph*(a: M128h): M128h {.importc: "_mm_abs_ph".}

# Getexp

func mm512_getexp_ph*(a: M512h): M512h {.importc: "_mm512_getexp_ph".}

func mm512_mask_getexp_ph*(src: M512h, k: Mmask32, a: M512h): M512h {.importc: "_mm512_mask_getexp_ph".}

func mm512_maskz_getexp_ph*(k: Mmask32, a: M512h): M512h {.importc: "_mm512_maskz_getexp_ph".}

func mm256_getexp_ph*(a: M256h): M256h {.importc: "_mm256_getexp_ph".}

func mm256_mask_getexp_ph*(src: M256h, k: Mmask16, a: M256h): M256h {.importc: "_mm256_mask_getexp_ph".}

func mm256_maskz_getexp_ph*(k: Mmask16, a: M256h): M256h {.importc: "_mm256_maskz_getexp_ph".}

func mm_getexp_ph*(a: M128h): M128h {.importc: "_mm_getexp_ph".}

func mm_mask_getexp_ph*(src: M128h, k: Mmask8, a: M128h): M128h {.importc: "_mm_mask_getexp_ph".}

func mm_maskz_getexp_ph*(k: Mmask8, a: M128h): M128h {.importc: "_mm_maskz_getexp_ph".}

# Getmant

func mm512_getmant_ph*(a: M512h, interv, sc: int32 | uint32): M512h {.importc: "_mm512_getmant_ph".}

func mm512_mask_getmant_ph*(src: M512h, k: Mmask32, a: M512h, interv, sc: int32 | uint32): M512h {.importc: "_mm512_mask_getmant_ph".}

func mm512_maskz_getmant_ph*(k: Mmask32, a: M512h, interv, sc: int32 | uint32): M512h {.importc: "_mm512_maskz_getmant_ph".}

func mm256_getmant_ph*(a: M256h, interv, sc: int32 | uint32): M256h {.importc: "_mm256_getmant_ph".}

func mm256_mask_getmant_ph*(src: M256h, k: Mmask16, a: M256h, interv, sc: int32 | uint32): M256h {.importc: "_mm256_mask_getmant_ph".}

func mm256_maskz_getmant_ph*(k: Mmask16, a: M256h, interv, sc: int32 | uint32): M256h {.importc: "_mm256_maskz_getmant_ph".}

func mm_getmant_ph*(a: M128h, interv, sc: int32 | uint32): M128h {.importc: "_mm_getmant_ph".}

func mm_mask_getmant_ph*(src: M128h, k: Mmask8, a: M128h, interv, sc: int32 | uint32): M128h {.importc: "_mm_mask_getmant_ph".}

func mm_maskz_getmant_ph*(k: Mmask8, a: M128h, interv, sc: int32 | uint32): M128h {.importc: "_mm_maskz_getmant_ph".}

# Scalef

func mm512_scalef_ph*(a, b: M512h): M512h {.importc: "_mm512_scalef_ph".}

func mm512_mask_scalef_ph*(src: M512h, k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_mask_scalef_ph".}

func mm512_maskz_scalef_ph*(k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_maskz_scalef_ph".}

func mm256_scalef_ph*(a, b: M256h): M256h {.importc: "_mm256_scalef_ph".}

func mm256_mask_scalef_ph*(src: M256h, k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_mask_scalef_ph".}

func mm256_maskz_scalef_ph*(k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_maskz_scalef_ph".}

func mm_scalef_ph*(a, b: M128h): M128h {.importc: "_mm_scalef_ph".}

func mm_mask_scalef_ph*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_scalef_ph".}

func mm_maskz_scalef_ph*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_scalef_ph".}

# Reduce

func mm512_reduce_add_ph*(a: M512h): uint16 {.importc: "_mm512_reduce_add_ph".}

func mm512_reduce_mul_ph*(a: M512h): uint16 {.importc: "_mm512_reduce_mul_ph".}

func mm512_reduce_min_ph*(a: M512h): uint16 {.importc: "_mm512_reduce_min_ph".}

func mm512_reduce_max_ph*(a: M512h): uint16 {.importc: "_mm512_reduce_max_ph".}

# Compare

func mm512_cmp_ph_mask*(a, b: M512h, imm8: int32 | uint32): Mmask32 {.importc: "_mm512_cmp_ph_mask".}

func mm512_mask_cmp_ph_mask*(k1: Mmask32, a, b: M512h, imm8: int32 | uint32): Mmask32 {.importc: "_mm512_mask_cmp_ph_mask".}

func mm256_cmp_ph_mask*(a, b: M256h, imm8: int32 | uint32): Mmask16 {.importc: "_mm256_cmp_ph_mask".}

func mm256_mask_cmp_ph_mask*(k1: Mmask16, a, b: M256h, imm8: int32 | uint32): Mmask16 {.importc: "_mm256_mask_cmp_ph_mask".}

func mm_cmp_ph_mask*(a, b: M128h, imm8: int32 | uint32): Mmask8 {.importc: "_mm_cmp_ph_mask".}

func mm_mask_cmp_ph_mask*(k1: Mmask8, a, b: M128h, imm8: int32 | uint32): Mmask8 {.importc: "_mm_mask_cmp_ph_mask".}

# Conversion - fp16 to fp32

func mm512_cvtxph_ps*(a: M256h): M512 {.importc: "_mm512_cvtxph_ps".}

func mm512_mask_cvtxph_ps*(src: M512, k: Mmask16, a: M256h): M512 {.importc: "_mm512_mask_cvtxph_ps".}

func mm512_maskz_cvtxph_ps*(k: Mmask16, a: M256h): M512 {.importc: "_mm512_maskz_cvtxph_ps".}

func mm256_cvtxph_ps*(a: M128h): M256 {.importc: "_mm256_cvtxph_ps".}

func mm256_mask_cvtxph_ps*(src: M256, k: Mmask8, a: M128h): M256 {.importc: "_mm256_mask_cvtxph_ps".}

func mm256_maskz_cvtxph_ps*(k: Mmask8, a: M128h): M256 {.importc: "_mm256_maskz_cvtxph_ps".}

func mm_cvtxph_ps*(a: M128h): M128 {.importc: "_mm_cvtxph_ps".}

func mm_mask_cvtxph_ps*(src: M128, k: Mmask8, a: M128h): M128 {.importc: "_mm_mask_cvtxph_ps".}

func mm_maskz_cvtxph_ps*(k: Mmask8, a: M128h): M128 {.importc: "_mm_maskz_cvtxph_ps".}

# Conversion - fp32 to fp16

func mm512_cvtxps_ph*(a: M512): M256h {.importc: "_mm512_cvtxps_ph".}

func mm512_mask_cvtxps_ph*(src: M256h, k: Mmask16, a: M512): M256h {.importc: "_mm512_mask_cvtxps_ph".}

func mm512_maskz_cvtxps_ph*(k: Mmask16, a: M512): M256h {.importc: "_mm512_maskz_cvtxps_ph".}

func mm256_cvtxps_ph*(a: M256): M128h {.importc: "_mm256_cvtxps_ph".}

func mm256_mask_cvtxps_ph*(src: M128h, k: Mmask8, a: M256): M128h {.importc: "_mm256_mask_cvtxps_ph".}

func mm256_maskz_cvtxps_ph*(k: Mmask8, a: M256): M128h {.importc: "_mm256_maskz_cvtxps_ph".}

func mm_cvtxps_ph*(a: M128): M128h {.importc: "_mm_cvtxps_ph".}

func mm_mask_cvtxps_ph*(src: M128h, k: Mmask8, a: M128): M128h {.importc: "_mm_mask_cvtxps_ph".}

func mm_maskz_cvtxps_ph*(k: Mmask8, a: M128): M128h {.importc: "_mm_maskz_cvtxps_ph".}

# Conversion - fp16 to fp64

func mm512_cvtph_pd*(a: M128h): M512d {.importc: "_mm512_cvtph_pd".}

func mm512_mask_cvtph_pd*(src: M512d, k: Mmask8, a: M128h): M512d {.importc: "_mm512_mask_cvtph_pd".}

func mm512_maskz_cvtph_pd*(k: Mmask8, a: M128h): M512d {.importc: "_mm512_maskz_cvtph_pd".}

func mm256_cvtph_pd*(a: M128h): M256d {.importc: "_mm256_cvtph_pd".}

func mm256_mask_cvtph_pd*(src: M256d, k: Mmask8, a: M128h): M256d {.importc: "_mm256_mask_cvtph_pd".}

func mm256_maskz_cvtph_pd*(k: Mmask8, a: M128h): M256d {.importc: "_mm256_maskz_cvtph_pd".}

func mm_cvtph_pd*(a: M128h): M128d {.importc: "_mm_cvtph_pd".}

func mm_mask_cvtph_pd*(src: M128d, k: Mmask8, a: M128h): M128d {.importc: "_mm_mask_cvtph_pd".}

func mm_maskz_cvtph_pd*(k: Mmask8, a: M128h): M128d {.importc: "_mm_maskz_cvtph_pd".}

# Conversion - fp64 to fp16

func mm512_cvtpd_ph*(a: M512d): M128h {.importc: "_mm512_cvtpd_ph".}

func mm512_mask_cvtpd_ph*(src: M128h, k: Mmask8, a: M512d): M128h {.importc: "_mm512_mask_cvtpd_ph".}

func mm512_maskz_cvtpd_ph*(k: Mmask8, a: M512d): M128h {.importc: "_mm512_maskz_cvtpd_ph".}

func mm256_cvtpd_ph*(a: M256d): M128h {.importc: "_mm256_cvtpd_ph".}

func mm256_mask_cvtpd_ph*(src: M128h, k: Mmask8, a: M256d): M128h {.importc: "_mm256_mask_cvtpd_ph".}

func mm256_maskz_cvtpd_ph*(k: Mmask8, a: M256d): M128h {.importc: "_mm256_maskz_cvtpd_ph".}

func mm_cvtpd_ph*(a: M128d): M128h {.importc: "_mm_cvtpd_ph".}

func mm_mask_cvtpd_ph*(src: M128h, k: Mmask8, a: M128d): M128h {.importc: "_mm_mask_cvtpd_ph".}

func mm_maskz_cvtpd_ph*(k: Mmask8, a: M128d): M128h {.importc: "_mm_maskz_cvtpd_ph".}

# Conversion - fp16 to int16

func mm512_cvtph_epi16*(a: M512h): M512i {.importc: "_mm512_cvtph_epi16".}

func mm512_mask_cvtph_epi16*(src: M512i, k: Mmask32, a: M512h): M512i {.importc: "_mm512_mask_cvtph_epi16".}

func mm512_maskz_cvtph_epi16*(k: Mmask32, a: M512h): M512i {.importc: "_mm512_maskz_cvtph_epi16".}

func mm256_cvtph_epi16*(a: M256h): M256i {.importc: "_mm256_cvtph_epi16".}

func mm256_mask_cvtph_epi16*(src: M256i, k: Mmask16, a: M256h): M256i {.importc: "_mm256_mask_cvtph_epi16".}

func mm256_maskz_cvtph_epi16*(k: Mmask16, a: M256h): M256i {.importc: "_mm256_maskz_cvtph_epi16".}

func mm_cvtph_epi16*(a: M128h): M128i {.importc: "_mm_cvtph_epi16".}

func mm_mask_cvtph_epi16*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvtph_epi16".}

func mm_maskz_cvtph_epi16*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvtph_epi16".}

# Conversion - fp16 to uint16

func mm512_cvtph_epu16*(a: M512h): M512i {.importc: "_mm512_cvtph_epu16".}

func mm512_mask_cvtph_epu16*(src: M512i, k: Mmask32, a: M512h): M512i {.importc: "_mm512_mask_cvtph_epu16".}

func mm512_maskz_cvtph_epu16*(k: Mmask32, a: M512h): M512i {.importc: "_mm512_maskz_cvtph_epu16".}

func mm256_cvtph_epu16*(a: M256h): M256i {.importc: "_mm256_cvtph_epu16".}

func mm256_mask_cvtph_epu16*(src: M256i, k: Mmask16, a: M256h): M256i {.importc: "_mm256_mask_cvtph_epu16".}

func mm256_maskz_cvtph_epu16*(k: Mmask16, a: M256h): M256i {.importc: "_mm256_maskz_cvtph_epu16".}

func mm_cvtph_epu16*(a: M128h): M128i {.importc: "_mm_cvtph_epu16".}

func mm_mask_cvtph_epu16*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvtph_epu16".}

func mm_maskz_cvtph_epu16*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvtph_epu16".}

# Conversion - int16 to fp16

func mm512_cvtepi16_ph*(a: M512i): M512h {.importc: "_mm512_cvtepi16_ph".}

func mm512_mask_cvtepi16_ph*(src: M512h, k: Mmask32, a: M512i): M512h {.importc: "_mm512_mask_cvtepi16_ph".}

func mm512_maskz_cvtepi16_ph*(k: Mmask32, a: M512i): M512h {.importc: "_mm512_maskz_cvtepi16_ph".}

func mm256_cvtepi16_ph*(a: M256i): M256h {.importc: "_mm256_cvtepi16_ph".}

func mm256_mask_cvtepi16_ph*(src: M256h, k: Mmask16, a: M256i): M256h {.importc: "_mm256_mask_cvtepi16_ph".}

func mm256_maskz_cvtepi16_ph*(k: Mmask16, a: M256i): M256h {.importc: "_mm256_maskz_cvtepi16_ph".}

func mm_cvtepi16_ph*(a: M128i): M128h {.importc: "_mm_cvtepi16_ph".}

func mm_mask_cvtepi16_ph*(src: M128h, k: Mmask8, a: M128i): M128h {.importc: "_mm_mask_cvtepi16_ph".}

func mm_maskz_cvtepi16_ph*(k: Mmask8, a: M128i): M128h {.importc: "_mm_maskz_cvtepi16_ph".}

# Conversion - uint16 to fp16

func mm512_cvtepu16_ph*(a: M512i): M512h {.importc: "_mm512_cvtepu16_ph".}

func mm512_mask_cvtepu16_ph*(src: M512h, k: Mmask32, a: M512i): M512h {.importc: "_mm512_mask_cvtepu16_ph".}

func mm512_maskz_cvtepu16_ph*(k: Mmask32, a: M512i): M512h {.importc: "_mm512_maskz_cvtepu16_ph".}

func mm256_cvtepu16_ph*(a: M256i): M256h {.importc: "_mm256_cvtepu16_ph".}

func mm256_mask_cvtepu16_ph*(src: M256h, k: Mmask16, a: M256i): M256h {.importc: "_mm256_mask_cvtepu16_ph".}

func mm256_maskz_cvtepu16_ph*(k: Mmask16, a: M256i): M256h {.importc: "_mm256_maskz_cvtepu16_ph".}

func mm_cvtepu16_ph*(a: M128i): M128h {.importc: "_mm_cvtepu16_ph".}

func mm_mask_cvtepu16_ph*(src: M128h, k: Mmask8, a: M128i): M128h {.importc: "_mm_mask_cvtepu16_ph".}

func mm_maskz_cvtepu16_ph*(k: Mmask8, a: M128i): M128h {.importc: "_mm_maskz_cvtepu16_ph".}

# Conversion - fp16 to int32

func mm512_cvtph_epi32*(a: M256h): M512i {.importc: "_mm512_cvtph_epi32".}

func mm512_mask_cvtph_epi32*(src: M512i, k: Mmask16, a: M256h): M512i {.importc: "_mm512_mask_cvtph_epi32".}

func mm512_maskz_cvtph_epi32*(k: Mmask16, a: M256h): M512i {.importc: "_mm512_maskz_cvtph_epi32".}

func mm256_cvtph_epi32*(a: M128h): M256i {.importc: "_mm256_cvtph_epi32".}

func mm256_mask_cvtph_epi32*(src: M256i, k: Mmask8, a: M128h): M256i {.importc: "_mm256_mask_cvtph_epi32".}

func mm256_maskz_cvtph_epi32*(k: Mmask8, a: M128h): M256i {.importc: "_mm256_maskz_cvtph_epi32".}

func mm_cvtph_epi32*(a: M128h): M128i {.importc: "_mm_cvtph_epi32".}

func mm_mask_cvtph_epi32*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvtph_epi32".}

func mm_maskz_cvtph_epi32*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvtph_epi32".}

# Conversion - fp16 to uint32

func mm512_cvtph_epu32*(a: M256h): M512i {.importc: "_mm512_cvtph_epu32".}

func mm512_mask_cvtph_epu32*(src: M512i, k: Mmask16, a: M256h): M512i {.importc: "_mm512_mask_cvtph_epu32".}

func mm512_maskz_cvtph_epu32*(k: Mmask16, a: M256h): M512i {.importc: "_mm512_maskz_cvtph_epu32".}

func mm256_cvtph_epu32*(a: M128h): M256i {.importc: "_mm256_cvtph_epu32".}

func mm256_mask_cvtph_epu32*(src: M256i, k: Mmask8, a: M128h): M256i {.importc: "_mm256_mask_cvtph_epu32".}

func mm256_maskz_cvtph_epu32*(k: Mmask8, a: M128h): M256i {.importc: "_mm256_maskz_cvtph_epu32".}

func mm_cvtph_epu32*(a: M128h): M128i {.importc: "_mm_cvtph_epu32".}

func mm_mask_cvtph_epu32*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvtph_epu32".}

func mm_maskz_cvtph_epu32*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvtph_epu32".}

# Conversion - int32 to fp16

func mm512_cvtepi32_ph*(a: M512i): M256h {.importc: "_mm512_cvtepi32_ph".}

func mm512_mask_cvtepi32_ph*(src: M256h, k: Mmask16, a: M512i): M256h {.importc: "_mm512_mask_cvtepi32_ph".}

func mm512_maskz_cvtepi32_ph*(k: Mmask16, a: M512i): M256h {.importc: "_mm512_maskz_cvtepi32_ph".}

func mm256_cvtepi32_ph*(a: M256i): M128h {.importc: "_mm256_cvtepi32_ph".}

func mm256_mask_cvtepi32_ph*(src: M128h, k: Mmask8, a: M256i): M128h {.importc: "_mm256_mask_cvtepi32_ph".}

func mm256_maskz_cvtepi32_ph*(k: Mmask8, a: M256i): M128h {.importc: "_mm256_maskz_cvtepi32_ph".}

func mm_cvtepi32_ph*(a: M128i): M128h {.importc: "_mm_cvtepi32_ph".}

func mm_mask_cvtepi32_ph*(src: M128h, k: Mmask8, a: M128i): M128h {.importc: "_mm_mask_cvtepi32_ph".}

func mm_maskz_cvtepi32_ph*(k: Mmask8, a: M128i): M128h {.importc: "_mm_maskz_cvtepi32_ph".}

# Conversion - uint32 to fp16

func mm512_cvtepu32_ph*(a: M512i): M256h {.importc: "_mm512_cvtepu32_ph".}

func mm512_mask_cvtepu32_ph*(src: M256h, k: Mmask16, a: M512i): M256h {.importc: "_mm512_mask_cvtepu32_ph".}

func mm512_maskz_cvtepu32_ph*(k: Mmask16, a: M512i): M256h {.importc: "_mm512_maskz_cvtepu32_ph".}

func mm256_cvtepu32_ph*(a: M256i): M128h {.importc: "_mm256_cvtepu32_ph".}

func mm256_mask_cvtepu32_ph*(src: M128h, k: Mmask8, a: M256i): M128h {.importc: "_mm256_mask_cvtepu32_ph".}

func mm256_maskz_cvtepu32_ph*(k: Mmask8, a: M256i): M128h {.importc: "_mm256_maskz_cvtepu32_ph".}

func mm_cvtepu32_ph*(a: M128i): M128h {.importc: "_mm_cvtepu32_ph".}

func mm_mask_cvtepu32_ph*(src: M128h, k: Mmask8, a: M128i): M128h {.importc: "_mm_mask_cvtepu32_ph".}

func mm_maskz_cvtepu32_ph*(k: Mmask8, a: M128i): M128h {.importc: "_mm_maskz_cvtepu32_ph".}

# Conversion - fp16 to int64

func mm512_cvtph_epi64*(a: M128h): M512i {.importc: "_mm512_cvtph_epi64".}

func mm512_mask_cvtph_epi64*(src: M512i, k: Mmask8, a: M128h): M512i {.importc: "_mm512_mask_cvtph_epi64".}

func mm512_maskz_cvtph_epi64*(k: Mmask8, a: M128h): M512i {.importc: "_mm512_maskz_cvtph_epi64".}

func mm256_cvtph_epi64*(a: M128h): M256i {.importc: "_mm256_cvtph_epi64".}

func mm256_mask_cvtph_epi64*(src: M256i, k: Mmask8, a: M128h): M256i {.importc: "_mm256_mask_cvtph_epi64".}

func mm256_maskz_cvtph_epi64*(k: Mmask8, a: M128h): M256i {.importc: "_mm256_maskz_cvtph_epi64".}

func mm_cvtph_epi64*(a: M128h): M128i {.importc: "_mm_cvtph_epi64".}

func mm_mask_cvtph_epi64*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvtph_epi64".}

func mm_maskz_cvtph_epi64*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvtph_epi64".}

# Conversion - fp16 to uint64

func mm512_cvtph_epu64*(a: M128h): M512i {.importc: "_mm512_cvtph_epu64".}

func mm512_mask_cvtph_epu64*(src: M512i, k: Mmask8, a: M128h): M512i {.importc: "_mm512_mask_cvtph_epu64".}

func mm512_maskz_cvtph_epu64*(k: Mmask8, a: M128h): M512i {.importc: "_mm512_maskz_cvtph_epu64".}

func mm256_cvtph_epu64*(a: M128h): M256i {.importc: "_mm256_cvtph_epu64".}

func mm256_mask_cvtph_epu64*(src: M256i, k: Mmask8, a: M128h): M256i {.importc: "_mm256_mask_cvtph_epu64".}

func mm256_maskz_cvtph_epu64*(k: Mmask8, a: M128h): M256i {.importc: "_mm256_maskz_cvtph_epu64".}

func mm_cvtph_epu64*(a: M128h): M128i {.importc: "_mm_cvtph_epu64".}

func mm_mask_cvtph_epu64*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvtph_epu64".}

func mm_maskz_cvtph_epu64*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvtph_epu64".}

# Conversion - int64 to fp16

func mm512_cvtepi64_ph*(a: M512i): M128h {.importc: "_mm512_cvtepi64_ph".}

func mm512_mask_cvtepi64_ph*(src: M128h, k: Mmask8, a: M512i): M128h {.importc: "_mm512_mask_cvtepi64_ph".}

func mm512_maskz_cvtepi64_ph*(k: Mmask8, a: M512i): M128h {.importc: "_mm512_maskz_cvtepi64_ph".}

func mm256_cvtepi64_ph*(a: M256i): M128h {.importc: "_mm256_cvtepi64_ph".}

func mm256_mask_cvtepi64_ph*(src: M128h, k: Mmask8, a: M256i): M128h {.importc: "_mm256_mask_cvtepi64_ph".}

func mm256_maskz_cvtepi64_ph*(k: Mmask8, a: M256i): M128h {.importc: "_mm256_maskz_cvtepi64_ph".}

func mm_cvtepi64_ph*(a: M128i): M128h {.importc: "_mm_cvtepi64_ph".}

func mm_mask_cvtepi64_ph*(src: M128h, k: Mmask8, a: M128i): M128h {.importc: "_mm_mask_cvtepi64_ph".}

func mm_maskz_cvtepi64_ph*(k: Mmask8, a: M128i): M128h {.importc: "_mm_maskz_cvtepi64_ph".}

# Conversion - uint64 to fp16

func mm512_cvtepu64_ph*(a: M512i): M128h {.importc: "_mm512_cvtepu64_ph".}

func mm512_mask_cvtepu64_ph*(src: M128h, k: Mmask8, a: M512i): M128h {.importc: "_mm512_mask_cvtepu64_ph".}

func mm512_maskz_cvtepu64_ph*(k: Mmask8, a: M512i): M128h {.importc: "_mm512_maskz_cvtepu64_ph".}

func mm256_cvtepu64_ph*(a: M256i): M128h {.importc: "_mm256_cvtepu64_ph".}

func mm256_mask_cvtepu64_ph*(src: M128h, k: Mmask8, a: M256i): M128h {.importc: "_mm256_mask_cvtepu64_ph".}

func mm256_maskz_cvtepu64_ph*(k: Mmask8, a: M256i): M128h {.importc: "_mm256_maskz_cvtepu64_ph".}

func mm_cvtepu64_ph*(a: M128i): M128h {.importc: "_mm_cvtepu64_ph".}

func mm_mask_cvtepu64_ph*(src: M128h, k: Mmask8, a: M128i): M128h {.importc: "_mm_mask_cvtepu64_ph".}

func mm_maskz_cvtepu64_ph*(k: Mmask8, a: M128i): M128h {.importc: "_mm_maskz_cvtepu64_ph".}

# Truncate conversions - fp16 to int

func mm512_cvttph_epi16*(a: M512h): M512i {.importc: "_mm512_cvttph_epi16".}

func mm512_mask_cvttph_epi16*(src: M512i, k: Mmask32, a: M512h): M512i {.importc: "_mm512_mask_cvttph_epi16".}

func mm512_maskz_cvttph_epi16*(k: Mmask32, a: M512h): M512i {.importc: "_mm512_maskz_cvttph_epi16".}

func mm256_cvttph_epi16*(a: M256h): M256i {.importc: "_mm256_cvttph_epi16".}

func mm256_mask_cvttph_epi16*(src: M256i, k: Mmask16, a: M256h): M256i {.importc: "_mm256_mask_cvttph_epi16".}

func mm256_maskz_cvttph_epi16*(k: Mmask16, a: M256h): M256i {.importc: "_mm256_maskz_cvttph_epi16".}

func mm_cvttph_epi16*(a: M128h): M128i {.importc: "_mm_cvttph_epi16".}

func mm_mask_cvttph_epi16*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvttph_epi16".}

func mm_maskz_cvttph_epi16*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvttph_epi16".}

func mm512_cvttph_epu16*(a: M512h): M512i {.importc: "_mm512_cvttph_epu16".}

func mm512_mask_cvttph_epu16*(src: M512i, k: Mmask32, a: M512h): M512i {.importc: "_mm512_mask_cvttph_epu16".}

func mm512_maskz_cvttph_epu16*(k: Mmask32, a: M512h): M512i {.importc: "_mm512_maskz_cvttph_epu16".}

func mm256_cvttph_epu16*(a: M256h): M256i {.importc: "_mm256_cvttph_epu16".}

func mm256_mask_cvttph_epu16*(src: M256i, k: Mmask16, a: M256h): M256i {.importc: "_mm256_mask_cvttph_epu16".}

func mm256_maskz_cvttph_epu16*(k: Mmask16, a: M256h): M256i {.importc: "_mm256_maskz_cvttph_epu16".}

func mm_cvttph_epu16*(a: M128h): M128i {.importc: "_mm_cvttph_epu16".}

func mm_mask_cvttph_epu16*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvttph_epu16".}

func mm_maskz_cvttph_epu16*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvttph_epu16".}

func mm512_cvttph_epi32*(a: M256h): M512i {.importc: "_mm512_cvttph_epi32".}

func mm512_mask_cvttph_epi32*(src: M512i, k: Mmask16, a: M256h): M512i {.importc: "_mm512_mask_cvttph_epi32".}

func mm512_maskz_cvttph_epi32*(k: Mmask16, a: M256h): M512i {.importc: "_mm512_maskz_cvttph_epi32".}

func mm256_cvttph_epi32*(a: M128h): M256i {.importc: "_mm256_cvttph_epi32".}

func mm256_mask_cvttph_epi32*(src: M256i, k: Mmask8, a: M128h): M256i {.importc: "_mm256_mask_cvttph_epi32".}

func mm256_maskz_cvttph_epi32*(k: Mmask8, a: M128h): M256i {.importc: "_mm256_maskz_cvttph_epi32".}

func mm_cvttph_epi32*(a: M128h): M128i {.importc: "_mm_cvttph_epi32".}

func mm_mask_cvttph_epi32*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvttph_epi32".}

func mm_maskz_cvttph_epi32*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvttph_epi32".}

func mm512_cvttph_epu32*(a: M256h): M512i {.importc: "_mm512_cvttph_epu32".}

func mm512_mask_cvttph_epu32*(src: M512i, k: Mmask16, a: M256h): M512i {.importc: "_mm512_mask_cvttph_epu32".}

func mm512_maskz_cvttph_epu32*(k: Mmask16, a: M256h): M512i {.importc: "_mm512_maskz_cvttph_epu32".}

func mm256_cvttph_epu32*(a: M128h): M256i {.importc: "_mm256_cvttph_epu32".}

func mm256_mask_cvttph_epu32*(src: M256i, k: Mmask8, a: M128h): M256i {.importc: "_mm256_mask_cvttph_epu32".}

func mm256_maskz_cvttph_epu32*(k: Mmask8, a: M128h): M256i {.importc: "_mm256_maskz_cvttph_epu32".}

func mm_cvttph_epu32*(a: M128h): M128i {.importc: "_mm_cvttph_epu32".}

func mm_mask_cvttph_epu32*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvttph_epu32".}

func mm_maskz_cvttph_epu32*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvttph_epu32".}

func mm512_cvttph_epi64*(a: M128h): M512i {.importc: "_mm512_cvttph_epi64".}

func mm512_mask_cvttph_epi64*(src: M512i, k: Mmask8, a: M128h): M512i {.importc: "_mm512_mask_cvttph_epi64".}

func mm512_maskz_cvttph_epi64*(k: Mmask8, a: M128h): M512i {.importc: "_mm512_maskz_cvttph_epi64".}

func mm256_cvttph_epi64*(a: M128h): M256i {.importc: "_mm256_cvttph_epi64".}

func mm256_mask_cvttph_epi64*(src: M256i, k: Mmask8, a: M128h): M256i {.importc: "_mm256_mask_cvttph_epi64".}

func mm256_maskz_cvttph_epi64*(k: Mmask8, a: M128h): M256i {.importc: "_mm256_maskz_cvttph_epi64".}

func mm_cvttph_epi64*(a: M128h): M128i {.importc: "_mm_cvttph_epi64".}

func mm_mask_cvttph_epi64*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvttph_epi64".}

func mm_maskz_cvttph_epi64*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvttph_epi64".}

func mm512_cvttph_epu64*(a: M128h): M512i {.importc: "_mm512_cvttph_epu64".}

func mm512_mask_cvttph_epu64*(src: M512i, k: Mmask8, a: M128h): M512i {.importc: "_mm512_mask_cvttph_epu64".}

func mm512_maskz_cvttph_epu64*(k: Mmask8, a: M128h): M512i {.importc: "_mm512_maskz_cvttph_epu64".}

func mm256_cvttph_epu64*(a: M128h): M256i {.importc: "_mm256_cvttph_epu64".}

func mm256_mask_cvttph_epu64*(src: M256i, k: Mmask8, a: M128h): M256i {.importc: "_mm256_mask_cvttph_epu64".}

func mm256_maskz_cvttph_epu64*(k: Mmask8, a: M128h): M256i {.importc: "_mm256_maskz_cvttph_epu64".}

func mm_cvttph_epu64*(a: M128h): M128i {.importc: "_mm_cvttph_epu64".}

func mm_mask_cvttph_epu64*(src: M128i, k: Mmask8, a: M128h): M128i {.importc: "_mm_mask_cvttph_epu64".}

func mm_maskz_cvttph_epu64*(k: Mmask8, a: M128h): M128i {.importc: "_mm_maskz_cvttph_epu64".}

# Cast between types

func mm512_castph_ps*(a: M512h): M512 {.importc: "_mm512_castph_ps".}

func mm512_castps_ph*(a: M512): M512h {.importc: "_mm512_castps_ph".}

func mm512_castph_pd*(a: M512h): M512d {.importc: "_mm512_castph_pd".}

func mm512_castpd_ph*(a: M512d): M512h {.importc: "_mm512_castpd_ph".}

func mm512_castph_si512*(a: M512h): M512i {.importc: "_mm512_castph_si512".}

func mm512_castsi512_ph*(a: M512i): M512h {.importc: "_mm512_castsi512_ph".}

func mm256_castph_ps*(a: M256h): M256 {.importc: "_mm256_castph_ps".}

func mm256_castps_ph*(a: M256): M256h {.importc: "_mm256_castps_ph".}

func mm256_castph_pd*(a: M256h): M256d {.importc: "_mm256_castph_pd".}

func mm256_castpd_ph*(a: M256d): M256h {.importc: "_mm256_castpd_ph".}

func mm256_castph_si256*(a: M256h): M256i {.importc: "_mm256_castph_si256".}

func mm256_castsi256_ph*(a: M256i): M256h {.importc: "_mm256_castsi256_ph".}

func mm_castph_ps*(a: M128h): M128 {.importc: "_mm_castph_ps".}

func mm_castps_ph*(a: M128): M128h {.importc: "_mm_castps_ph".}

func mm_castph_pd*(a: M128h): M128d {.importc: "_mm_castph_pd".}

func mm_castpd_ph*(a: M128d): M128h {.importc: "_mm_castpd_ph".}

func mm_castph_si128*(a: M128h): M128i {.importc: "_mm_castph_si128".}

func mm_castsi128_ph*(a: M128i): M128h {.importc: "_mm_castsi128_ph".}

# Cast between sizes

func mm512_castph512_ph128*(a: M512h): M128h {.importc: "_mm512_castph512_ph128".}

func mm512_castph512_ph256*(a: M512h): M256h {.importc: "_mm512_castph512_ph256".}

func mm512_castph128_ph512*(a: M128h): M512h {.importc: "_mm512_castph128_ph512".}

func mm512_castph256_ph512*(a: M256h): M512h {.importc: "_mm512_castph256_ph512".}

func mm256_castph256_ph128*(a: M256h): M128h {.importc: "_mm256_castph256_ph128".}

func mm256_castph128_ph256*(a: M128h): M256h {.importc: "_mm256_castph128_ph256".}

# Blend

func mm512_mask_blend_ph*(k: Mmask32, a, b: M512h): M512h {.importc: "_mm512_mask_blend_ph".}

func mm256_mask_blend_ph*(k: Mmask16, a, b: M256h): M256h {.importc: "_mm256_mask_blend_ph".}

func mm_mask_blend_ph*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_blend_ph".}

# Permute

func mm512_permutex2var_ph*(a: M512h, idx: M512i, b: M512h): M512h {.importc: "_mm512_permutex2var_ph".}

func mm512_mask_permutex2var_ph*(a: M512h, k: Mmask32, idx: M512i, b: M512h): M512h {.importc: "_mm512_mask_permutex2var_ph".}

func mm512_mask2_permutex2var_ph*(a: M512h, idx: M512i, k: Mmask32, b: M512h): M512h {.importc: "_mm512_mask2_permutex2var_ph".}

func mm512_maskz_permutex2var_ph*(k: Mmask32, a: M512h, idx: M512i, b: M512h): M512h {.importc: "_mm512_maskz_permutex2var_ph".}

func mm256_permutex2var_ph*(a: M256h, idx: M256i, b: M256h): M256h {.importc: "_mm256_permutex2var_ph".}

func mm256_mask_permutex2var_ph*(a: M256h, k: Mmask16, idx: M256i, b: M256h): M256h {.importc: "_mm256_mask_permutex2var_ph".}

func mm256_mask2_permutex2var_ph*(a: M256h, idx: M256i, k: Mmask16, b: M256h): M256h {.importc: "_mm256_mask2_permutex2var_ph".}

func mm256_maskz_permutex2var_ph*(k: Mmask16, a: M256h, idx: M256i, b: M256h): M256h {.importc: "_mm256_maskz_permutex2var_ph".}

func mm_permutex2var_ph*(a: M128h, idx: M128i, b: M128h): M128h {.importc: "_mm_permutex2var_ph".}

func mm_mask_permutex2var_ph*(a: M128h, k: Mmask8, idx: M128i, b: M128h): M128h {.importc: "_mm_mask_permutex2var_ph".}

func mm_mask2_permutex2var_ph*(a: M128h, idx: M128i, k: Mmask8, b: M128h): M128h {.importc: "_mm_mask2_permutex2var_ph".}

func mm_maskz_permutex2var_ph*(k: Mmask8, a: M128h, idx: M128i, b: M128h): M128h {.importc: "_mm_maskz_permutex2var_ph".}

func mm512_permutexvar_ph*(idx: M512i, a: M512h): M512h {.importc: "_mm512_permutexvar_ph".}

func mm512_mask_permutexvar_ph*(src: M512h, k: Mmask32, idx: M512i, a: M512h): M512h {.importc: "_mm512_mask_permutexvar_ph".}

func mm512_maskz_permutexvar_ph*(k: Mmask32, idx: M512i, a: M512h): M512h {.importc: "_mm512_maskz_permutexvar_ph".}

func mm256_permutexvar_ph*(idx: M256i, a: M256h): M256h {.importc: "_mm256_permutexvar_ph".}

func mm256_mask_permutexvar_ph*(src: M256h, k: Mmask16, idx: M256i, a: M256h): M256h {.importc: "_mm256_mask_permutexvar_ph".}

func mm256_maskz_permutexvar_ph*(k: Mmask16, idx: M256i, a: M256h): M256h {.importc: "_mm256_maskz_permutexvar_ph".}

# Shuffle

func mm512_shuffle_ph*(a, b: M512h, imm8: int32 | uint32): M512h {.importc: "_mm512_shuffle_ph".}

func mm512_mask_shuffle_ph*(src: M512h, k: Mmask32, a, b: M512h, imm8: int32 | uint32): M512h {.importc: "_mm512_mask_shuffle_ph".}

func mm512_maskz_shuffle_ph*(k: Mmask32, a, b: M512h, imm8: int32 | uint32): M512h {.importc: "_mm512_maskz_shuffle_ph".}

func mm256_shuffle_ph*(a, b: M256h, imm8: int32 | uint32): M256h {.importc: "_mm256_shuffle_ph".}

func mm256_mask_shuffle_ph*(src: M256h, k: Mmask16, a, b: M256h, imm8: int32 | uint32): M256h {.importc: "_mm256_mask_shuffle_ph".}

func mm256_maskz_shuffle_ph*(k: Mmask16, a, b: M256h, imm8: int32 | uint32): M256h {.importc: "_mm256_maskz_shuffle_ph".}

func mm_shuffle_ph*(a, b: M128h, imm8: int32 | uint32): M128h {.importc: "_mm_shuffle_ph".}

func mm_mask_shuffle_ph*(src: M128h, k: Mmask8, a, b: M128h, imm8: int32 | uint32): M128h {.importc: "_mm_mask_shuffle_ph".}

func mm_maskz_shuffle_ph*(k: Mmask8, a, b: M128h, imm8: int32 | uint32): M128h {.importc: "_mm_maskz_shuffle_ph".}

# Broadcast

func mm512_broadcastph_ps*(a: M128h): M512 {.importc: "_mm512_broadcastph_ps".}

func mm256_broadcastph_ps*(a: M128h): M256 {.importc: "_mm256_broadcastph_ps".}

# Complex multiply-add

func mm512_fcmadd_pch*(a, b, c: M512h): M512h {.importc: "_mm512_fcmadd_pch".}

func mm512_mask_fcmadd_pch*(a: M512h, k: Mmask16, b, c: M512h): M512h {.importc: "_mm512_mask_fcmadd_pch".}

func mm512_mask3_fcmadd_pch*(a, b, c: M512h, k: Mmask16): M512h {.importc: "_mm512_mask3_fcmadd_pch".}

func mm512_maskz_fcmadd_pch*(k: Mmask16, a, b, c: M512h): M512h {.importc: "_mm512_maskz_fcmadd_pch".}

func mm256_fcmadd_pch*(a, b, c: M256h): M256h {.importc: "_mm256_fcmadd_pch".}

func mm256_mask_fcmadd_pch*(a: M256h, k: Mmask8, b, c: M256h): M256h {.importc: "_mm256_mask_fcmadd_pch".}

func mm256_mask3_fcmadd_pch*(a, b, c: M256h, k: Mmask8): M256h {.importc: "_mm256_mask3_fcmadd_pch".}

func mm256_maskz_fcmadd_pch*(k: Mmask8, a, b, c: M256h): M256h {.importc: "_mm256_maskz_fcmadd_pch".}

func mm_fcmadd_pch*(a, b, c: M128h): M128h {.importc: "_mm_fcmadd_pch".}

func mm_mask_fcmadd_pch*(a: M128h, k: Mmask8, b, c: M128h): M128h {.importc: "_mm_mask_fcmadd_pch".}

func mm_mask3_fcmadd_pch*(a, b, c: M128h, k: Mmask8): M128h {.importc: "_mm_mask3_fcmadd_pch".}

func mm_maskz_fcmadd_pch*(k: Mmask8, a, b, c: M128h): M128h {.importc: "_mm_maskz_fcmadd_pch".}

func mm512_fmadd_pch*(a, b, c: M512h): M512h {.importc: "_mm512_fmadd_pch".}

func mm512_mask_fmadd_pch*(a: M512h, k: Mmask16, b, c: M512h): M512h {.importc: "_mm512_mask_fmadd_pch".}

func mm512_mask3_fmadd_pch*(a, b, c: M512h, k: Mmask16): M512h {.importc: "_mm512_mask3_fmadd_pch".}

func mm512_maskz_fmadd_pch*(k: Mmask16, a, b, c: M512h): M512h {.importc: "_mm512_maskz_fmadd_pch".}

func mm256_fmadd_pch*(a, b, c: M256h): M256h {.importc: "_mm256_fmadd_pch".}

func mm256_mask_fmadd_pch*(a: M256h, k: Mmask8, b, c: M256h): M256h {.importc: "_mm256_mask_fmadd_pch".}

func mm256_mask3_fmadd_pch*(a, b, c: M256h, k: Mmask8): M256h {.importc: "_mm256_mask3_fmadd_pch".}

func mm256_maskz_fmadd_pch*(k: Mmask8, a, b, c: M256h): M256h {.importc: "_mm256_maskz_fmadd_pch".}

func mm_fmadd_pch*(a, b, c: M128h): M128h {.importc: "_mm_fmadd_pch".}

func mm_mask_fmadd_pch*(a: M128h, k: Mmask8, b, c: M128h): M128h {.importc: "_mm_mask_fmadd_pch".}

func mm_mask3_fmadd_pch*(a, b, c: M128h, k: Mmask8): M128h {.importc: "_mm_mask3_fmadd_pch".}

func mm_maskz_fmadd_pch*(k: Mmask8, a, b, c: M128h): M128h {.importc: "_mm_maskz_fmadd_pch".}

# Complex multiply

func mm512_fcmul_pch*(a, b: M512h): M512h {.importc: "_mm512_fcmul_pch".}

func mm512_mask_fcmul_pch*(src: M512h, k: Mmask16, a, b: M512h): M512h {.importc: "_mm512_mask_fcmul_pch".}

func mm512_maskz_fcmul_pch*(k: Mmask16, a, b: M512h): M512h {.importc: "_mm512_maskz_fcmul_pch".}

func mm256_fcmul_pch*(a, b: M256h): M256h {.importc: "_mm256_fcmul_pch".}

func mm256_mask_fcmul_pch*(src: M256h, k: Mmask8, a, b: M256h): M256h {.importc: "_mm256_mask_fcmul_pch".}

func mm256_maskz_fcmul_pch*(k: Mmask8, a, b: M256h): M256h {.importc: "_mm256_maskz_fcmul_pch".}

func mm_fcmul_pch*(a, b: M128h): M128h {.importc: "_mm_fcmul_pch".}

func mm_mask_fcmul_pch*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_fcmul_pch".}

func mm_maskz_fcmul_pch*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_fcmul_pch".}

func mm512_fmul_pch*(a, b: M512h): M512h {.importc: "_mm512_fmul_pch".}

func mm512_mask_fmul_pch*(src: M512h, k: Mmask16, a, b: M512h): M512h {.importc: "_mm512_mask_fmul_pch".}

func mm512_maskz_fmul_pch*(k: Mmask16, a, b: M512h): M512h {.importc: "_mm512_maskz_fmul_pch".}

func mm256_fmul_pch*(a, b: M256h): M256h {.importc: "_mm256_fmul_pch".}

func mm256_mask_fmul_pch*(src: M256h, k: Mmask8, a, b: M256h): M256h {.importc: "_mm256_mask_fmul_pch".}

func mm256_maskz_fmul_pch*(k: Mmask8, a, b: M256h): M256h {.importc: "_mm256_maskz_fmul_pch".}

func mm_fmul_pch*(a, b: M128h): M128h {.importc: "_mm_fmul_pch".}

func mm_mask_fmul_pch*(src: M128h, k: Mmask8, a, b: M128h): M128h {.importc: "_mm_mask_fmul_pch".}

func mm_maskz_fmul_pch*(k: Mmask8, a, b: M128h): M128h {.importc: "_mm_maskz_fmul_pch".}

# Roundscale

func mm512_roundscale_ph*(a: M512h, imm8: int32 | uint32): M512h {.importc: "_mm512_roundscale_ph".}

func mm512_mask_roundscale_ph*(src: M512h, k: Mmask32, a: M512h, imm8: int32 | uint32): M512h {.importc: "_mm512_mask_roundscale_ph".}

func mm512_maskz_roundscale_ph*(k: Mmask32, a: M512h, imm8: int32 | uint32): M512h {.importc: "_mm512_maskz_roundscale_ph".}

func mm256_roundscale_ph*(a: M256h, imm8: int32 | uint32): M256h {.importc: "_mm256_roundscale_ph".}

func mm256_mask_roundscale_ph*(src: M256h, k: Mmask16, a: M256h, imm8: int32 | uint32): M256h {.importc: "_mm256_mask_roundscale_ph".}

func mm256_maskz_roundscale_ph*(k: Mmask16, a: M256h, imm8: int32 | uint32): M256h {.importc: "_mm256_maskz_roundscale_ph".}

func mm_roundscale_ph*(a: M128h, imm8: int32 | uint32): M128h {.importc: "_mm_roundscale_ph".}

func mm_mask_roundscale_ph*(src: M128h, k: Mmask8, a: M128h, imm8: int32 | uint32): M128h {.importc: "_mm_mask_roundscale_ph".}

func mm_maskz_roundscale_ph*(k: Mmask8, a: M128h, imm8: int32 | uint32): M128h {.importc: "_mm_maskz_roundscale_ph".}

{.pop.}
