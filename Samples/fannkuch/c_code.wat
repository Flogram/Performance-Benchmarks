(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (result i32)))
  (import "env" "iprintf" (func (;0;) (type 0)))
  (import "env" "putchar" (func (;1;) (type 1)))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "__memory_base" (global (;1;) i32))
  (import "env" "memory" (memory (;0;) 1))
  (func (;2;) (type 2))
  (func (;3;) (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 1
    global.set 0
    loop  ;; label = @1
      local.get 1
      global.get 1
      local.get 9
      i32.const 12
      i32.mul
      i32.add
      local.tee 0
      i32.load offset=8
      i32.store offset=72
      local.get 1
      local.get 0
      i64.load align=4
      local.tee 13
      i64.store offset=64
      i32.const 0
      local.set 8
      local.get 13
      i32.wrap_i64
      local.tee 0
      i32.const 1
      i32.ne
      if  ;; label = @2
        loop  ;; label = @3
          local.get 8
          i32.const 1
          i32.add
          local.set 8
          local.get 0
          local.get 0
          i32.const 2
          i32.div_s
          local.tee 2
          local.get 0
          local.get 2
          i32.lt_s
          select
          local.tee 3
          i32.const 0
          i32.gt_s
          if  ;; label = @4
            local.get 3
            i32.const 1
            i32.and
            local.set 11
            local.get 1
            i32.const -64
            i32.sub
            local.get 0
            i32.const 2
            i32.shl
            i32.add
            local.set 2
            i32.const 0
            local.set 0
            local.get 3
            i32.const 1
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.const -2
              i32.and
              local.set 12
              i32.const 0
              local.set 3
              loop  ;; label = @6
                local.get 0
                i32.const 2
                i32.shl
                local.tee 4
                local.get 1
                i32.const -64
                i32.sub
                i32.add
                local.tee 5
                i32.load
                local.set 10
                local.get 5
                local.get 2
                local.get 0
                i32.const -1
                i32.xor
                i32.const 2
                i32.shl
                i32.add
                local.tee 5
                i32.load
                i32.store
                local.get 5
                local.get 10
                i32.store
                local.get 1
                i32.const -64
                i32.sub
                local.get 4
                i32.const 4
                i32.or
                i32.add
                local.tee 4
                i32.load
                local.set 5
                local.get 4
                local.get 2
                local.get 0
                i32.const 1073741822
                i32.xor
                i32.const 2
                i32.shl
                i32.add
                local.tee 10
                i32.load
                i32.store
                local.get 10
                local.get 5
                i32.store
                local.get 0
                i32.const 2
                i32.add
                local.set 0
                local.get 3
                i32.const 2
                i32.add
                local.tee 3
                local.get 12
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 11
            if  ;; label = @5
              local.get 1
              i32.const -64
              i32.sub
              local.get 0
              i32.const 2
              i32.shl
              i32.add
              local.tee 3
              i32.load
              local.set 4
              local.get 3
              local.get 2
              local.get 0
              i32.const -1
              i32.xor
              i32.const 2
              i32.shl
              i32.add
              local.tee 0
              i32.load
              i32.store
              local.get 0
              local.get 4
              i32.store
            end
            local.get 1
            i32.load offset=64
            local.set 0
          end
          local.get 0
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 6
      local.get 8
      i32.lt_s
      local.set 0
      local.get 7
      i32.const 29
      i32.le_s
      if  ;; label = @2
        local.get 1
        i32.const 1
        i32.store offset=48
        global.get 1
        i32.const 72
        i32.add
        local.tee 2
        local.get 1
        i32.const 48
        i32.add
        call 0
        drop
        local.get 1
        local.get 1
        i32.load offset=68
        i32.store offset=32
        local.get 2
        local.get 1
        i32.const 32
        i32.add
        call 0
        drop
        local.get 1
        local.get 1
        i32.load offset=72
        i32.store offset=16
        local.get 2
        local.get 1
        i32.const 16
        i32.add
        call 0
        drop
        i32.const 10
        call 1
        drop
        local.get 7
        i32.const 1
        i32.add
        local.set 7
      end
      local.get 8
      local.get 6
      local.get 0
      select
      local.set 6
      local.get 9
      i32.const 1
      i32.add
      local.tee 9
      i32.const 6
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 1
    local.get 6
    i32.store
    global.get 1
    i32.const 76
    i32.add
    local.get 1
    call 0
    drop
    local.get 1
    i32.const 80
    i32.add
    global.set 0)
  (func (;4;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.tee 1
    i32.const 1
    i32.ne
    if  ;; label = @1
      loop  ;; label = @2
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        local.get 1
        local.get 1
        i32.const 2
        i32.div_s
        local.tee 3
        local.get 1
        local.get 3
        i32.lt_s
        select
        local.tee 2
        i32.const 0
        i32.gt_s
        if  ;; label = @3
          local.get 2
          i32.const 1
          i32.and
          local.set 8
          local.get 0
          local.get 1
          i32.const 2
          i32.shl
          i32.add
          local.set 3
          i32.const 0
          local.set 1
          local.get 2
          i32.const 1
          i32.ne
          if  ;; label = @4
            local.get 2
            i32.const -2
            i32.and
            local.set 9
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 0
              local.get 1
              i32.const 2
              i32.shl
              local.tee 4
              i32.add
              local.tee 5
              i32.load
              local.set 7
              local.get 5
              local.get 3
              local.get 1
              i32.const -1
              i32.xor
              i32.const 2
              i32.shl
              i32.add
              local.tee 5
              i32.load
              i32.store
              local.get 5
              local.get 7
              i32.store
              local.get 0
              local.get 4
              i32.const 4
              i32.or
              i32.add
              local.tee 4
              i32.load
              local.set 5
              local.get 4
              local.get 3
              local.get 1
              i32.const 1073741822
              i32.xor
              i32.const 2
              i32.shl
              i32.add
              local.tee 7
              i32.load
              i32.store
              local.get 7
              local.get 5
              i32.store
              local.get 1
              i32.const 2
              i32.add
              local.set 1
              local.get 2
              i32.const 2
              i32.add
              local.tee 2
              local.get 9
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 8
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 2
            i32.shl
            i32.add
            local.tee 2
            i32.load
            local.set 4
            local.get 2
            local.get 3
            local.get 1
            i32.const -1
            i32.xor
            i32.const 2
            i32.shl
            i32.add
            local.tee 1
            i32.load
            i32.store
            local.get 1
            local.get 4
            i32.store
          end
          local.get 0
          i32.load
          local.set 1
        end
        local.get 1
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 6)
  (func (;5;) (type 4) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 0
        local.get 3
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store
        global.get 1
        i32.const 72
        i32.add
        local.get 2
        call 0
        drop
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    i32.const 10
    call 1
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;6;) (type 5) (result i32)
    (local i32)
    local.get 0
    call 3
    i32.const 0)
  (func (;7;) (type 0) (param i32 i32) (result i32)
    call 6)
  (export "__wasm_call_ctors" (func 2))
  (export "__wasm_apply_data_relocs" (func 2))
  (export "fannkuch" (func 3))
  (export "flipCount" (func 4))
  (export "printPermutation" (func 5))
  (export "__original_main" (func 6))
  (export "main" (func 7))
  (data (;0;) (global.get 1) "\01\00\00\00\02\00\00\00\03\00\00\00\01\00\00\00\03\00\00\00\02\00\00\00\02\00\00\00\01\00\00\00\03\00\00\00\02\00\00\00\03\00\00\00\01\00\00\00\03\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00%d \00Max Flips: %d\0a\00"))
