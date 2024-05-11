## ARM NEON intrinsics

{.push header: "arm_neon.h".}

type
  uint8x16* {.importc: "uint8x16_t".} = object
  uint16x8* {.importc: "uint16x8_t".} = object
  uint32x4* {.importc: "uint32x4_t".} = object
  uint64x2* {.importc: "uint64x2_t".} = object
  uint8x8* {.importc: "uint8x8_t".} = object
  uint16x4* {.importc: "uint16x4_t".} = object
  uint32x2* {.importc: "uint32x2_t".} = object
  uint64x1* {.importc: "uint64x1_t".} = object

  uint8x16x2* {.importc: "uint8x16x2_t".} = object
    val*: array[2, uint8x16]
  uint16x8x2* {.importc: "uint16x8x2_t".} = object
    val*: array[2, uint16x8]
  uint32x4x2* {.importc: "uint32x4x2_t".} = object
    val*: array[2, uint32x4]
  uint64x2x2* {.importc: "uint64x2x2_t".} = object
    val*: array[2, uint64x2]

  uint8x16x3* {.importc: "uint8x16x3_t".} = object
    val*: array[3, uint8x16]
  uint16x8x3* {.importc: "uint16x8x3_t".} = object
    val*: array[3, uint16x8]
  uint32x4x3* {.importc: "uint32x4x3_t".} = object
    val*: array[3, uint32x4]
  uint64x2x3* {.importc: "uint64x2x3_t".} = object
    val*: array[3, uint64x2]

  uint8x16x4* {.importc: "uint8x16x4_t".} = object
    val*: array[4, uint8x16]
  uint16x8x4* {.importc: "uint16x8x4_t".} = object
    val*: array[4, uint16x8]
  uint32x4x4* {.importc: "uint32x4x4_t".} = object
    val*: array[4, uint32x4]
  uint64x2x4* {.importc: "uint64x2x4_t".} = object
    val*: array[4, uint64x2]

  uint8x8x2* {.importc: "uint8x8x2_t".} = object
    val*: array[2, uint8x8]
  uint16x4x2* {.importc: "uint16x4x2_t".} = object
    val*: array[2, uint16x4]
  uint32x2x2* {.importc: "uint32x2x2_t".} = object
    val*: array[2, uint32x2]
  uint64x1x2* {.importc: "uint64x1x2_t".} = object
    val*: array[2, uint64x1]

  uint8x8x3* {.importc: "uint8x8x3_t".} = object
    val*: array[3, uint8x8]
  uint16x4x3* {.importc: "uint16x4x3_t".} = object
    val*: array[3, uint16x4]
  uint32x2x3* {.importc: "uint32x2x3_t".} = object
    val*: array[3, uint32x2]
  uint64x1x3* {.importc: "uint64x1x3_t".} = object
    val*: array[3, uint64x1]

  uint8x8x4* {.importc: "uint8x8x4_t".} = object
    val*: array[4, uint8x8]
  uint16x4x4* {.importc: "uint16x4x4_t".} = object
    val*: array[4, uint16x4]
  uint32x2x4* {.importc: "uint32x2x4_t".} = object
    val*: array[4, uint32x2]
  uint64x1x4* {.importc: "uint64x1x4_t".} = object
    val*: array[4, uint64x1]

func vmovq_n_u8*(a: uint8): uint8x16 {.importc: "vmovq_n_u8".}
func vmovq_n_u16*(a: uint16): uint16x8 {.importc: "vmovq_n_u16".}
func vmovq_n_u32*(a: uint32): uint32x4 {.importc: "vmovq_n_u32".}
func vmovq_n_u64*(a: uint64): uint64x2 {.importc: "vmovq_n_u64".}

func vmov_n_u8*(a: uint8): uint8x8 {.importc: "vmov_n_u8".}
func vmov_n_u16*(a: uint16): uint16x4 {.importc: "vmov_n_u16".}
func vmov_n_u32*(a: uint32): uint32x2 {.importc: "vmov_n_u32".}
func vmov_n_u64*(a: uint64): uint64x1 {.importc: "vmov_n_u64".}

