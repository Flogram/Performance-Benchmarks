(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (result i32)))
  (import "env" "printf" (func (;0;) (type 0)))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "__memory_base" (global (;1;) i32))
  (import "env" "__table_base" (global (;2;) i32))
  (import "env" "memory" (memory (;0;) 1))
  (import "env" "__indirect_function_table" (table (;0;) 0 funcref))
  (func (;1;) (type 1))
  (func (;2;) (type 1))
  (func (;3;) (type 2) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    local.set 0
    i32.const 48
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=44
    i32.const 0
    local.set 4
    global.get 1
    local.set 5
    local.get 5
    local.get 4
    i32.add
    local.set 6
    i32.const 16
    local.set 7
    local.get 6
    local.get 7
    i32.add
    local.set 8
    local.get 8
    i32.load
    local.set 9
    i32.const 16
    local.set 10
    local.get 2
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.get 7
    i32.add
    local.set 12
    local.get 12
    local.get 9
    i32.store
    local.get 6
    i64.load
    local.set 41
    local.get 2
    local.get 41
    i64.store offset=16
    i32.const 8
    local.set 13
    local.get 6
    local.get 13
    i32.add
    local.set 14
    local.get 14
    i64.load
    local.set 42
    local.get 2
    local.get 42
    i64.store offset=24
    i32.const 5
    local.set 15
    local.get 2
    local.get 15
    i32.store offset=12
    i32.const 0
    local.set 16
    local.get 2
    local.get 16
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=8
        local.set 17
        local.get 2
        i32.load offset=12
        local.set 18
        local.get 17
        local.set 19
        local.get 18
        local.set 20
        local.get 19
        local.get 20
        i32.lt_s
        local.set 21
        i32.const 1
        local.set 22
        local.get 21
        local.get 22
        i32.and
        local.set 23
        local.get 23
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=8
        local.set 24
        i32.const 16
        local.set 25
        local.get 2
        local.get 25
        i32.add
        local.set 26
        local.get 26
        local.set 27
        i32.const 2
        local.set 28
        local.get 24
        local.get 28
        i32.shl
        local.set 29
        local.get 27
        local.get 29
        i32.add
        local.set 30
        local.get 30
        i32.load
        local.set 31
        local.get 2
        local.get 31
        i32.store
        i32.const 20
        local.set 32
        global.get 1
        local.set 33
        local.get 33
        local.get 32
        i32.add
        local.set 34
        local.get 34
        local.get 2
        call 0
        drop
        local.get 2
        i32.load offset=8
        local.set 35
        i32.const 1
        local.set 36
        local.get 35
        local.get 36
        i32.add
        local.set 37
        local.get 2
        local.get 37
        i32.store offset=8
        br 0 (;@2;)
      end
      unreachable
    end
    i32.const 0
    local.set 38
    i32.const 48
    local.set 39
    local.get 2
    local.get 39
    i32.add
    local.set 40
    local.get 40
    global.set 0
    local.get 38
    return)
  (func (;4;) (type 0) (param i32 i32) (result i32)
    (local i32)
    call 3
    local.set 2
    local.get 2
    return)
  (export "__wasm_call_ctors" (func 1))
  (export "__wasm_apply_data_relocs" (func 2))
  (export "__original_main" (func 3))
  (export "main" (func 4))
  (data (;0;) (global.get 1) "\0a\00\00\00\14\00\00\00\1e\00\00\00(\00\00\00<\00\00\00%d\0a\00"))
