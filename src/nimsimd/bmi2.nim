
{.push header: "immintrin.h".}

# unsigned int _bzhi_u32 (unsigned int a, unsigned int index)
func bzhi_u32*(   a, idx :uint32 )         :uint32           {.importc: "_bzhi_u32".}

# unsigned int _pext_u32 (unsigned int a, unsigned int mask)
func pext_u32*(   a, idx :uint32 )         :uint32           {.importc: "_pext_u32".}

# unsigned int _pdep_u32 (unsigned int a, unsigned int mask)
func pdep_u32*(   a,mask :uint32 )         :uint32           {.importc: "_pdep_u32".}

{.pop.}