func vld1q_u8*(p: pointer): uint8x16 {.importc: "vld1q_u8".}
func vld1q_u16*(p: pointer): uint16x8 {.importc: "vld1q_u16".}
func vld1q_u32*(p: pointer): uint32x4 {.importc: "vld1q_u32".}
func vld1q_u64*(p: pointer): uint64x2 {.importc: "vld1q_u64".}

func vld1_u8*(p: pointer): uint8x8 {.importc: "vld1_u8".}
func vld1_u16*(p: pointer): uint16x4 {.importc: "vld1_u16".}
func vld1_u32*(p: pointer): uint32x2 {.importc: "vld1_u32".}
func vld1_u64*(p: pointer): uint64x1 {.importc: "vld1_u64".}

func vceq_u8*(a, b: uint8x8): uint8x8 {.importc: "vceq_u8".}
func vceq_u16*(a, b: uint16x4): uint16x4 {.importc: "vceq_u16".}
func vceq_u32*(a, b: uint32x2): uint32x2 {.importc: "vceq_u32".}
func vceq_u64*(a, b: uint64x1): uint64x1 {.importc: "vceq_u64".}

func vceqq_u8*(a, b: uint8x16): uint8x16 {.importc: "vceqq_u8".}
func vceqq_u16*(a, b: uint16x8): uint16x8 {.importc: "vceqq_u16".}
func vceqq_u32*(a, b: uint32x4): uint32x4 {.importc: "vceqq_u32".}
func vceqq_u64*(a, b: uint64x2): uint64x2 {.importc: "vceqq_u64".}

func vcltq_u8*(a, b: uint8x16): uint8x16 {.importc: "vcltq_u8".}
func vcltq_u16*(a, b: uint16x8): uint16x8 {.importc: "vcltq_u16".}
func vcltq_u32*(a, b: uint32x4): uint32x4 {.importc: "vcltq_u32".}
func vcltq_u64*(a, b: uint64x2): uint64x2 {.importc: "vcltq_u64".}

func vpaddlq_u8*(a: uint8x16): uint16x8 {.importc: "vpaddlq_u8".}
func vpaddlq_u16*(a: uint16x8): uint32x4 {.importc: "vpaddlq_u16".}
func vpaddlq_u32*(a: uint32x4): uint64x2 {.importc: "vpaddlq_u32".}

func vadd_u8*(a, b: uint8x8): uint8x8 {.importc: "vadd_u8".}
func vadd_u16*(a, b: uint16x4): uint16x4 {.importc: "vadd_u16".}
func vadd_u32*(a, b: uint32x2): uint32x2 {.importc: "vadd_u32".}
func vadd_u64*(a, b: uint64x1): uint64x1 {.importc: "vadd_u64".}

func vpadd_u8*(a, b: uint8x8): uint8x8 {.importc: "vpadd_u8".}
func vpadd_u16*(a, b: uint16x4): uint16x4 {.importc: "vpadd_u16".}
func vpadd_u32*(a, b: uint32x2): uint32x2 {.importc: "vpadd_u32".}

func vaddq_u8*(a, b: uint8x16): uint8x16 {.importc: "vaddq_u8".}
func vaddq_u16*(a, b: uint16x8): uint16x8 {.importc: "vaddq_u16".}
func vaddq_u32*(a, b: uint32x4): uint32x4 {.importc: "vaddq_u32".}
func vaddq_u64*(a, b: uint64x2): uint64x2 {.importc: "vaddq_u64".}

# Pairwise Addition Functions
func vpadd_u8*(a, b: uint8x8): uint8x8 {.importc: "vpadd_u8".}
func vpadd_u16*(a, b: uint16x4): uint16x4 {.importc: "vpadd_u16".}
func vpadd_u32*(a, b: uint32x2): uint32x2 {.importc: "vpadd_u32".}

# Quadword Vector Addition Functions
func vaddq_u8*(a, b: uint8x16): uint8x16 {.importc: "vaddq_u8".}
func vaddq_u16*(a, b: uint16x8): uint16x8 {.importc: "vaddq_u16".}
func vaddq_u32*(a, b: uint32x4): uint32x4 {.importc: "vaddq_u32".}
func vaddq_u64*(a, b: uint64x2): uint64x2 {.importc: "vaddq_u64".}

