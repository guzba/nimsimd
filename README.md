# nimsimd

![Github Actions](https://github.com/guzba/nimsimd/workflows/Github%20Actions/badge.svg)

`nimble install nimsimd`

This repo provides pleasant Nim bindings for various SIMD instructions.

Each SIMD instruction set is in its own file for importing.

## x86

Instruction Set | Bindings
--------- | :----:
SSE       | ✅
SSE2      | ✅
SSE3      | ✅
SSSE3     | ✅
SSE4.1    | ✅
SSE4.2    | ✅
AVX       | ✅
AVX2      | ✅
AVX-512   | ✅
PCLMULQDQ | ✅
BMI1      | ✅
BMI2      | ✅
F16C      | ✅
MOVBE     | ✅
POPCNT    | ✅
FMA       | ✅

### AVX-512

AVX-512 extensions are organized by processor generation for convenience:

Module | Target Processors | Extensions
------ | ----------------- | ----------
`avx512` | Skylake-SP/X | F, CD, VL, DQ, BW
`avx512cnl` | Cannon Lake | + IFMA, VBMI
`avx512icl` | Ice Lake, Tiger Lake, Rocket Lake | + VBMI2, VPOPCNTDQ, BITALG, VNNI, VPCLMULQDQ, GFNI, VAES
`avx512zen4` | AMD Zen 4/5, Intel Sapphire Rapids | + BF16

Individual extensions are also available under `avx512/` (e.g., `avx512/f`, `avx512/bw`, `avx512/vnni`).

### Compiler flags

Some instruction sets require additional compiler flags to compile. I suggest
putting any code that uses these instructions into its own .nim file and adding a `localPassc` pragma to the top of that file as needed, such as:

```nim
import nimsimd/sse42

when defined(gcc) or defined(clang):
  {.localPassc: "-msse4.2".}

...
```

### Runtime check

You can also check if instruction sets are available at runtime:

```nim
import nimsimd/runtimecheck

echo checkInstructionSets({SSE41, PCLMULQDQ})
```

## ARM

NEON bindings are started but experimental. Much to learn here about versioning and compilers.

## Uses of nimsimd

* [Pixie](https://github.com/treeform/pixie) uses SIMD for faster 2D drawing.
* [Crunchy](https://github.com/guzba/crunchy) uses SIMD for faster hashing and checksums.
* [Noisy](https://github.com/guzba/noisy) uses SIMD to accelerate generating coherent noise.

## Testing

`nimble test`
