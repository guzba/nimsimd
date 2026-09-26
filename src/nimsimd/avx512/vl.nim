import f

export f

{.push header: "immintrin.h".}

# Arithmetic - 256-bit masked

func mm256_mask_add_epi32*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_add_epi32".}

func mm256_maskz_add_epi32*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_add_epi32".}

func mm256_mask_add_epi64*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_add_epi64".}

func mm256_maskz_add_epi64*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_add_epi64".}

func mm256_mask_sub_epi32*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_sub_epi32".}

func mm256_maskz_sub_epi32*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_sub_epi32".}

func mm256_mask_sub_epi64*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_sub_epi64".}

func mm256_maskz_sub_epi64*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_sub_epi64".}

# Arithmetic - 128-bit masked

func mm_mask_add_epi32*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_add_epi32".}

func mm_maskz_add_epi32*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_add_epi32".}

func mm_mask_add_epi64*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_add_epi64".}

func mm_maskz_add_epi64*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_add_epi64".}

func mm_mask_sub_epi32*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_sub_epi32".}

func mm_maskz_sub_epi32*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_sub_epi32".}

func mm_mask_sub_epi64*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_sub_epi64".}

func mm_maskz_sub_epi64*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_sub_epi64".}

# Logical - 256-bit masked

func mm256_mask_and_epi32*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_and_epi32".}

func mm256_maskz_and_epi32*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_and_epi32".}

func mm256_mask_and_epi64*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_and_epi64".}

func mm256_maskz_and_epi64*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_and_epi64".}

func mm256_mask_or_epi32*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_or_epi32".}

func mm256_maskz_or_epi32*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_or_epi32".}

func mm256_mask_or_epi64*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_or_epi64".}

func mm256_maskz_or_epi64*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_or_epi64".}

func mm256_mask_xor_epi32*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_xor_epi32".}

func mm256_maskz_xor_epi32*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_xor_epi32".}