# Parallel Add Long Functions
func vpadalq_u8*(a: uint16x8, b: uint8x16): uint16x8 {.importc: "vpadalq_u8".}
func vpadalq_u16*(a: uint32x4, b: uint16x8): uint32x4 {.importc: "vpadalq_u16".}
func vpadalq_u32*(a: uint64x2, b: uint32x4): uint64x2 {.importc: "vpadalq_u32".}

# Add Wide Functions
func vaddw_u8*(a: uint16x8, b: uint8x8): uint16x8 {.importc: "vaddw_u8".}
func vaddw_u16*(a: uint32x4, b: uint16x4): uint32x4 {.importc: "vaddw_u16".}
func vaddw_u32*(a: uint64x2, b: uint32x2): uint64x2 {.importc: "vaddw_u32".}

# Multiply, Long Accumulate Functions
func vmlal_u8*(a: uint16x8, b, c: uint8x8): uint16x8 {.importc: "vmlal_u8".}
func vmlal_u16*(a: uint32x4, b, c: uint16x4): uint32x4 {.importc: "vmlal_u16".}
func vmlal_u32*(a: uint64x2, b, c: uint32x2): uint64x2 {.importc: "vmlal_u32".}

# Store a Lane of a Vector Functions
func vst1q_lane_u8*(p: pointer, v: uint8x16, lane: int) {.importc: "vst1q_lane_u8".}
func vst1q_lane_u16*(p: pointer, v: uint16x8, lane: int) {.importc: "vst1q_lane_u16".}
func vst1q_lane_u32*(p: pointer, v: uint32x4, lane: int) {.importc: "vst1q_lane_u32".}
func vst1q_lane_u64*(p: pointer, v: uint64x2, lane: int) {.importc: "vst1q_lane_u64".}

# Load a Lane of a Vector Functions
func vld1q_lane_u8*(p: pointer, v: uint8x16, lane: int): uint8x16 {.importc: "vld1q_lane_u8".}
func vld1q_lane_u16*(p: pointer, v: uint16x8, lane: int): uint16x8 {.importc: "vld1q_lane_u16".}
func vld1q_lane_u32*(p: pointer, v: uint32x4, lane: int): uint32x4 {.importc: "vld1q_lane_u32".}
func vld1q_lane_u64*(p: pointer, v: uint64x2, lane: int): uint64x2 {.importc: "vld1q_lane_u64".}

# Store Vector Functions
func vst1q_u8*(p: pointer, v: uint8x16) {.importc: "vst1q_u8".}
func vst1q_u16*(p: pointer, v: uint16x8) {.importc: "vst1q_u16".}
func vst1q_u32*(p: pointer, v: uint32x4) {.importc: "vst1q_u32".}
func vst1q_u64*(p: pointer, v: uint64x2) {.importc: "vst1q_u64".}

func vst1_u8*(p: pointer, v: uint8x8) {.importc: "vst1_u8".}
func vst1_u16*(p: pointer, v: uint16x4) {.importc: "vst1_u16".}
func vst1_u32*(p: pointer, v: uint32x2) {.importc: "vst1_u32".}
func vst1_u64*(p: pointer, v: uint64x1) {.importc: "vst1_u64".}

# Store Multiple Vectors Functions
func vst2_u8*(p: pointer, v: uint8x8x2) {.importc: "vst2_u8".}
func vst2_u16*(p: pointer, v: uint16x4x2) {.importc: "vst2_u16".}
func vst2_u32*(p: pointer, v: uint32x2x2) {.importc: "vst2_u32".}
func vst2_u64*(p: pointer, v: uint64x1x2) {.importc: "vst2_u64".}

func vst1_u8_x2*(p: pointer, v: uint8x8x2) {.importc: "vst1_u8_x2".}
func vst1_u16_x2*(p: pointer, v: uint16x4x2) {.importc: "vst1_u16_x2".}
func vst1_u32_x2*(p: pointer, v: uint32x2x2) {.importc: "vst1_u32_x2".}
func vst1_u64_x2*(p: pointer, v: uint64x1x2) {.importc: "vst1_u64_x2".}

