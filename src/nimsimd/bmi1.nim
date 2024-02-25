
{.push header: "immintrin.h".}

func andn_u32*(   a,b :uint32 )         :uint32           {.importc: "_andn_u32".}
# unsigned int _andn_u32 (unsigned int a, unsigned int b) {.importc: "_mm_malloc".}

func bextr_u32*(  a,start,len :uint32 ) :uint32           {.importc: "_bextr_u32".}
func bextr_u64*(  a,start,len :uint64 ) :uint64           {.importc: "_bextr_u64".}
# unsigned __int64 _bextr_u64 (unsigned __int64 a, unsigned int start, unsigned int len)

func blsmsk_u64*( a :uint64 )           :uint64           {.importc: "_blsmsk_u64".}
# unsigned __int64 _blsmsk_u64 (unsigned __int64 a)

func blsr_u32*(   a :uint32 )           :uint32           {.importc: "_blsr_u32".}
func blsr_u64*(   a :uint64 )           :uint64           {.importc: "_blsr_u64".}
# unsigned __int64 _blsr_u64 (unsigned __int64 a)

{.pop.}