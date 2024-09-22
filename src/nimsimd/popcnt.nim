## POPCNT intrinsics

{.push header: "immintrin.h".}

func mm_popcnt_u32*(a: uint32): int32 {.importc: "_mm_popcnt_u32".}
func mm_popcnt_u64*(a: uint64): int64 {.importc: "_mm_popcnt_u64".}
func popcnt32*(a: int32): int32 {.importc: "_popcnt32".}
func popcnt64*(a: int64): int32 {.importc: "_popcnt64".}

{.pop.}
