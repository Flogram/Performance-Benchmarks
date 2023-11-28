(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (result i32)))
  (import "env" "iprintf" (func (;0;) (type 0)))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "__memory_base" (global (;1;) i32))
  (import "env" "memory" (memory (;0;) 1))
  (func (;1;) (type 1))
  (func (;2;) (type 2) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 10
    i32.store offset=64
    global.get 1
    local.tee 1
    local.get 0
    i32.const -64
    i32.sub
    call 0
    drop
    local.get 0
    i32.const 20
    i32.store offset=48
    local.get 1
    local.get 0
    i32.const 48
    i32.add
    call 0
    drop
    local.get 0
    i32.const 30
    i32.store offset=32
    local.get 1
    local.get 0
    i32.const 32
    i32.add
    call 0
    drop
    local.get 0
    i32.const 40
    i32.store offset=16
    local.get 1
    local.get 0
    i32.const 16
    i32.add
    call 0
    drop
    local.get 0
    i32.const 60
    i32.store
    local.get 1
    local.get 0
    call 0
    drop
    local.get 0
    i32.const 80
    i32.add
    global.set 0
    i32.const 0)
  (func (;3;) (type 0) (param i32 i32) (result i32)
    call 2)
  (export "__wasm_call_ctors" (func 1))
  (export "__wasm_apply_data_relocs" (func 1))
  (export "__original_main" (func 2))
  (export "main" (func 3))
  (data (;0;) (global.get 1) "%d\0a\00"))
