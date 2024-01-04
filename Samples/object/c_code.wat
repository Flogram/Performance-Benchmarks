(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (import "env" "memory" (memory (;0;) 0))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32)
    local.get 0
    i64.const 4611686019492741120
    i64.store align=4)
  (export "__wasm_call_ctors" (func 0))
  (export "__wasm_apply_data_relocs" (func 0))
  (export "main" (func 1)))
