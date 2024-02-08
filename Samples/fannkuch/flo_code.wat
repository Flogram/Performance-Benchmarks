(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32)))
  (type (;7;) (func))
  (import "imports" "draw" (func (;0;) (type 0)))
  (import "imports" "alloc" (func (;1;) (type 1)))
  (import "imports" "merge" (func (;2;) (type 2)))
  (import "imports" "save" (func (;3;) (type 3)))
  (import "imports" "memory" (memory (;0;) 127))
  (func (;4;) (type 4) (param i32 i32)
    (local i32 i32)
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
        local.get 2
        i32.const 4
        i32.mul
        i32.add
        i32.load
        local.set 3
        local.get 3
        call 0
        i32.const 888888
        call 0
        i32.const 0
        call 1
        global.set 0
        i32.const 4
        call 1
        i32.const 32
        i32.store
        call 2
        global.get 0
        i32.const 1
        call 0
        call 0
        i32.const 777777
        call 0
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    i32.const 888888
    call 0
    i32.const 0
    call 1
    global.set 0
    i32.const 4
    call 1
    i32.const 92
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 110
    i32.store
    call 2
    global.get 0
    i32.const 2
    call 0
    call 0
    i32.const 777777
    call 0)
  (func (;5;) (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 4
    call 1
    global.set 0
    global.get 0
    i32.const 0
    i32.store
    global.get 0
    local.set 2
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 4
        i32.mul
        i32.add
        i32.load
        local.set 3
        i32.const 4
        call 1
        global.set 0
        global.get 0
        i32.const 0
        i32.store
        global.get 0
        local.set 4
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load
            local.get 3
            i32.const 2
            i32.div_s
            i32.ge_s
            if  ;; label = @5
              br 2 (;@3;)
            end
            local.get 0
            local.get 4
            i32.load
            i32.const 4
            i32.mul
            i32.add
            i32.load
            local.set 5
            local.get 0
            local.get 4
            i32.load
            i32.const 4
            i32.mul
            i32.add
            local.get 0
            local.get 3
            local.get 4
            i32.load
            i32.const 1
            i32.sub
            i32.sub
            i32.const 4
            i32.mul
            i32.add
            i32.load
            i32.store
            local.get 0
            local.get 3
            local.get 4
            i32.load
            i32.const 1
            i32.sub
            i32.sub
            i32.const 4
            i32.mul
            i32.add
            local.get 5
            i32.store
            local.get 4
            local.get 4
            i32.load
            i32.const 1
            i32.add
            i32.store
            br 0 (;@4;)
          end
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 0
        i32.const 0
        i32.const 4
        i32.mul
        i32.add
        i32.load
        i32.const 1
        i32.ne
        i32.const 0
        i32.eq
        br_if 1 (;@1;)
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.load
    return)
  (func (;6;) (type 6) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 4
    call 1
    global.set 0
    global.get 0
    i32.const 0
    i32.store
    global.get 0
    local.set 1
    i32.const 4
    call 1
    global.set 0
    global.get 0
    i32.const 0
    i32.store
    global.get 0
    local.set 2
    i32.const 0
    call 1
    global.set 0
    i32.const 48
    call 1
    local.set 0
    global.get 0
    global.get 1
    call 3
    global.get 1
    global.get 0
    call 3
    global.get 0
    global.get 0
    global.get 0
    i32.const 0
    i32.const 8
    i32.mul
    i32.add
    i32.const 0
    call 1
    global.set 0
    i32.const 4
    call 1
    i32.const 1
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 2
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 3
    i32.store
    call 2
    global.get 0
    i32.store
    i32.const 4
    i32.const 0
    i32.const 8
    i32.mul
    i32.add
    i32.add
    i32.const 3
    i32.store
    global.set 0
    global.get 0
    global.get 0
    global.get 0
    i32.const 1
    i32.const 8
    i32.mul
    i32.add
    i32.const 0
    call 1
    global.set 0
    i32.const 4
    call 1
    i32.const 1
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 3
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 2
    i32.store
    call 2
    global.get 0
    i32.store
    i32.const 4
    i32.const 1
    i32.const 8
    i32.mul
    i32.add
    i32.add
    i32.const 3
    i32.store
    global.set 0
    global.get 0
    global.get 0
    global.get 0
    i32.const 2
    i32.const 8
    i32.mul
    i32.add
    i32.const 0
    call 1
    global.set 0
    i32.const 4
    call 1
    i32.const 2
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 1
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 3
    i32.store
    call 2
    global.get 0
    i32.store
    i32.const 4
    i32.const 2
    i32.const 8
    i32.mul
    i32.add
    i32.add
    i32.const 3
    i32.store
    global.set 0
    global.get 0
    global.get 0
    global.get 0
    i32.const 3
    i32.const 8
    i32.mul
    i32.add
    i32.const 0
    call 1
    global.set 0
    i32.const 4
    call 1
    i32.const 2
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 3
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 1
    i32.store
    call 2
    global.get 0
    i32.store
    i32.const 4
    i32.const 3
    i32.const 8
    i32.mul
    i32.add
    i32.add
    i32.const 3
    i32.store
    global.set 0
    global.get 0
    global.get 0
    global.get 0
    i32.const 4
    i32.const 8
    i32.mul
    i32.add
    i32.const 0
    call 1
    global.set 0
    i32.const 4
    call 1
    i32.const 3
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 1
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 2
    i32.store
    call 2
    global.get 0
    i32.store
    i32.const 4
    i32.const 4
    i32.const 8
    i32.mul
    i32.add
    i32.add
    i32.const 3
    i32.store
    global.set 0
    global.get 0
    global.get 0
    global.get 0
    i32.const 5
    i32.const 8
    i32.mul
    i32.add
    i32.const 0
    call 1
    global.set 0
    i32.const 4
    call 1
    i32.const 3
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 2
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 1
    i32.store
    call 2
    global.get 0
    i32.store
    i32.const 4
    i32.const 5
    i32.const 8
    i32.mul
    i32.add
    i32.add
    i32.const 3
    i32.store
    global.set 0
    global.get 0
    i32.const 6
    local.set 4
    local.set 3
    i32.const 0
    local.set 5
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 4
        local.get 5
        i32.eq
        br_if 1 (;@1;)
        drop
        local.get 3
        local.get 5
        i32.const 8
        i32.mul
        i32.add
        i32.load
        local.get 3
        i32.const 4
        local.get 5
        i32.const 8
        i32.mul
        i32.add
        i32.add
        i32.load
        local.set 7
        local.set 6
        local.get 6
        local.get 7
        call 5
        local.set 8
        local.get 8
        local.get 1
        i32.load
        i32.gt_s
        if  ;; label = @3
          local.get 1
          local.get 8
          i32.store
        end
        local.get 2
        i32.load
        i32.const 30
        i32.lt_s
        if  ;; label = @3
          local.get 6
          local.get 7
          call 4
          local.get 2
          local.get 2
          i32.load
          i32.const 1
          i32.add
          i32.store
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 0 (;@2;)
      end
    end
    i32.const 888888
    call 0
    i32.const 0
    call 1
    global.set 0
    i32.const 4
    call 1
    i32.const 77
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 97
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 120
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 32
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 70
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 108
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 105
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 112
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 115
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 58
    i32.store
    call 2
    i32.const 4
    call 1
    i32.const 32
    i32.store
    call 2
    global.get 0
    i32.const 11
    call 0
    call 0
    local.get 1
    i32.load
    call 0
    i32.const 777777
    call 0)
  (func (;7;) (type 7)
    i32.const 3
    call 6)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (export "00000000" (func 4))
  (export "00000001" (func 5))
  (export "00000002" (func 6))
  (export "00000003" (func 7)))