# Bitwise AND Functions
func vand_u8*(a, b: uint8x8): uint8x8 {.importc: "vand_u8".}
func vand_u16*(a, b: uint16x4): uint16x4 {.importc: "vand_u16".}
func vand_u32*(a, b: uint32x2): uint32x2 {.importc: "vand_u32".}
func vand_u64*(a, b: uint64x1): uint64x1 {.importc: "vand_u64".}

func vandq_u8*(a, b: uint8x16): uint8x16 {.importc: "vandq_u8".}
func vandq_u16*(a, b: uint16x8): uint16x8 {.importc: "vandq_u16".}
func vandq_u32*(a, b: uint32x4): uint32x4 {.importc: "vandq_u32".}
func vandq_u64*(a, b: uint64x2): uint64x2 {.importc: "vandq_u64".}

# Bitwise OR Functions
func vorr_u8*(a, b: uint8x8): uint8x8 {.importc: "vorr_u8".}
func vorr_u16*(a, b: uint16x4): uint16x4 {.importc: "vorr_u16".}
func vorr_u32*(a, b: uint32x2): uint32x2 {.importc: "vorr_u32".}
func vorr_u64*(a, b: uint64x1): uint64x1 {.importc: "vorr_u64".}

func vorrq_u8*(a, b: uint8x16): uint8x16 {.importc: "vorrq_u8".}
func vorrq_u16*(a, b: uint16x8): uint16x8 {.importc: "vorrq_u16".}
func vorrq_u32*(a, b: uint32x4): uint32x4 {.importc: "vorrq_u32".}
func vorrq_u64*(a, b: uint64x2): uint64x2 {.importc: "vorrq_u64".}

# Bitwise XOR Functions
func veorq_u8*(a, b: uint8x16): uint8x16 {.importc: "veorq_u8".}
func veorq_u16*(a, b: uint16x8): uint16x8 {.importc: "veorq_u16".}
func veorq_u32*(a, b: uint32x4): uint32x4 {.importc: "veorq_u32".}
func veorq_u64*(a, b: uint64x2): uint64x2 {.importc: "veorq_u64".}

func vget_low_u8*(a: uint8x16): uint8x8 {.importc: "vget_low_u8".}
func vget_low_u16*(a: uint16x8): uint16x4 {.importc: "vget_low_u16".}
func vget_low_u32*(a: uint32x4): uint32x2 {.importc: "vget_low_u32".}
func vget_low_u64*(a: uint64x2): uint64x1 {.importc: "vget_low_u64".}

func vget_high_u8*(a: uint8x16): uint8x8 {.importc: "vget_high_u8".}
func vget_high_u16*(a: uint16x8): uint16x4 {.importc: "vget_high_u16".}
func vget_high_u32*(a: uint32x4): uint32x2 {.importc: "vget_high_u32".}
func vget_high_u64*(a: uint64x2): uint64x1 {.importc: "vget_high_u64".}

func vld4_u8*(p: pointer): uint8x8x4 {.importc: "vld4_u8".}
func vld4_u16*(p: pointer): uint16x4x4 {.importc: "vld4_u16".}
func vld4_u32*(p: pointer): uint32x2x4 {.importc: "vld4_u32".}
func vld4_u64*(p: pointer): uint64x1x4 {.importc: "vld4_u64".}

func vld4q_u8*(p: pointer): uint8x16x4 {.importc: "vld4q_u8".}
func vld4q_u16*(p: pointer): uint16x8x4 {.importc: "vld4q_u16".}
func vld4q_u32*(p: pointer): uint32x4x4 {.importc: "vld4q_u32".}
func vld4q_u64*(p: pointer): uint64x2x4 {.importc: "vld4q_u64".}

func vst4q_u8*(p: pointer, a: uint8x16x4) {.importc: "vst4q_u8".}
func vst4q_u16*(p: pointer, a: uint16x8x4) {.importc: "vst4q_u16".}
func vst4q_u32*(p: pointer, a: uint32x4x4) {.importc: "vst4q_u32".}
func vst4q_u64*(p: pointer, a: uint64x2x4) {.importc: "vst4q_u64".}

func vst4_u8*(p: pointer, a: uint8x8x4) {.importc: "vst4_u8".}
func vst4_u16*(p: pointer, a: uint16x4x4) {.importc: "vst4_u16".}
func vst4_u32*(p: pointer, a: uint32x2x4) {.importc: "vst4_u32".}
func vst4_u64*(p: pointer, a: uint64x1x4) {.importc: "vst4_u64".}

