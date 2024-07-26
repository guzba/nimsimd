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

func vmovq_n_u8*(a: uint8): uint8x16
func vmovq_n_u16*(a: uint16): uint16x8
func vmovq_n_u32*(a: uint32): uint32x4
func vmovq_n_u64*(a: uint64): uint64x2

func vmov_n_u8*(a: uint8): uint8x8
func vmov_n_u16*(a: uint16): uint16x4
func vmov_n_u32*(a: uint32): uint32x2
func vmov_n_u64*(a: uint64): uint64x1

func vld1q_u8*(p: pointer): uint8x16
func vld1q_u16*(p: pointer): uint16x8
func vld1q_u32*(p: pointer): uint32x4
func vld1q_u64*(p: pointer): uint64x2

func vld1_u8*(p: pointer): uint8x8
func vld1_u16*(p: pointer): uint16x4
func vld1_u32*(p: pointer): uint32x2
func vld1_u64*(p: pointer): uint64x1

func vceq_u8*(a, b: uint8x8): uint8x8
func vceq_u16*(a, b: uint16x4): uint16x4
func vceq_u32*(a, b: uint32x2): uint32x2
func vceq_u64*(a, b: uint64x1): uint64x1

func vceqq_u8*(a, b: uint8x16): uint8x16
func vceqq_u16*(a, b: uint16x8): uint16x8
func vceqq_u32*(a, b: uint32x4): uint32x4
func vceqq_u64*(a, b: uint64x2): uint64x2

func vcltq_u8*(a, b: uint8x16): uint8x16
func vcltq_u16*(a, b: uint16x8): uint16x8
func vcltq_u32*(a, b: uint32x4): uint32x4
func vcltq_u64*(a, b: uint64x2): uint64x2

func vpaddlq_u8*(a: uint8x16): uint16x8
func vpaddlq_u16*(a: uint16x8): uint32x4
func vpaddlq_u32*(a: uint32x4): uint64x2

func vadd_u8*(a, b: uint8x8): uint8x8
func vadd_u16*(a, b: uint16x4): uint16x4
func vadd_u32*(a, b: uint32x2): uint32x2
func vadd_u64*(a, b: uint64x1): uint64x1

func vpadd_u8*(a, b: uint8x8): uint8x8
func vpadd_u16*(a, b: uint16x4): uint16x4
func vpadd_u32*(a, b: uint32x2): uint32x2

func vaddq_u8*(a, b: uint8x16): uint8x16
func vaddq_u16*(a, b: uint16x8): uint16x8
func vaddq_u32*(a, b: uint32x4): uint32x4
func vaddq_u64*(a, b: uint64x2): uint64x2

func vpadalq_u8*(a: uint16x8, b: uint8x16): uint16x8
func vpadalq_u16*(a: uint32x4, b: uint16x8): uint32x4
func vpadalq_u32*(a: uint64x2, b: uint32x4): uint64x2

func vaddw_u8*(a: uint16x8, b: uint8x8): uint16x8
func vaddw_u16*(a: uint32x4, b: uint16x4): uint32x4
func vaddw_u32*(a: uint64x2, b: uint32x2): uint64x2

func vmlal_u8*(a: uint16x8, b, c: uint8x8): uint16x8
func vmlal_u16*(a: uint32x4, b, c: uint16x4): uint32x4
func vmlal_u32*(a: uint64x2, b, c: uint32x2): uint64x2

func vst1q_lane_u8*(p: pointer, v: uint8x16, lane: int)
func vst1q_lane_u16*(p: pointer, v: uint16x8, lane: int)
func vst1q_lane_u32*(p: pointer, v: uint32x4, lane: int)
func vst1q_lane_u64*(p: pointer, v: uint64x2, lane: int)

func vld1q_lane_u8*(p: pointer, v: uint8x16, lane: int): uint8x16
func vld1q_lane_u16*(p: pointer, v: uint16x8, lane: int): uint16x8
func vld1q_lane_u32*(p: pointer, v: uint32x4, lane: int): uint32x4
func vld1q_lane_u64*(p: pointer, v: uint64x2, lane: int): uint64x2

func vst1q_u8*(p: pointer, v: uint8x16)
func vst1q_u16*(p: pointer, v: uint16x8)
func vst1q_u32*(p: pointer, v: uint32x4)
func vst1q_u64*(p: pointer, v: uint64x2)

