(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (type (;3;) (func))
  (import "imports" "alloc" (func (;0;) (type 0)))
  (import "imports" "merge" (func (;1;) (type 1)))
  (import "imports" "draw" (func (;2;) (type 2)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;3;) (type 3)
    (local i32 i32 i32 i32)
    i32.const 0
    call 0
    global.set 0
    i32.const 4
    call 0
    i32.const 10
    i32.store
    call 1
    i32.const 4
    call 0
    i32.const 20
    i32.store
    call 1
    i32.const 4
    call 0
    i32.const 30
    i32.store
    call 1
    i32.const 4
    call 0
    i32.const 40
    i32.store
    call 1
    i32.const 4
    call 0
    i32.const 60
    i32.store
    call 1
    global.get 0
    i32.const 5
    local.set 1
    local.set 0
    i32.const 0
    local.set 2
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 0
        local.get 1
        drop
        local.get 2
        i32.const 4
        i32.mul
        i32.add
        i32.load
        local.set 3
        local.get 3
        call 2
        i32.const 777777
        call 2
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (export "00000000" (func 3)))
