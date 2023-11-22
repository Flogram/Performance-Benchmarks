(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (result i32 i32)))
  (type (;5;) (func (result i32 i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (result f32)))
  (import "imports" "alloc" (func (;0;) (type 0)))
  (import "imports" "dealloc" (func (;1;) (type 1)))
  (import "imports" "merge" (func (;2;) (type 2)))
  (import "imports" "save" (func (;3;) (type 3)))
  (import "imports" "undo" (func (;4;) (type 4)))
  (import "imports" "undoPenultimate" (func (;5;) (type 5)))
  (import "imports" "draw" (func (;6;) (type 6)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;7;) (type 7) (result f32)
    (local f32 f32 f32 f32)
    f32.const 0x1.19999ap+2 (;=4.4;)
    local.set 0
    f32.const 0x1.666666p+2 (;=5.6;)
    local.set 1
    f32.const 0x1.ep+2 (;=7.5;)
    local.set 2
    local.get 0
    local.get 1
    f32.add
    local.get 2
    f32.mul
    f32.const 0x1p+1 (;=2;)
    f32.div
    local.set 3
    local.get 3
    return)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (export "00000000" (func 7)))
