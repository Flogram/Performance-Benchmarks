(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (result i32)
    i32.const 10)
  (func (;2;) (type 2) (param i32 i32) (result i32)
    i32.const 10)
  (export "__wasm_call_ctors" (func 0))
  (export "__wasm_apply_data_relocs" (func 0))
  (export "__original_main" (func 1))
  (export "main" (func 2)))