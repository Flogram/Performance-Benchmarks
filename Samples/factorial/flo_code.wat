(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (result i32 i32)))
  (type (;5;) (func (result i32 i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (result i32)))
  (import "imports" "alloc" (func (;0;) (type 0)))
  (import "imports" "dealloc" (func (;1;) (type 1)))
  (import "imports" "merge" (func (;2;) (type 2)))
  (import "imports" "save" (func (;3;) (type 3)))
  (import "imports" "undo" (func (;4;) (type 4)))
  (import "imports" "undoPenultimate" (func (;5;) (type 5)))
  (import "imports" "draw" (func (;6;) (type 6)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;7;) (type 7) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    i32.eq
    local.set 1
    block  ;; label = @1
      i32.const 0
      local.get 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 0
    i32.const 1
    i32.sub
    call 7
    i32.mul
    return)
  (func (;8;) (type 8) (result i32)
    (local i32 i32)
    i32.const 20
    local.set 0
    local.get 0
    call 7
    local.set 1
    local.get 1
    return)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (export "00000000" (func 7))
  (export "00000001" (func 8)))
