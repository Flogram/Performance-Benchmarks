(module
  (type (;0;) (func (result f32)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;0;) (type 0) (result f32)
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
  (export "00000000" (func 0)))
