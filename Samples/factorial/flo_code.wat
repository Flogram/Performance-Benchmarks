(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (result i32)))
  (func (;0;) (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    i32.eq
    local.set 1
    block  ;; label = @1
      i32.const 0
      local.get 1
      i32.ne
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 0
    i32.const 1
    i32.sub
    call 0
    i32.mul
    return)
  (func (;1;) (type 1) (result i32)
    (local i32 i32)
    i32.const 20
    local.set 0
    local.get 0
    call 0
    local.set 1
    local.get 1
    return)
  (export "00000000" (func 0))
  (export "00000001" (func 1)))
