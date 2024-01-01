(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (import "env" "__memory_base" (global (;0;) i32))
  (import "env" "__table_base" (global (;1;) i32))
  (import "env" "memory" (memory (;0;) 1))
  (func (;0;) (type 0))
  (func (;1;) (type 0))
  (func (;2;) (type 1) (param i32)
    (local i32 i32 i32 i64)
    i32.const 0
    local.set 1
    global.get 0
    local.set 2
    local.get 2
    local.get 1
    i32.add
    local.set 3
    local.get 3
    i64.load align=4
    local.set 4
    local.get 0
    local.get 4
    i64.store align=4
    return)
  (export "__wasm_call_ctors" (func 0))
  (export "__wasm_apply_data_relocs" (func 1))
  (export "main" (func 2))
  (data (;0;) (global.get 0) "\00\00\80?\00\00\00@"))
