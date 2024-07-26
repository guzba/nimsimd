{.push header: "immintrin.h".}

func loadbe_i16*(p: pointer): int16 {.importc: "_loadbe_i16".}
func loadbe_i32*(p: pointer): int32 {.importc: "_loadbe_i32".}
func loadbe_i64*(p: pointer): int64 {.importc: "_loadbe_i64".}

func storebe_i16*(p: pointer, data: int16) {.importc: "_storebe_i16".}
func storebe_i32*(p: pointer, data: int32) {.importc: "_storebe_i32".}
func storebe_i64*(p: pointer, data: int64) {.importc: "_storebe_i64".}

{.pop.}
