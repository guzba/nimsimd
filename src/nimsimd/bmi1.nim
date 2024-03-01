
{.push header: "immintrin.h".}

func andn_u32*(     a,b :uint32 )         :uint32          {.importc: "_andn_u32".}
func andn_u64*(     a,b :uint64 )         :uint64          {.importc: "_andn_u64".}

func bextr_u32*(    a,start,len :uint32 ) :uint32          {.importc: "_bextr_u32".}
func bextr_u64*(    a,start,len :uint64 ) :uint64          {.importc: "_bextr_u64".}

func bextr2_u32*(   a,control :uint32 )   :uint32          {.importc: "_bextr2_u32".}
func bextr2_u64*(   a,control :uint64 )   :uint64          {.importc: "_bextr2_u64".}

func blsi_u32*(     a :uint32 )           :uint32          {.importc: "_blsi_u32".}
func blsi_u64*(     a :uint64 )           :uint64          {.importc: "_blsi_u64".}

func blsmsk_u32*(   a :uint32 )           :uint32          {.importc: "_blsmsk_u32".}
func blsmsk_u64*(   a :uint64 )           :uint64          {.importc: "_blsmsk_u64".}

func blsr_u32*(     a :uint32 )           :uint32          {.importc: "_blsr_u32".}
func blsr_u64*(     a :uint64 )           :uint64          {.importc: "_blsr_u64".}

func mm_tzcnt_32*(  a :uint32 )           :int32           {.importc: "_mm_tzcnt_32".}
func mm_tzcnt_64*(  a :uint64 )           :int64           {.importc: "_mm_tzcnt_64".}
func mm_tzcnt_u16*( a :uint16 )           :uint16          {.importc: "_mm_tzcnt_u16".}
func mm_tzcnt_u32*( a :uint32 )           :uint32          {.importc: "_mm_tzcnt_u32".}
func mm_tzcnt_u64*( a :uint64 )           :uint64          {.importc: "_mm_tzcnt_u64".}

{.pop.}