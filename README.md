# nimsimd

![Github Actions](https://github.com/guzba/nimsimd/workflows/Github%20Actions/badge.svg)

`nimble install nimsimd`

This repo provides pleasant Nim bindings for various SIMD instructions.

Each SIMD instruction set is in its own file for importing.

In addition to direct bindings to the SIMD instructions, there are also operator overloads to make for much more readable code (that is also easier to write!). See this basic example:

```nim
import nimsimd/sse2

# SIMD floating point multiplication
let
  a = m128(1.0) # Vector of 4 float32 each with value 1.0
  b = m128(2.0) # Vector of 4 float32 each with value 2.0
  c = a * b # SIMD vector multiplication operator

# Cast the vector to echo as separate float32 values
echo cast[array[4, float32]](c)
```

## Status

This repo is under development. Check back here for the latest status.

## x86

Instruction Set | Bindings
--- | ---:
SSE | ✅
SSE2 | ✅
SSE3 | ✅
SSSE3 | ✅
SSE4.1 | ✅
SSE4.2 | ⛔
AVX | ⛔
AVX2 | ⛔

## ARM

NEON bindings are started but experimental. Much to learn here about versioning and compilers.

## Uses of nimsimd

* [Noisy](https://github.com/guzba/noisy) uses SIMD to accelerate generating coherent noise.
* [Pixie](https://github.com/treeform/pixie) uses SIMD for faster 2D drawing.

## Testing

`nimble test`
