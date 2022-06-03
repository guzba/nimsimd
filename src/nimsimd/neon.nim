## ARM NEON intrinsics

{.push header: "arm_neon.h".}

type
  uint8x16* {.importc: "uint8x16_t".} = object
  uint16x8* {.importc: "uint16x8_t".} = object
  uint32x4* {.importc: "uint32x4_t".} = object
  uint64x2* {.importc: "uint64x2_t".} = object

  uint8x16x4* {.importc: "uint8x16x4_t".} = object
    val*: array[4, uint8x16]
  uint16x8x4* {.importc: "uint16x8x4_t".} = object
    val*: array[4, uint16x8]
  uint32x4x4* {.importc: "uint32x4x4_t".} = object
    val*: array[4, uint32x4]
  uint64x2x4* {.importc: "uint64x2x4_t".} = object
    val*: array[4, uint64x2]

func vmovq_n_u8*(a: uint8): uint8x16
func vmovq_n_u16*(a: uint16): uint16x8
func vmovq_n_u32*(a: uint32): uint32x4
func vmovq_n_u64*(a: uint64): uint64x2

func vld1q_u8*(p: pointer): uint8x16
func vld1q_u16*(p: pointer): uint16x8
func vld1q_u32*(p: pointer): uint32x4
func vld1q_u64*(p: pointer): uint64x2

func vceqq_u8*(a, b: uint8x16): uint8x16
func vceqq_u16*(a, b: uint16x8): uint16x8
func vceqq_u32*(a, b: uint32x4): uint32x4
func vceqq_u64*(a, b: uint64x2): uint64x2

func vpaddlq_u8*(a: uint8x16): uint16x8
func vpaddlq_u16*(a: uint16x8): uint32x4
func vpaddlq_u32*(a: uint32x4): uint64x2

func vaddq_u8*(a, b: uint8x16): uint8x16
func vaddq_u16*(a, b: uint16x8): uint16x8
func vaddq_u32*(a, b: uint32x4): uint32x4
func vaddq_u64*(a, b: uint64x2): uint64x2

func vst1q_lane_u8*(p: pointer, v: uint8x16, lane: int)
func vst1q_lane_u16*(p: pointer, v: uint16x8, lane: int)
func vst1q_lane_u32*(p: pointer, v: uint32x4, lane: int)
func vst1q_lane_u64*(p: pointer, v: uint64x2, lane: int)

func vst1q_u8*(p: pointer, v: uint8x16)
func vst1q_u16*(p: pointer, v: uint16x8)
func vst1q_u32*(p: pointer, v: uint32x4)
func vst1q_u64*(p: pointer, v: uint64x2)

func vandq_u8*(a, b: uint8x16): uint8x16
func vandq_u16*(a, b: uint16x8): uint16x8
func vandq_u32*(a, b: uint32x4): uint32x4
func vandq_u64*(a, b: uint64x2): uint64x2

func vorrq_u8*(a, b: uint8x16): uint8x16
func vorrq_u16*(a, b: uint16x8): uint16x8
func vorrq_u32*(a, b: uint32x4): uint32x4
func vorrq_u64*(a, b: uint64x2): uint64x2

func vget_low_u8*(a: uint8x16): uint8
func vget_low_u16*(a: uint16x8): uint16
func vget_low_u32*(a: uint32x4): uint32
func vget_low_u64*(a: uint64x2): uint64

func vget_high_u8*(a: uint8x16): uint8
func vget_high_u16*(a: uint16x8): uint16
func vget_high_u32*(a: uint32x4): uint32
func vget_high_u64*(a: uint64x2): uint64


func vld4q_u8*(p: pointer): uint8x16x4
func vld4q_u16*(p: pointer): uint16x8x4
func vld4q_u32*(p: pointer): uint32x4x4
func vld4q_u64*(p: pointer): uint64x2x4

func vld4q_dup_u8*(p: pointer): uint8x16x4
func vld4q_dup_u16*(p: pointer): uint16x8x4
func vld4q_dup_u32*(p: pointer): uint32x4x4
func vld4q_dup_u64*(p: pointer): uint64x2x4

func vst1q_u8_x4*(p: pointer, a: uint8x16x4)
func vst1q_u16_x4*(p: pointer, a: uint16x8x4)
func vst1q_u32_x4*(p: pointer, a: uint32x4x4)
func vst1q_u64_x4*(p: pointer, a: uint64x2x4)

{.pop.}
