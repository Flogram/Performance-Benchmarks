(module
  (type (;0;) (func (result i32)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;0;) (type 0) (result i32)
    (local f32 i32)
    f32.const 0x1.3cccccp+3 (;=9.9;)
    local.set 0
    local.get 0
    i32.trunc_f32_s
    local.set 1
    local.get 1
    return)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (export "00000000" (func 0)))
