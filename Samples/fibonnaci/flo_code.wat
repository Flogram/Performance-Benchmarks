(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (result i32)))
  (import "imports" "alloc" (func (;0;) (type 0)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;1;) (type 1) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 10
    local.set 0
    i32.const 4
    call 0
    global.set 0
    global.get 0
    i32.const 0
    i32.store
    global.get 0
    local.set 1
    i32.const 4
    call 0
    global.set 0
    global.get 0
    i32.const 1
    i32.store
    global.get 0
    local.set 2
    i32.const 4
    call 0
    global.set 0
    global.get 0
    i32.const 0
    i32.store
    global.get 0
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.set 4
        local.get 3
        i32.load
        local.get 0
        i32.ge_s
        if  ;; label = @3
          br 2 (;@1;)
        end
        local.get 1
        local.get 2
        i32.load
        i32.store
        local.get 2
        local.get 4
        local.get 2
        i32.load
        i32.add
        i32.store
        local.get 3
        local.get 3
        i32.load
        i32.const 1
        i32.add
        i32.store
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.load
    return)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (export "00000000" (func 1)))
