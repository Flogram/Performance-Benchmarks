(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 0
    i32.const 7
    i32.and
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.const 8
      i32.lt_u
      if  ;; label = @2
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.const -8
      i32.and
      local.set 4
      i32.const 1
      local.set 1
      loop  ;; label = @2
        local.get 0
        i32.const 7
        i32.sub
        local.get 0
        i32.const 6
        i32.sub
        local.get 0
        i32.const 5
        i32.sub
        local.get 0
        i32.const 4
        i32.sub
        local.get 0
        i32.const 3
        i32.sub
        local.get 0
        i32.const 2
        i32.sub
        local.get 0
        i32.const 1
        i32.sub
        local.get 0
        local.get 1
        i32.mul
        i32.mul
        i32.mul
        i32.mul
        i32.mul
        i32.mul
        i32.mul
        i32.mul
        local.set 1
        local.get 0
        i32.const 8
        i32.sub
        local.set 0
        local.get 2
        i32.const 8
        i32.add
        local.tee 2
        local.get 4
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3
    if  ;; label = @1
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.mul
        local.set 1
        local.get 0
        i32.const 1
        i32.sub
        local.set 0
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;2;) (type 2) (result i32)
    i32.const -2102132736)
  (func (;3;) (type 3) (param i32 i32) (result i32)
    i32.const -2102132736)
  (export "__wasm_call_ctors" (func 0))
  (export "__wasm_apply_data_relocs" (func 0))
  (export "factorial" (func 1))
  (export "__original_main" (func 2))
  (export "main" (func 3)))
