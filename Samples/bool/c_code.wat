(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "__memory_base" (global (;1;) i32))
  (import "env" "__table_base" (global (;2;) i32))
  (import "env" "memory" (memory (;0;) 0))
  (func (;0;) (type 0))
  (func (;1;) (type 0))
  (func (;2;) (type 1) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    i32.const 1
    local.set 3
    local.get 2
    local.get 3
    i32.store8 offset=15
    i32.const 1
    local.set 4
    i32.const 1
    local.set 5
    local.get 4
    local.get 5
    i32.and
    local.set 6
    local.get 6
    return)
  (export "__wasm_call_ctors" (func 0))
  (export "__wasm_apply_data_relocs" (func 1))
  (export "main" (func 2)))
