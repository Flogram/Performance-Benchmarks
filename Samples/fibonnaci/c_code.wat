(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "__memory_base" (global (;1;) i32))
  (import "env" "__table_base" (global (;2;) i32))
  (import "env" "memory" (memory (;0;) 0))
  (import "env" "__indirect_function_table" (table (;0;) 0 funcref))
  (func (;0;) (type 0))
  (func (;1;) (type 0))
  (func (;2;) (type 1) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=28
    i32.const 0
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=24
    i32.const 1
    local.set 5
    local.get 2
    local.get 5
    i32.store offset=20
    i32.const 0
    local.set 6
    local.get 2
    local.get 6
    i32.store offset=16
    i32.const 0
    local.set 7
    local.get 2
    local.get 7
    i32.store offset=12
    i32.const 10
    local.set 8
    local.get 2
    local.get 8
    i32.store offset=8
    i32.const 0
    local.set 9
    local.get 2
    local.get 9
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=12
        local.set 10
        local.get 2
        i32.load offset=8
        local.set 11
        local.get 10
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.get 13
        i32.lt_s
        local.set 14
        i32.const 1
        local.set 15
        local.get 14
        local.get 15
        i32.and
        local.set 16
        local.get 16
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=24
        local.set 17
        local.get 2
        i32.load offset=20
        local.set 18
        local.get 17
        local.get 18
        i32.add
        local.set 19
        local.get 2
        local.get 19
        i32.store offset=16
        local.get 2
        i32.load offset=20
        local.set 20
        local.get 2
        local.get 20
        i32.store offset=24
        local.get 2
        i32.load offset=16
        local.set 21
        local.get 2
        local.get 21
        i32.store offset=20
        local.get 2
        i32.load offset=12
        local.set 22
        i32.const 1
        local.set 23
        local.get 22
        local.get 23
        i32.add
        local.set 24
        local.get 2
        local.get 24
        i32.store offset=12
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 2
    i32.load offset=24
    local.set 25
    local.get 25
    return)
  (func (;3;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call 2
    local.set 2
    local.get 2
    return)
  (export "__wasm_call_ctors" (func 0))
  (export "__wasm_apply_data_relocs" (func 1))
  (export "__original_main" (func 2))
  (export "main" (func 3)))
