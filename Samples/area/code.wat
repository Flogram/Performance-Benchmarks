(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (result f32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (func (;0;) (type 1))
  (func (;1;) (type 2) (result f32)
    f32.const 0x1.2cp+5 (;=37.5;))
  (func (;2;) (type 0) (result i32)
    i32.const 1024)
  (func (;3;) (type 0) (result i32)
    global.get 0)
  (func (;4;) (type 3) (param i32)
    local.get 0
    global.set 0)
  (func (;5;) (type 4) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "main" (func 1))
  (export "__errno_location" (func 2))
  (export "stackSave" (func 3))
  (export "stackRestore" (func 4))
  (export "stackAlloc" (func 5))
  (export "__indirect_function_table" (table 0)))
