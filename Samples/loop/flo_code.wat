(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (result i32 i32)))
  (type (;5;) (func (result i32 i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func))
  (import "imports" "alloc" (func (;0;) (type 0)))
  (import "imports" "dealloc" (func (;1;) (type 1)))
  (import "imports" "merge" (func (;2;) (type 2)))
  (import "imports" "save" (func (;3;) (type 3)))
  (import "imports" "undo" (func (;4;) (type 4)))
  (import "imports" "undoPenultimate" (func (;5;) (type 5)))
  (import "imports" "draw" (func (;6;) (type 6)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;7;) (type 7)
    (local i32)
    i32.const 4
    call 0
    global.set 0
    global.get 0
    i32.const 1
    i32.store
    global.get 0
    local.set 0
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 0
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.load
        i32.const 1000000000
        i32.lt_s
        i32.const 0
        i32.eq
        br_if 1 (;@1;)
        br 0 (;@2;)
      end
    end)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (export "00000000" (func 7)))