func vld4q_dup_u8*(p: pointer): uint8x16x4 {.importc: "vld4q_dup_u8".}
func vld4q_dup_u16*(p: pointer): uint16x8x4 {.importc: "vld4q_dup_u16".}
func vld4q_dup_u32*(p: pointer): uint32x4x4 {.importc: "vld4q_dup_u32".}
func vld4q_dup_u64*(p: pointer): uint64x2x4 {.importc: "vld4q_dup_u64".}

func vst1q_u8_x4*(p: pointer, a: uint8x16x4) {.importc: "vst1q_u8_x4".}
func vst1q_u16_x4*(p: pointer, a: uint16x8x4) {.importc: "vst1q_u16_x4".}
func vst1q_u32_x4*(p: pointer, a: uint32x4x4) {.importc: "vst1q_u32_x4".}
func vst1q_u64_x4*(p: pointer, a: uint64x2x4) {.importc: "vst1q_u64_x4".}

func vzip1q_u8*(a, b: uint8x16): uint8x16 {.importc: "vzip1q_u8".}
func vzip1q_u16*(a, b: uint16x8): uint16x8 {.importc: "vzip1q_u16".}
func vzip1q_u32*(a, b: uint32x4): uint32x4 {.importc: "vzip1q_u32".}
func vzip1q_u64*(a, b: uint64x2): uint64x2 {.importc: "vzip1q_u64".}

func vget_lane_u8*(a: uint8x8, lane: int): uint8 {.importc: "vget_lane_u8".}
func vget_lane_u16*(a: uint16x4, lane: int): uint16 {.importc: "vget_lane_u16".}
func vget_lane_u32*(a: uint32x2, lane: int): uint32 {.importc: "vget_lane_u32".}
func vget_lane_u64*(a: uint64x1, lane: int): uint64 {.importc: "vget_lane_u64".}

func vgetq_lane_u8*(a: uint8x16, lane: int): uint8 {.importc: "vgetq_lane_u8".}
func vgetq_lane_u16*(a: uint16x8, lane: int): uint16 {.importc: "vgetq_lane_u16".}
func vgetq_lane_u32*(a: uint32x4, lane: int): uint32 {.importc: "vgetq_lane_u32".}
func vgetq_lane_u64*(a: uint64x2, lane: int): uint64 {.importc: "vgetq_lane_u64".}

func vaddl_u8*(a, b: uint8x8): uint16x8 {.importc: "vaddl_u8".}
func vaddl_u16*(a, b: uint16x4): uint32x4 {.importc: "vaddl_u16".}
func vaddl_u32*(a, b: uint32x2): uint64x2 {.importc: "vaddl_u32".}

func vmull_u8*(a, b: uint8x8): uint16x8 {.importc: "vmull_u8".}
func vmull_u16*(a, b: uint16x4): uint32x4 {.importc: "vmull_u16".}
func vmull_u32*(a, b: uint32x2): uint64x2 {.importc: "vmull_u32".}

func vshrn_n_u16*(a: uint16x8, n: int): uint8x8 {.importc: "vshrn_n_u16".}
func vshrn_n_u32*(a: uint32x4, n: int): uint16x4 {.importc: "vshrn_n_u32".}
func vshrn_n_u64*(a: uint64x2, n: int): uint32x2 {.importc: "vshrn_n_u64".}

func vshrq_n_u8*(a: uint8x16, n: int): uint8x16 {.importc: "vshrq_n_u8".}
func vshrq_n_u16*(a: uint16x8, n: int): uint16x8 {.importc: "vshrq_n_u16".}
func vshrq_n_u32*(a: uint32x4, n: int): uint32x4 {.importc: "vshrq_n_u32".}
func vshrq_n_u64*(a: uint64x2, n: int): uint64x2 {.importc: "vshrq_n_u64".}

func vshlq_n_u8*(a: uint8x16, n: int): uint8x16 {.importc: "vshlq_n_u8".}
func vshlq_n_u16*(a: uint16x8, n: int): uint16x8 {.importc: "vshlq_n_u16".}
func vshlq_n_u32*(a: uint32x4, n: int): uint32x4 {.importc: "vshlq_n_u32".}
func vshlq_n_u64*(a: uint64x2, n: int): uint64x2 {.importc: "vshlq_n_u64".}

