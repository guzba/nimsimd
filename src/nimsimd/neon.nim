## ARM NEON intrinsics

{.push header: "arm_neon.h".}

type
  uint8x16* {.importc: "uint8x16_t".} = object
  uint16x8* {.importc: "uint16x8_t".} = object
  uint32x4* {.importc: "uint32x4_t".} = object
  uint64x2* {.importc: "uint64x2_t".} = object

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
