(module
  (type (;0;) (func))
  (type (;1;) (func (result f32)))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "__memory_base" (global (;1;) i32))
  (import "env" "__table_base" (global (;2;) i32))
  (import "env" "memory" (memory (;0;) 0))
  (func (;0;) (type 0))
  (func (;1;) (type 0))
  (func (;2;) (type 1) (result f32)
    (local i32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32 f32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    f32.const 0x1.19999ap+2 (;=4.4;)
    local.set 3
    local.get 2
    local.get 3
    f32.store offset=12
    f32.const 0x1.666666p+2 (;=5.6;)
    local.set 4
    local.get 2
    local.get 4
    f32.store offset=8
    f32.const 0x1.ep+2 (;=7.5;)
    local.set 5
    local.get 2
    local.get 5
    f32.store offset=4
    local.get 2
    f32.load offset=12
    local.set 6
    local.get 2
    f32.load offset=8
    local.set 7
    local.get 6
    local.get 7
    f32.add
    local.set 8
    local.get 2
    f32.load offset=4
    local.set 9
    local.get 8
    local.get 9
    f32.mul
    local.set 10
    f32.const 0x1p+1 (;=2;)
    local.set 11
    local.get 10
    local.get 11
    f32.div
    local.set 12
    local.get 2
    local.get 12
    f32.store
    local.get 2
    f32.load
    local.set 13
    local.get 13
    return)
  (export "__wasm_call_ctors" (func 0))
  (export "__wasm_apply_data_relocs" (func 1))
  (export "main" (func 2)))
