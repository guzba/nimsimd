import std/macros

when (NimMajor, NimMinor) >= (2, 0):
  # A macrocache table, not a `{.compileTime.}` global: `{.simd.}` fills it in
  # one module and `{.hasSimd.}` reads it in another, which compile-time globals
  # do not support under incremental compilation (`nim ic`).
  import std/macrocache
  const simdProcs* = CacheTable"nimsimd.simdProcs"
else:
  import std/tables
  var simdProcs* {.compileTime.}: Table[string, NimNode]

proc procName(procedure: NimNode): string =
  ## Given a procedure this returns the name as a string.
  let nameNode = procedure[0]
  if nameNode.kind == nnkPostfix:
    nameNode[1].strVal
  else:
    nameNode.strVal

proc procArguments(procedure: NimNode): seq[NimNode] =
  ## Given a procedure this gets the arguments as a list.
  for i, arg in procedure[3]:
    if i > 0:
      for j in 0 ..< arg.len - 2:
        result.add(arg[j])

proc procReturnType(procedure: NimNode): NimNode =
  ## Given a procedure this gets the return type.
  procedure[3][0]

proc procSignature(procedure: NimNode): string =
  ## Given a procedure this returns the signature as a string.
  result = "("

  for i, arg in procedure[3]:
    if i > 0:
      for j in 0 ..< arg.len - 2:
        result &= arg[^2].repr & ", "

  if procedure[3].len > 1:
    result = result[0 ..^ 3]

  result &= ")"

  let ret = procedure.procReturnType()
  if ret.kind != nnkEmpty:
    result &= ": " & ret.repr

proc callAndReturn(name: NimNode, procedure: NimNode): NimNode =
  ## Produces a procedure call with arguments.
  let
    retType = procedure.procReturnType()
    call = newNimNode(nnkCall)
  call.add(name)
  for arg in procedure.procArguments():
    call.add(arg)
  if retType.kind == nnkEmpty:
    result = quote do:
      `call`
      return
  else:
    result = quote do:
      return `call`

macro simd*(procedure: untyped) =
  let signature = procedure.procName() & procSignature(procedure)
  if signature notin simdProcs:
    simdProcs[signature] = procedure.copy()
  return procedure

macro hasSimd*(procedure: untyped) =
  let
    name = procedure.procName()
    nameNeon = name & "Neon"
    nameSse2 = name & "Sse2"
    nameAvx = name & "Avx"
    nameAvx2 = name & "Avx2"
    nameAvx512 = name & "Avx512"
    nameAvx512vnni = name & "Avx512vnni"
    nameAvx512bf16 = name & "Avx512bf16"
    nameAvx512fp16 = name & "Avx512fp16"
    nameAvx512cnl = name & "Avx512cnl"
    nameAvx512icl = name & "Avx512icl"
    nameAvx512zen4 = name & "Avx512zen4"
    nameVp2intersect = name & "Vp2intersect"
    callNeon = callAndReturn(ident(nameNeon), procedure)
    callSse2 = callAndReturn(ident(nameSse2), procedure)
    callAvx = callAndReturn(ident(nameAvx), procedure)
    callAvx2 = callAndReturn(ident(nameAvx2), procedure)
    callAvx512 = callAndReturn(ident(nameAvx512), procedure)
    callAvx512vnni = callAndReturn(ident(nameAvx512vnni), procedure)
    callAvx512bf16 = callAndReturn(ident(nameAvx512bf16), procedure)
    callAvx512fp16 = callAndReturn(ident(nameAvx512fp16), procedure)
    callAvx512cnl = callAndReturn(ident(nameAvx512cnl), procedure)
    callAvx512icl = callAndReturn(ident(nameAvx512icl), procedure)
    callAvx512zen4 = callAndReturn(ident(nameAvx512zen4), procedure)
    callVp2intersect = callAndReturn(ident(nameVp2intersect), procedure)

  var
    foundSimd: bool

  if procedure[6].kind != nnkStmtList:
    error("hasSimd proc body must start with nnkStmtList")

  var insertIdx = 0
  if procedure[6][0].kind == nnkCommentStmt:
    insertIdx = 1

  when defined(amd64):
    if nameAvx512zen4 & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx512zen4:
          `callAvx512zen4`
      )
      inc insertIdx
    if nameVp2intersect & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasVp2intersect:
          `callVp2intersect`
      )
      inc insertIdx
    if nameAvx512icl & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx512icl:
          `callAvx512icl`
      )
      inc insertIdx
    if nameAvx512cnl & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx512cnl:
          `callAvx512cnl`
      )
      inc insertIdx
    if nameAvx512bf16 & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx512bf16:
          `callAvx512bf16`
      )
      inc insertIdx
    if nameAvx512fp16 & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx512fp16:
          `callAvx512fp16`
      )
      inc insertIdx
    if nameAvx512vnni & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx512vnni:
          `callAvx512vnni`
      )
      inc insertIdx
    if nameAvx512 & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx512:
          `callAvx512`
      )
      inc insertIdx
    if nameAvx2 & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx2:
          `callAvx2`
      )
      inc insertIdx
    if nameAvx & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        if cpuHasAvx:
          `callAvx`
      )
      inc insertIdx
    if nameSse2 & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        `callSse2`
      )
      inc insertIdx
      while procedure[6].len > insertIdx:
        procedure[6].del(insertIdx)
  elif defined(arm64):
    if nameNeon & procSignature(procedure) in simdProcs:
      foundSimd = true
      procedure[6].insert(insertIdx, quote do:
        `callNeon`
      )
      inc insertIdx
      while procedure[6].len > insertIdx:
        procedure[6].del(insertIdx)

  return procedure
