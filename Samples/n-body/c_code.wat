(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32 i32 f64)))
  (type (;4;) (func (param i32 f64)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (import "env" "memset" (func (;0;) (type 0)))
  (import "env" "__stack_pointer" (global (;0;) (mut i32)))
  (import "env" "memory" (memory (;0;) 0))
  (func (;1;) (type 1))
  (func (;2;) (type 2) (param i32 i32 i32)
    (local f64 f64 f64 f64 f64)
    local.get 2
    local.get 0
    f64.load
    f64.const 0x1.2589effed8accp-34 (;=6.6743e-11;)
    f64.mul
    local.get 1
    f64.load
    f64.mul
    local.get 1
    f64.load offset=24
    local.get 0
    f64.load offset=24
    f64.sub
    local.tee 3
    local.get 3
    f64.mul
    local.get 1
    f64.load offset=16
    local.get 0
    f64.load offset=16
    f64.sub
    local.tee 4
    local.get 4
    f64.mul
    local.get 1
    f64.load offset=8
    local.get 0
    f64.load offset=8
    f64.sub
    local.tee 5
    local.get 5
    f64.mul
    f64.const 0x0p+0 (;=0;)
    f64.add
    f64.add
    f64.add
    local.tee 7
    f64.div
    local.tee 6
    local.get 3
    f64.mul
    local.get 7
    f64.sqrt
    local.tee 3
    f64.div
    f64.store offset=16
    local.get 2
    local.get 6
    local.get 4
    f64.mul
    local.get 3
    f64.div
    f64.store offset=8
    local.get 2
    local.get 6
    local.get 5
    f64.mul
    local.get 3
    f64.div
    f64.store)
  (func (;3;) (type 3) (param i32 i32 f64)
    (local f64 i32)
    local.get 0
    local.get 1
    f64.load
    local.get 0
    f64.load
    local.tee 3
    f64.div
    local.get 2
    f64.mul
    local.get 0
    f64.load offset=32
    f64.add
    f64.store offset=32
    local.get 0
    i32.const 40
    i32.add
    local.tee 4
    local.get 1
    f64.load offset=8
    local.get 3
    f64.div
    local.get 2
    f64.mul
    local.get 4
    f64.load
    f64.add
    f64.store
    local.get 0
    i32.const 48
    i32.add
    local.tee 0
    local.get 1
    f64.load offset=16
    local.get 3
    f64.div
    local.get 2
    f64.mul
    local.get 0
    f64.load
    f64.add
    f64.store)
  (func (;4;) (type 4) (param i32 f64)
    (local i32)
    local.get 0
    local.get 0
    f64.load offset=32
    local.get 1
    f64.mul
    local.get 0
    f64.load offset=8
    f64.add
    f64.store offset=8
    local.get 0
    i32.const 16
    i32.add
    local.tee 2
    local.get 0
    f64.load offset=40
    local.get 1
    f64.mul
    local.get 2
    f64.load
    f64.add
    f64.store
    local.get 0
    i32.const 24
    i32.add
    local.tee 2
    local.get 0
    f64.load offset=48
    local.get 1
    f64.mul
    local.get 2
    f64.load
    f64.add
    f64.store)
  (func (;5;) (type 5) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    i32.const 176
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.const 168
    call 0
    local.tee 0
    i64.const 4673915078024626176
    i64.store offset=96
    local.get 0
    i32.const -64
    i32.sub
    i64.const 4774214098185355264
    i64.store
    local.get 0
    i64.const 4977535847032631222
    i64.store offset=56
    local.get 0
    i64.const 5060105129416830708
    i64.store
    local.get 0
    f64.load offset=136
    local.set 14
    local.get 0
    f64.load offset=128
    local.set 15
    local.get 0
    f64.load offset=120
    local.set 16
    local.get 0
    f64.load offset=80
    local.set 17
    local.get 0
    f64.load offset=72
    local.set 18
    local.get 0
    f64.load offset=24
    local.set 19
    local.get 0
    f64.load offset=16
    local.set 20
    f64.const 0x1.16a6d6cp+37 (;=1.496e+11;)
    local.set 21
    local.get 0
    f64.load offset=8
    local.set 22
    local.get 0
    f64.load offset=112
    local.set 31
    loop  ;; label = @1
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 2
        i32.const 56
        i32.mul
        i32.add
        local.tee 1
        i32.const 24
        i32.add
        local.set 3
        local.get 1
        i32.const 16
        i32.add
        local.set 4
        local.get 1
        i32.const 8
        i32.add
        local.set 5
        block (result f64)  ;; label = @3
          local.get 2
          i32.eqz
          if  ;; label = @4
            f64.const 0x0p+0 (;=0;)
            local.set 8
            f64.const 0x0p+0 (;=0;)
            local.set 10
            f64.const 0x0p+0 (;=0;)
            br 1 (;@3;)
          end
          local.get 19
          local.get 3
          f64.load
          f64.sub
          local.tee 8
          local.get 1
          f64.load
          f64.const 0x1.2589effed8accp-34 (;=6.6743e-11;)
          f64.mul
          f64.const 0x1.91ace3d05aef4p+100 (;=1.989e+30;)
          f64.mul
          local.get 8
          local.get 8
          f64.mul
          local.get 20
          local.get 4
          f64.load
          f64.sub
          local.tee 9
          local.get 9
          f64.mul
          local.get 22
          local.get 5
          f64.load
          f64.sub
          local.tee 10
          local.get 10
          f64.mul
          f64.const 0x0p+0 (;=0;)
          f64.add
          f64.add
          f64.add
          local.tee 8
          f64.div
          local.tee 7
          f64.mul
          local.get 8
          f64.sqrt
          local.tee 12
          f64.div
          f64.const 0x0p+0 (;=0;)
          f64.add
          local.set 8
          local.get 10
          local.get 7
          f64.mul
          local.get 12
          f64.div
          f64.const 0x0p+0 (;=0;)
          f64.add
          local.set 10
          local.get 9
          local.get 7
          f64.mul
          local.get 12
          f64.div
          f64.const 0x0p+0 (;=0;)
          f64.add
        end
        local.set 9
        local.get 2
        i32.const 1
        i32.ne
        if  ;; label = @3
          local.get 17
          local.get 3
          f64.load
          f64.sub
          local.tee 7
          local.get 1
          f64.load
          f64.const 0x1.2589effed8accp-34 (;=6.6743e-11;)
          f64.mul
          f64.const 0x1.3c27b13272fb6p+82 (;=5.972e+24;)
          f64.mul
          local.get 7
          local.get 7
          f64.mul
          local.get 18
          local.get 4
          f64.load
          f64.sub
          local.tee 7
          local.get 7
          f64.mul
          local.get 21
          local.get 5
          f64.load
          f64.sub
          local.tee 12
          local.get 12
          f64.mul
          f64.const 0x0p+0 (;=0;)
          f64.add
          f64.add
          f64.add
          local.tee 11
          f64.div
          local.tee 13
          f64.mul
          local.get 11
          f64.sqrt
          local.tee 11
          f64.div
          local.get 8
          f64.add
          local.set 8
          local.get 12
          local.get 13
          f64.mul
          local.get 11
          f64.div
          local.get 10
          f64.add
          local.set 10
          local.get 7
          local.get 13
          f64.mul
          local.get 11
          f64.div
          local.get 9
          f64.add
          local.set 9
        end
        local.get 2
        i32.const 2
        i32.ne
        if  ;; label = @3
          local.get 14
          local.get 3
          f64.load
          f64.sub
          local.tee 7
          local.get 1
          f64.load
          f64.const 0x1.2589effed8accp-34 (;=6.6743e-11;)
          f64.mul
          local.get 31
          f64.mul
          local.get 7
          local.get 7
          f64.mul
          local.get 15
          local.get 4
          f64.load
          f64.sub
          local.tee 7
          local.get 7
          f64.mul
          local.get 16
          local.get 5
          f64.load
          f64.sub
          local.tee 12
          local.get 12
          f64.mul
          f64.const 0x0p+0 (;=0;)
          f64.add
          f64.add
          f64.add
          local.tee 11
          f64.div
          local.tee 13
          f64.mul
          local.get 11
          f64.sqrt
          local.tee 11
          f64.div
          local.get 8
          f64.add
          local.set 8
          local.get 12
          local.get 13
          f64.mul
          local.get 11
          f64.div
          local.get 10
          f64.add
          local.set 10
          local.get 7
          local.get 13
          f64.mul
          local.get 11
          f64.div
          local.get 9
          f64.add
          local.set 9
        end
        local.get 1
        local.get 10
        local.get 1
        f64.load
        local.tee 7
        f64.div
        f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
        f64.mul
        local.get 1
        f64.load offset=32
        f64.add
        f64.store offset=32
        local.get 1
        i32.const 40
        i32.add
        local.tee 3
        local.get 9
        local.get 7
        f64.div
        f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
        f64.mul
        local.get 3
        f64.load
        f64.add
        f64.store
        local.get 1
        i32.const 48
        i32.add
        local.tee 1
        local.get 8
        local.get 7
        f64.div
        f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
        f64.mul
        local.get 1
        f64.load
        f64.add
        f64.store
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 0
      f64.load offset=32
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 30
      f64.add
      local.tee 22
      f64.store offset=8
      local.get 0
      local.get 0
      f64.load offset=40
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 29
      f64.add
      local.tee 20
      f64.store offset=16
      local.get 0
      local.get 0
      f64.load offset=48
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 28
      f64.add
      local.tee 19
      f64.store offset=24
      local.get 0
      local.get 0
      f64.load offset=88
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 21
      f64.add
      local.tee 21
      f64.store offset=64
      local.get 0
      local.get 0
      f64.load offset=96
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 27
      f64.add
      local.tee 18
      f64.store offset=72
      local.get 0
      local.get 0
      f64.load offset=104
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 26
      f64.add
      local.tee 17
      f64.store offset=80
      local.get 0
      local.get 0
      f64.load offset=144
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 25
      f64.add
      local.tee 16
      f64.store offset=120
      local.get 0
      local.get 0
      f64.load offset=152
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 24
      f64.add
      local.tee 15
      f64.store offset=128
      local.get 0
      local.get 0
      f64.load offset=160
      f64.const 0x1.0624dd2f1a9fcp-10 (;=0.001;)
      f64.mul
      local.get 23
      f64.add
      local.tee 14
      f64.store offset=136
      local.get 14
      local.set 23
      local.get 15
      local.set 24
      local.get 16
      local.set 25
      local.get 17
      local.set 26
      local.get 18
      local.set 27
      local.get 19
      local.set 28
      local.get 20
      local.set 29
      local.get 22
      local.set 30
      local.get 6
      i32.const 1
      i32.add
      local.tee 6
      i32.const 1000
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 176
    i32.add
    global.set 0
    i32.const 0)
  (func (;6;) (type 6) (param i32 i32) (result i32)
    call 5)
  (export "__wasm_call_ctors" (func 1))
  (export "__wasm_apply_data_relocs" (func 1))
  (export "calculateForce" (func 2))
  (export "updateVelocity" (func 3))
  (export "updatePosition" (func 4))
  (export "__original_main" (func 5))
  (export "main" (func 6)))
