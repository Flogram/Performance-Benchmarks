(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (result i32 i32)))
  (import "imports" "alloc" (func (;0;) (type 0)))
  (import "imports" "merge" (func (;1;) (type 1)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;2;) (type 2) (result i32 i32)
    (local i32 i32 i32)
    i32.const 0
    call 0
    global.set 0
    i32.const 4
    call 0
    f32.const 0x1.8p+0 (;=1.5;)
    f32.store
    call 1
    i32.const 4
    call 0
    f32.const 0x1.333334p+1 (;=2.4;)
    f32.store
    call 1
    global.get 0
    i32.const 2
    local.set 1
    local.set 0
    local.get 0
    local.get 1
    return)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (export "00000000" (func 2)))
