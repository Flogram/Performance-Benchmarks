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
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 f32 f32 f32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    f32.const 0x1.3cccccp+3 (;=9.9;)
    local.set 11
    local.get 2
    local.get 11
    f32.store offset=8
    local.get 2
    f32.load offset=8
    local.set 12
    local.get 12
    f32.abs
    local.set 13
    f32.const 0x1p+31 (;=2.14748e+09;)
    local.set 14
    local.get 13
    local.get 14
    f32.lt
    local.set 4
    local.get 4
    i32.eqz
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        br_if 0 (;@2;)
        local.get 12
        i32.trunc_f32_s
        local.set 6
        local.get 6
        local.set 7
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 8
      local.get 8
      local.set 7
    end
    local.get 7
    local.set 9
    local.get 2
    local.get 9
    i32.store offset=4
    local.get 2
    i32.load offset=4
    local.set 10
    local.get 10
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