func mm256_mask_xor_epi64*(src: M256i, k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_xor_epi64".}

func mm256_maskz_xor_epi64*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_maskz_xor_epi64".}

# Logical - 128-bit masked

func mm_mask_and_epi32*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_and_epi32".}

func mm_maskz_and_epi32*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_and_epi32".}

func mm_mask_and_epi64*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_and_epi64".}

func mm_maskz_and_epi64*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_and_epi64".}

func mm_mask_or_epi32*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_or_epi32".}

func mm_maskz_or_epi32*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_or_epi32".}

func mm_mask_or_epi64*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_or_epi64".}

func mm_maskz_or_epi64*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_or_epi64".}

func mm_mask_xor_epi32*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_xor_epi32".}

func mm_maskz_xor_epi32*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_xor_epi32".}

func mm_mask_xor_epi64*(src: M128i, k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_xor_epi64".}

func mm_maskz_xor_epi64*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_maskz_xor_epi64".}

# Compare - 256-bit

func mm256_cmpeq_epi32_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmpeq_epi32_mask".}

func mm256_cmpeq_epi64_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmpeq_epi64_mask".}

func mm256_cmpgt_epi32_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmpgt_epi32_mask".}

func mm256_cmpgt_epi64_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmpgt_epi64_mask".}

func mm256_cmplt_epi32_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmplt_epi32_mask".}

func mm256_cmplt_epi64_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmplt_epi64_mask".}

func mm256_cmple_epi32_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmple_epi32_mask".}

func mm256_cmple_epi64_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmple_epi64_mask".}

func mm256_cmpge_epi32_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmpge_epi32_mask".}

func mm256_cmpge_epi64_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmpge_epi64_mask".}

func mm256_cmpneq_epi32_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmpneq_epi32_mask".}

func mm256_cmpneq_epi64_mask*(a, b: M256i): Mmask8 {.importc: "_mm256_cmpneq_epi64_mask".}

# Compare - 128-bit

func mm_cmpeq_epi32_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmpeq_epi32_mask".}

func mm_cmpeq_epi64_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmpeq_epi64_mask".}

func mm_cmpgt_epi32_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmpgt_epi32_mask".}

func mm_cmpgt_epi64_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmpgt_epi64_mask".}

func mm_cmplt_epi32_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmplt_epi32_mask".}

func mm_cmplt_epi64_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmplt_epi64_mask".}

func mm_cmple_epi32_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmple_epi32_mask".}

func mm_cmple_epi64_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmple_epi64_mask".}

func mm_cmpge_epi32_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmpge_epi32_mask".}

func mm_cmpge_epi64_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmpge_epi64_mask".}

func mm_cmpneq_epi32_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmpneq_epi32_mask".}

func mm_cmpneq_epi64_mask*(a, b: M128i): Mmask8 {.importc: "_mm_cmpneq_epi64_mask".}

# Blend - 256-bit

func mm256_mask_blend_epi32*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_blend_epi32".}

func mm256_mask_blend_epi64*(k: Mmask8, a, b: M256i): M256i {.importc: "_mm256_mask_blend_epi64".}

func mm256_mask_blend_ps*(k: Mmask8, a, b: M256): M256 {.importc: "_mm256_mask_blend_ps".}

func mm256_mask_blend_pd*(k: Mmask8, a, b: M256d): M256d {.importc: "_mm256_mask_blend_pd".}

# Blend - 128-bit

func mm_mask_blend_epi32*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_blend_epi32".}

func mm_mask_blend_epi64*(k: Mmask8, a, b: M128i): M128i {.importc: "_mm_mask_blend_epi64".}

func mm_mask_blend_ps*(k: Mmask8, a, b: M128): M128 {.importc: "_mm_mask_blend_ps".}

func mm_mask_blend_pd*(k: Mmask8, a, b: M128d): M128d {.importc: "_mm_mask_blend_pd".}

# Broadcast - 256-bit

func mm256_mask_broadcastss_ps*(src: M256, k: Mmask8, a: M128): M256 {.importc: "_mm256_mask_broadcastss_ps".}

func mm256_maskz_broadcastss_ps*(k: Mmask8, a: M128): M256 {.importc: "_mm256_maskz_broadcastss_ps".}

func mm256_mask_broadcastsd_pd*(src: M256d, k: Mmask8, a: M128d): M256d {.importc: "_mm256_mask_broadcastsd_pd".}

func mm256_maskz_broadcastsd_pd*(k: Mmask8, a: M128d): M256d {.importc: "_mm256_maskz_broadcastsd_pd".}

func mm256_mask_broadcastd_epi32*(src: M256i, k: Mmask8, a: M128i): M256i {.importc: "_mm256_mask_broadcastd_epi32".}

func mm256_maskz_broadcastd_epi32*(k: Mmask8, a: M128i): M256i {.importc: "_mm256_maskz_broadcastd_epi32".}

func mm256_mask_broadcastq_epi64*(src: M256i, k: Mmask8, a: M128i): M256i {.importc: "_mm256_mask_broadcastq_epi64".}

func mm256_maskz_broadcastq_epi64*(k: Mmask8, a: M128i): M256i {.importc: "_mm256_maskz_broadcastq_epi64".}

# Broadcast - 128-bit

func mm_mask_broadcastss_ps*(src: M128, k: Mmask8, a: M128): M128 {.importc: "_mm_mask_broadcastss_ps".}

func mm_maskz_broadcastss_ps*(k: Mmask8, a: M128): M128 {.importc: "_mm_maskz_broadcastss_ps".}

func mm_mask_broadcastsd_pd*(src: M128d, k: Mmask8, a: M128d): M128d {.importc: "_mm_mask_broadcastsd_pd".}

func mm_maskz_broadcastsd_pd*(k: Mmask8, a: M128d): M128d {.importc: "_mm_maskz_broadcastsd_pd".}

func mm_mask_broadcastd_epi32*(src: M128i, k: Mmask8, a: M128i): M128i {.importc: "_mm_mask_broadcastd_epi32".}

func mm_maskz_broadcastd_epi32*(k: Mmask8, a: M128i): M128i {.importc: "_mm_maskz_broadcastd_epi32".}

func mm_mask_broadcastq_epi64*(src: M128i, k: Mmask8, a: M128i): M128i {.importc: "_mm_mask_broadcastq_epi64".}

func mm_maskz_broadcastq_epi64*(k: Mmask8, a: M128i): M128i {.importc: "_mm_maskz_broadcastq_epi64".}

# Compress/Expand - 256-bit

func mm256_mask_compress_epi32*(src: M256i, k: Mmask8, a: M256i): M256i {.importc: "_mm256_mask_compress_epi32".}

func mm256_maskz_compress_epi32*(k: Mmask8, a: M256i): M256i {.importc: "_mm256_maskz_compress_epi32".}

func mm256_mask_compress_epi64*(src: M256i, k: Mmask8, a: M256i): M256i {.importc: "_mm256_mask_compress_epi64".}

func mm256_maskz_compress_epi64*(k: Mmask8, a: M256i): M256i {.importc: "_mm256_maskz_compress_epi64".}

func mm256_mask_compress_ps*(src: M256, k: Mmask8, a: M256): M256 {.importc: "_mm256_mask_compress_ps".}

func mm256_maskz_compress_ps*(k: Mmask8, a: M256): M256 {.importc: "_mm256_maskz_compress_ps".}

func mm256_mask_compress_pd*(src: M256d, k: Mmask8, a: M256d): M256d {.importc: "_mm256_mask_compress_pd".}

func mm256_maskz_compress_pd*(k: Mmask8, a: M256d): M256d {.importc: "_mm256_maskz_compress_pd".}

func mm256_mask_expand_epi32*(src: M256i, k: Mmask8, a: M256i): M256i {.importc: "_mm256_mask_expand_epi32".}

func mm256_maskz_expand_epi32*(k: Mmask8, a: M256i): M256i {.importc: "_mm256_maskz_expand_epi32".}

func mm256_mask_expand_epi64*(src: M256i, k: Mmask8, a: M256i): M256i {.importc: "_mm256_mask_expand_epi64".}

func mm256_maskz_expand_epi64*(k: Mmask8, a: M256i): M256i {.importc: "_mm256_maskz_expand_epi64".}

func mm256_mask_expand_ps*(src: M256, k: Mmask8, a: M256): M256 {.importc: "_mm256_mask_expand_ps".}

func mm256_maskz_expand_ps*(k: Mmask8, a: M256): M256 {.importc: "_mm256_maskz_expand_ps".}

func mm256_mask_expand_pd*(src: M256d, k: Mmask8, a: M256d): M256d {.importc: "_mm256_mask_expand_pd".}

func mm256_maskz_expand_pd*(k: Mmask8, a: M256d): M256d {.importc: "_mm256_maskz_expand_pd".}

# Compress/Expand - 128-bit

func mm_mask_compress_epi32*(src: M128i, k: Mmask8, a: M128i): M128i {.importc: "_mm_mask_compress_epi32".}

func mm_maskz_compress_epi32*(k: Mmask8, a: M128i): M128i {.importc: "_mm_maskz_compress_epi32".}

func mm_mask_compress_epi64*(src: M128i, k: Mmask8, a: M128i): M128i {.importc: "_mm_mask_compress_epi64".}

func mm_maskz_compress_epi64*(k: Mmask8, a: M128i): M128i {.importc: "_mm_maskz_compress_epi64".}

func mm_mask_compress_ps*(src: M128, k: Mmask8, a: M128): M128 {.importc: "_mm_mask_compress_ps".}

func mm_maskz_compress_ps*(k: Mmask8, a: M128): M128 {.importc: "_mm_maskz_compress_ps".}

func mm_mask_compress_pd*(src: M128d, k: Mmask8, a: M128d): M128d {.importc: "_mm_mask_compress_pd".}

func mm_maskz_compress_pd*(k: Mmask8, a: M128d): M128d {.importc: "_mm_maskz_compress_pd".}

func mm_mask_expand_epi32*(src: M128i, k: Mmask8, a: M128i): M128i {.importc: "_mm_mask_expand_epi32".}

func mm_maskz_expand_epi32*(k: Mmask8, a: M128i): M128i {.importc: "_mm_maskz_expand_epi32".}

func mm_mask_expand_epi64*(src: M128i, k: Mmask8, a: M128i): M128i {.importc: "_mm_mask_expand_epi64".}

func mm_maskz_expand_epi64*(k: Mmask8, a: M128i): M128i {.importc: "_mm_maskz_expand_epi64".}

func mm_mask_expand_ps*(src: M128, k: Mmask8, a: M128): M128 {.importc: "_mm_mask_expand_ps".}

func mm_maskz_expand_ps*(k: Mmask8, a: M128): M128 {.importc: "_mm_maskz_expand_ps".}

func mm_mask_expand_pd*(src: M128d, k: Mmask8, a: M128d): M128d {.importc: "_mm_mask_expand_pd".}

func mm_maskz_expand_pd*(k: Mmask8, a: M128d): M128d {.importc: "_mm_maskz_expand_pd".}

# Permute - 256-bit

func mm256_mask_permutexvar_epi32*(src: M256i, k: Mmask8, idx, a: M256i): M256i {.importc: "_mm256_mask_permutexvar_epi32".}

func mm256_maskz_permutexvar_epi32*(k: Mmask8, idx, a: M256i): M256i {.importc: "_mm256_maskz_permutexvar_epi32".}

func mm256_permutexvar_epi32*(idx, a: M256i): M256i {.importc: "_mm256_permutexvar_epi32".}

func mm256_mask_permutexvar_epi64*(src: M256i, k: Mmask8, idx, a: M256i): M256i {.importc: "_mm256_mask_permutexvar_epi64".}

func mm256_maskz_permutexvar_epi64*(k: Mmask8, idx, a: M256i): M256i {.importc: "_mm256_maskz_permutexvar_epi64".}

func mm256_permutexvar_epi64*(idx, a: M256i): M256i {.importc: "_mm256_permutexvar_epi64".}

func mm256_mask_permutexvar_ps*(src: M256, k: Mmask8, idx: M256i, a: M256): M256 {.importc: "_mm256_mask_permutexvar_ps".}

func mm256_maskz_permutexvar_ps*(k: Mmask8, idx: M256i, a: M256): M256 {.importc: "_mm256_maskz_permutexvar_ps".}

func mm256_permutexvar_ps*(idx: M256i, a: M256): M256 {.importc: "_mm256_permutexvar_ps".}

func mm256_mask_permutexvar_pd*(src: M256d, k: Mmask8, idx: M256i, a: M256d): M256d {.importc: "_mm256_mask_permutexvar_pd".}

func mm256_maskz_permutexvar_pd*(k: Mmask8, idx: M256i, a: M256d): M256d {.importc: "_mm256_maskz_permutexvar_pd".}

func mm256_permutexvar_pd*(idx: M256i, a: M256d): M256d {.importc: "_mm256_permutexvar_pd".}

# Permutex2var - 256-bit

func mm256_permutex2var_epi32*(a: M256i, idx: M256i, b: M256i): M256i {.importc: "_mm256_permutex2var_epi32".}

func mm256_mask_permutex2var_epi32*(a: M256i, k: Mmask8, idx: M256i, b: M256i): M256i {.importc: "_mm256_mask_permutex2var_epi32".}

func mm256_maskz_permutex2var_epi32*(k: Mmask8, a: M256i, idx: M256i, b: M256i): M256i {.importc: "_mm256_maskz_permutex2var_epi32".}

func mm256_permutex2var_epi64*(a: M256i, idx: M256i, b: M256i): M256i {.importc: "_mm256_permutex2var_epi64".}

func mm256_mask_permutex2var_epi64*(a: M256i, k: Mmask8, idx: M256i, b: M256i): M256i {.importc: "_mm256_mask_permutex2var_epi64".}

func mm256_maskz_permutex2var_epi64*(k: Mmask8, a: M256i, idx: M256i, b: M256i): M256i {.importc: "_mm256_maskz_permutex2var_epi64".}

func mm256_permutex2var_ps*(a: M256, idx: M256i, b: M256): M256 {.importc: "_mm256_permutex2var_ps".}

func mm256_mask_permutex2var_ps*(a: M256, k: Mmask8, idx: M256i, b: M256): M256 {.importc: "_mm256_mask_permutex2var_ps".}

func mm256_maskz_permutex2var_ps*(k: Mmask8, a: M256, idx: M256i, b: M256): M256 {.importc: "_mm256_maskz_permutex2var_ps".}

func mm256_permutex2var_pd*(a: M256d, idx: M256i, b: M256d): M256d {.importc: "_mm256_permutex2var_pd".}

func mm256_mask_permutex2var_pd*(a: M256d, k: Mmask8, idx: M256i, b: M256d): M256d {.importc: "_mm256_mask_permutex2var_pd".}

func mm256_maskz_permutex2var_pd*(k: Mmask8, a: M256d, idx: M256i, b: M256d): M256d {.importc: "_mm256_maskz_permutex2var_pd".}

# Permutex2var - 128-bit

func mm_permutex2var_epi32*(a: M128i, idx: M128i, b: M128i): M128i {.importc: "_mm_permutex2var_epi32".}

func mm_mask_permutex2var_epi32*(a: M128i, k: Mmask8, idx: M128i, b: M128i): M128i {.importc: "_mm_mask_permutex2var_epi32".}

func mm_maskz_permutex2var_epi32*(k: Mmask8, a: M128i, idx: M128i, b: M128i): M128i {.importc: "_mm_maskz_permutex2var_epi32".}

func mm_permutex2var_epi64*(a: M128i, idx: M128i, b: M128i): M128i {.importc: "_mm_permutex2var_epi64".}

func mm_mask_permutex2var_epi64*(a: M128i, k: Mmask8, idx: M128i, b: M128i): M128i {.importc: "_mm_mask_permutex2var_epi64".}

func mm_maskz_permutex2var_epi64*(k: Mmask8, a: M128i, idx: M128i, b: M128i): M128i {.importc: "_mm_maskz_permutex2var_epi64".}

func mm_permutex2var_ps*(a: M128, idx: M128i, b: M128): M128 {.importc: "_mm_permutex2var_ps".}

func mm_mask_permutex2var_ps*(a: M128, k: Mmask8, idx: M128i, b: M128): M128 {.importc: "_mm_mask_permutex2var_ps".}

func mm_maskz_permutex2var_ps*(k: Mmask8, a: M128, idx: M128i, b: M128): M128 {.importc: "_mm_maskz_permutex2var_ps".}

func mm_permutex2var_pd*(a: M128d, idx: M128i, b: M128d): M128d {.importc: "_mm_permutex2var_pd".}

func mm_mask_permutex2var_pd*(a: M128d, k: Mmask8, idx: M128i, b: M128d): M128d {.importc: "_mm_mask_permutex2var_pd".}

func mm_maskz_permutex2var_pd*(k: Mmask8, a: M128d, idx: M128i, b: M128d): M128d {.importc: "_mm_maskz_permutex2var_pd".}

# Ternary logic - 256-bit

func mm256_ternarylogic_epi32*(a, b, c: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_ternarylogic_epi32".}

func mm256_mask_ternarylogic_epi32*(a: M256i, k: Mmask8, b, c: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_ternarylogic_epi32".}

func mm256_maskz_ternarylogic_epi32*(k: Mmask8, a, b, c: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_ternarylogic_epi32".}

func mm256_ternarylogic_epi64*(a, b, c: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_ternarylogic_epi64".}

func mm256_mask_ternarylogic_epi64*(a: M256i, k: Mmask8, b, c: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_ternarylogic_epi64".}

func mm256_maskz_ternarylogic_epi64*(k: Mmask8, a, b, c: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_ternarylogic_epi64".}

# Ternary logic - 128-bit

func mm_ternarylogic_epi32*(a, b, c: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_ternarylogic_epi32".}

func mm_mask_ternarylogic_epi32*(a: M128i, k: Mmask8, b, c: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_ternarylogic_epi32".}

func mm_maskz_ternarylogic_epi32*(k: Mmask8, a, b, c: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_ternarylogic_epi32".}

func mm_ternarylogic_epi64*(a, b, c: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_ternarylogic_epi64".}

func mm_mask_ternarylogic_epi64*(a: M128i, k: Mmask8, b, c: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_ternarylogic_epi64".}

func mm_maskz_ternarylogic_epi64*(k: Mmask8, a, b, c: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_ternarylogic_epi64".}

# Shift - 256-bit

func mm256_mask_slli_epi32*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_slli_epi32".}

func mm256_maskz_slli_epi32*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_slli_epi32".}

func mm256_mask_slli_epi64*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_slli_epi64".}

func mm256_maskz_slli_epi64*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_slli_epi64".}

func mm256_mask_srli_epi32*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_srli_epi32".}

func mm256_maskz_srli_epi32*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_srli_epi32".}

func mm256_mask_srli_epi64*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_srli_epi64".}

func mm256_maskz_srli_epi64*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_srli_epi64".}

func mm256_mask_srai_epi32*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_srai_epi32".}

func mm256_maskz_srai_epi32*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_srai_epi32".}

func mm256_mask_srai_epi64*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_srai_epi64".}

func mm256_maskz_srai_epi64*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_srai_epi64".}

func mm256_srai_epi64*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_srai_epi64".}

# Shift - 128-bit

func mm_mask_slli_epi32*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_slli_epi32".}

func mm_maskz_slli_epi32*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_slli_epi32".}

func mm_mask_slli_epi64*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_slli_epi64".}

func mm_maskz_slli_epi64*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_slli_epi64".}

func mm_mask_srli_epi32*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_srli_epi32".}

func mm_maskz_srli_epi32*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_srli_epi32".}

func mm_mask_srli_epi64*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_srli_epi64".}

func mm_maskz_srli_epi64*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_srli_epi64".}

func mm_mask_srai_epi32*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_srai_epi32".}

func mm_maskz_srai_epi32*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_srai_epi32".}

func mm_mask_srai_epi64*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_srai_epi64".}

func mm_maskz_srai_epi64*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_srai_epi64".}

func mm_srai_epi64*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_srai_epi64".}

# Rotate - 256-bit

func mm256_rol_epi32*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_rol_epi32".}

func mm256_mask_rol_epi32*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_rol_epi32".}

func mm256_maskz_rol_epi32*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_rol_epi32".}

func mm256_rol_epi64*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_rol_epi64".}

func mm256_mask_rol_epi64*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_rol_epi64".}

func mm256_maskz_rol_epi64*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_rol_epi64".}

func mm256_ror_epi32*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_ror_epi32".}

func mm256_mask_ror_epi32*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_ror_epi32".}

func mm256_maskz_ror_epi32*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_ror_epi32".}

func mm256_ror_epi64*(a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_ror_epi64".}

func mm256_mask_ror_epi64*(src: M256i, k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_mask_ror_epi64".}

func mm256_maskz_ror_epi64*(k: Mmask8, a: M256i, imm8: int32 | uint32): M256i {.importc: "_mm256_maskz_ror_epi64".}

# Rotate - 128-bit

func mm_rol_epi32*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_rol_epi32".}

func mm_mask_rol_epi32*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_rol_epi32".}

func mm_maskz_rol_epi32*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_rol_epi32".}

func mm_rol_epi64*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_rol_epi64".}

func mm_mask_rol_epi64*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_rol_epi64".}

func mm_maskz_rol_epi64*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_rol_epi64".}

func mm_ror_epi32*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_ror_epi32".}

func mm_mask_ror_epi32*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_ror_epi32".}

func mm_maskz_ror_epi32*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_ror_epi32".}

func mm_ror_epi64*(a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_ror_epi64".}

func mm_mask_ror_epi64*(src: M128i, k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_mask_ror_epi64".}

func mm_maskz_ror_epi64*(k: Mmask8, a: M128i, imm8: int32 | uint32): M128i {.importc: "_mm_maskz_ror_epi64".}

# Aligned load/store with mask - 256-bit

func mm256_mask_load_epi32*(src: M256i, k: Mmask8, mem_addr: pointer): M256i {.importc: "_mm256_mask_load_epi32".}

func mm256_maskz_load_epi32*(k: Mmask8, mem_addr: pointer): M256i {.importc: "_mm256_maskz_load_epi32".}

func mm256_mask_load_epi64*(src: M256i, k: Mmask8, mem_addr: pointer): M256i {.importc: "_mm256_mask_load_epi64".}

func mm256_maskz_load_epi64*(k: Mmask8, mem_addr: pointer): M256i {.importc: "_mm256_maskz_load_epi64".}

func mm256_mask_store_epi32*(mem_addr: pointer, k: Mmask8, a: M256i) {.importc: "_mm256_mask_store_epi32".}

func mm256_mask_store_epi64*(mem_addr: pointer, k: Mmask8, a: M256i) {.importc: "_mm256_mask_store_epi64".}

# Aligned load/store with mask - 128-bit

func mm_mask_load_epi32*(src: M128i, k: Mmask8, mem_addr: pointer): M128i {.importc: "_mm_mask_load_epi32".}

func mm_maskz_load_epi32*(k: Mmask8, mem_addr: pointer): M128i {.importc: "_mm_maskz_load_epi32".}

func mm_mask_load_epi64*(src: M128i, k: Mmask8, mem_addr: pointer): M128i {.importc: "_mm_mask_load_epi64".}

func mm_maskz_load_epi64*(k: Mmask8, mem_addr: pointer): M128i {.importc: "_mm_maskz_load_epi64".}

func mm_mask_store_epi32*(mem_addr: pointer, k: Mmask8, a: M128i) {.importc: "_mm_mask_store_epi32".}

func mm_mask_store_epi64*(mem_addr: pointer, k: Mmask8, a: M128i) {.importc: "_mm_mask_store_epi64".}

{.pop.}