func vrshrq_n_u8*(a: uint8x16, n: int): uint8x16 {.importc: "vrshrq_n_u8".}
func vrshrq_n_u16*(a: uint16x8, n: int): uint16x8 {.importc: "vrshrq_n_u16".}
func vrshrq_n_u32*(a: uint32x4, n: int): uint32x4 {.importc: "vrshrq_n_u32".}
func vrshrq_n_u64*(a: uint64x2, n: int): uint64x2 {.importc: "vrshrq_n_u64".}

func vrshrn_n_u16*(a: uint16x8, n: int): uint8x8 {.importc: "vrshrn_n_u16".}
func vrshrn_n_u32*(a: uint32x4, n: int): uint16x4 {.importc: "vrshrn_n_u32".}
func vrshrn_n_u64*(a: uint64x2, n: int): uint32x2 {.importc: "vrshrn_n_u64".}

func vaddhn_u16*(a, b: uint16x8): uint8x8 {.importc: "vaddhn_u16".}
func vaddhn_u32*(a, b: uint32x4): uint16x4 {.importc: "vaddhn_u32".}
func vaddhn_u64*(a, b: uint64x2): uint32x2 {.importc: "vaddhn_u64".}

func vraddhn_u16*(a, b: uint16x8): uint8x8 {.importc: "vraddhn_u16".}
func vraddhn_u32*(a, b: uint32x4): uint16x4 {.importc: "vraddhn_u32".}
func vraddhn_u64*(a, b: uint64x2): uint32x2 {.importc: "vraddhn_u64".}

func vcombine_u8*(a, b: uint8x8): uint8x16 {.importc: "vcombine_u8".}
func vcombine_u16*(a, b: uint16x4): uint16x8 {.importc: "vcombine_u16".}
func vcombine_u32*(a, b: uint32x2): uint32x4 {.importc: "vcombine_u32".}
func vcombine_u64*(a, b: uint64x1): uint64x2 {.importc: "vcombine_u64".}

func vbicq_u8*(a, b: uint8x16): uint8x16 {.importc: "vbicq_u8".}
func vbicq_u16*(a, b: uint16x8): uint16x8 {.importc: "vbicq_u16".}
func vbicq_u32*(a, b: uint32x4): uint32x4 {.importc: "vbicq_u32".}
func vbicq_u64*(a, b: uint64x2): uint64x2 {.importc: "vbicq_u64".}

func vsub_u8*(a, b: uint8x8): uint8x8 {.importc: "vsub_u8".}
func vsub_u16*(a, b: uint16x4): uint16x4 {.importc: "vsub_u16".}
func vsub_u32*(a, b: uint32x2): uint32x2 {.importc: "vsub_u32".}
func vsub_u64*(a, b: uint64x1): uint64x1 {.importc: "vsub_u64".}

func vsubq_u8*(a, b: uint8x16): uint8x16 {.importc: "vsubq_u8".}
func vsubq_u16*(a, b: uint16x8): uint16x8 {.importc: "vsubq_u16".}
func vsubq_u32*(a, b: uint32x4): uint32x4 {.importc: "vsubq_u32".}
func vsubq_u64*(a, b: uint64x2): uint64x2 {.importc: "vsubq_u64".}

func vzip_u8*(a, b: uint8x8): uint8x8x2 {.importc: "vzip_u8".}
func vzip_u16*(a, b: uint16x4): uint16x4x2 {.importc: "vzip_u16".}
func vzip_u32*(a, b: uint32x2): uint32x2x2 {.importc: "vzip_u32".}

func vmovl_u8*(a: uint8x8): uint16x8 {.importc: "vmovl_u8".}
func vmovl_u16*(a: uint16x4): uint32x4 {.importc: "vmovl_u16".}
func vmovl_u32*(a: uint32x2): uint64x2 {.importc: "vmovl_u32".}

func vtbl1_u8*(a, idx: uint8x8): uint8x8 {.importc: "vtbl1_u8".}

{.pop.}