func vst1_u8*(p: pointer, v: uint8x8)
func vst1_u16*(p: pointer, v: uint16x4)
func vst1_u32*(p: pointer, v: uint32x2)
func vst1_u64*(p: pointer, v: uint64x1)

func vst2_u8*(p: pointer, v: uint8x8x2)
func vst2_u16*(p: pointer, v: uint16x4x2)
func vst2_u32*(p: pointer, v: uint32x2x2)
func vst2_u64*(p: pointer, v: uint64x1x2)

func vst1_u8_x2*(p: pointer, v: uint8x8x2)
func vst1_u16_x2*(p: pointer, v: uint16x4x2)
func vst1_u32_x2*(p: pointer, v: uint32x2x2)
func vst1_u64_x2*(p: pointer, v: uint64x1x2)

func vand_u8*(a, b: uint8x8): uint8x8
func vand_u16*(a, b: uint16x4): uint16x4
func vand_u32*(a, b: uint32x2): uint32x2
func vand_u64*(a, b: uint64x1): uint64x1

func vandq_u8*(a, b: uint8x16): uint8x16
func vandq_u16*(a, b: uint16x8): uint16x8
func vandq_u32*(a, b: uint32x4): uint32x4
func vandq_u64*(a, b: uint64x2): uint64x2

func vorr_u8*(a, b: uint8x8): uint8x8
func vorr_u16*(a, b: uint16x4): uint16x4
func vorr_u32*(a, b: uint32x2): uint32x2
func vorr_u64*(a, b: uint64x1): uint64x1

func vorrq_u8*(a, b: uint8x16): uint8x16
func vorrq_u16*(a, b: uint16x8): uint16x8
func vorrq_u32*(a, b: uint32x4): uint32x4
func vorrq_u64*(a, b: uint64x2): uint64x2

func veorq_u8*(a, b: uint8x16): uint8x16
func veorq_u16*(a, b: uint16x8): uint16x8
func veorq_u32*(a, b: uint32x4): uint32x4
func veorq_u64*(a, b: uint64x2): uint64x2

func vget_low_u8*(a: uint8x16): uint8x8
func vget_low_u16*(a: uint16x8): uint16x4
func vget_low_u32*(a: uint32x4): uint32x2
func vget_low_u64*(a: uint64x2): uint64x1

func vget_high_u8*(a: uint8x16): uint8x8
func vget_high_u16*(a: uint16x8): uint16x4
func vget_high_u32*(a: uint32x4): uint32x2
func vget_high_u64*(a: uint64x2): uint64x1

func vld4_u8*(p: pointer): uint8x8x4
func vld4_u16*(p: pointer): uint16x4x4
func vld4_u32*(p: pointer): uint32x2x4
func vld4_u64*(p: pointer): uint64x1x4

func vld4q_u8*(p: pointer): uint8x16x4
func vld4q_u16*(p: pointer): uint16x8x4
func vld4q_u32*(p: pointer): uint32x4x4
func vld4q_u64*(p: pointer): uint64x2x4

func vst4q_u8*(p: pointer, a: uint8x16x4)
func vst4q_u16*(p: pointer, a: uint16x8x4)
func vst4q_u32*(p: pointer, a: uint32x4x4)
func vst4q_u64*(p: pointer, a: uint64x2x4)

func vst4_u8*(p: pointer, a: uint8x8x4)
func vst4_u16*(p: pointer, a: uint16x4x4)
func vst4_u32*(p: pointer, a: uint32x2x4)
func vst4_u64*(p: pointer, a: uint64x1x4)

func vld4q_dup_u8*(p: pointer): uint8x16x4
func vld4q_dup_u16*(p: pointer): uint16x8x4
func vld4q_dup_u32*(p: pointer): uint32x4x4
func vld4q_dup_u64*(p: pointer): uint64x2x4

func vst1q_u8_x4*(p: pointer, a: uint8x16x4)
func vst1q_u16_x4*(p: pointer, a: uint16x8x4)
func vst1q_u32_x4*(p: pointer, a: uint32x4x4)
func vst1q_u64_x4*(p: pointer, a: uint64x2x4)

func vzip1q_u8*(a, b: uint8x16): uint8x16
func vzip1q_u16*(a, b: uint16x8): uint16x8
func vzip1q_u32*(a, b: uint32x4): uint32x4
func vzip1q_u64*(a, b: uint64x2): uint64x2

func vget_lane_u8*(a: uint8x8, lane: int): uint8
func vget_lane_u16*(a: uint16x4, lane: int): uint16
func vget_lane_u32*(a: uint32x2, lane: int): uint32
func vget_lane_u64*(a: uint64x1, lane: int): uint64

func vgetq_lane_u8*(a: uint8x16, lane: int): uint8
func vgetq_lane_u16*(a: uint16x8, lane: int): uint16
func vgetq_lane_u32*(a: uint32x4, lane: int): uint32
func vgetq_lane_u64*(a: uint64x2, lane: int): uint64

func vaddl_u8*(a, b: uint8x8): uint16x8
func vaddl_u16*(a, b: uint16x4): uint32x4
func vaddl_u32*(a, b: uint32x2): uint64x2

func vmull_u8*(a, b: uint8x8): uint16x8
func vmull_u16*(a, b: uint16x4): uint32x4
func vmull_u32*(a, b: uint32x2): uint64x2

func vshrn_n_u16*(a: uint16x8, n: int): uint8x8
func vshrn_n_u32*(a: uint32x4, n: int): uint16x4
func vshrn_n_u64*(a: uint64x2, n: int): uint32x2

func vshrq_n_u8*(a: uint8x16, n: int): uint8x16
func vshrq_n_u16*(a: uint16x8, n: int): uint16x8
func vshrq_n_u32*(a: uint32x4, n: int): uint32x4
func vshrq_n_u64*(a: uint64x2, n: int): uint64x2

func vshlq_n_u8*(a: uint8x16, n: int): uint8x16
func vshlq_n_u16*(a: uint16x8, n: int): uint16x8
func vshlq_n_u32*(a: uint32x4, n: int): uint32x4
func vshlq_n_u64*(a: uint64x2, n: int): uint64x2

func vrshrq_n_u8*(a: uint8x16, n: int): uint8x16
func vrshrq_n_u16*(a: uint16x8, n: int): uint16x8
func vrshrq_n_u32*(a: uint32x4, n: int): uint32x4
func vrshrq_n_u64*(a: uint64x2, n: int): uint64x2

func vrshrn_n_u16*(a: uint16x8, n: int): uint8x8
func vrshrn_n_u32*(a: uint32x4, n: int): uint16x4
func vrshrn_n_u64*(a: uint64x2, n: int): uint32x2

func vaddhn_u16*(a, b: uint16x8): uint8x8
func vaddhn_u32*(a, b: uint32x4): uint16x4
func vaddhn_u64*(a, b: uint64x2): uint32x2

func vraddhn_u16*(a, b: uint16x8): uint8x8
func vraddhn_u32*(a, b: uint32x4): uint16x4
func vraddhn_u64*(a, b: uint64x2): uint32x2

func vcombine_u8*(a, b: uint8x8): uint8x16
func vcombine_u16*(a, b: uint16x4): uint16x8
func vcombine_u32*(a, b: uint32x2): uint32x4
func vcombine_u64*(a, b: uint64x1): uint64x2

func vbicq_u8*(a, b: uint8x16): uint8x16
func vbicq_u16*(a, b: uint16x8): uint16x8
func vbicq_u32*(a, b: uint32x4): uint32x4
func vbicq_u64*(a, b: uint64x2): uint64x2

func vsub_u8*(a, b: uint8x8): uint8x8
func vsub_u16*(a, b: uint16x4): uint16x4
func vsub_u32*(a, b: uint32x2): uint32x2
func vsub_u64*(a, b: uint64x1): uint64x1

func vsubq_u8*(a, b: uint8x16): uint8x16
func vsubq_u16*(a, b: uint16x8): uint16x8
func vsubq_u32*(a, b: uint32x4): uint32x4
func vsubq_u64*(a, b: uint64x2): uint64x2

func vzip_u8*(a, b: uint8x8): uint8x8x2
func vzip_u16*(a, b: uint16x4): uint16x4x2
func vzip_u32*(a, b: uint32x2): uint32x2x2

func vmovl_u8*(a: uint8x8): uint16x8
func vmovl_u16*(a: uint16x4): uint32x4
func vmovl_u32*(a: uint32x2): uint64x2

func vtbl1_u8*(a, idx: uint8x8): uint8x8

{.pop.}
