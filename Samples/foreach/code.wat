(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i64 i32) (result i64)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;0;) (type 3)))
  (import "env" "emscripten_memcpy_js" (func (;1;) (type 1)))
  (func (;2;) (type 8)
    i32.const 2868
    i32.const 2748
    i32.store
    i32.const 2796
    i32.const 42
    i32.store)
  (func (;3;) (type 4) (param i32 i32) (result i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 10
    i32.store offset=64
    local.get 0
    i32.const -64
    i32.sub
    call 4
    local.get 0
    i32.const 20
    i32.store offset=48
    local.get 0
    i32.const 48
    i32.add
    call 4
    local.get 0
    i32.const 30
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    call 4
    local.get 0
    i32.const 40
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call 4
    local.get 0
    i32.const 60
    i32.store
    local.get 0
    call 4
    local.get 0
    i32.const 80
    i32.add
    global.set 0
    i32.const 0)
  (func (;4;) (type 5) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=12
    global.get 0
    i32.const 208
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=204
    local.get 1
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call 8
    local.get 1
    local.get 1
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 1
      i32.const 200
      i32.add
      local.get 1
      i32.const 80
      i32.add
      local.get 1
      i32.const 160
      i32.add
      call 12
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 1612
      i32.load
      i32.const 0
      i32.lt_s
      local.set 5
      i32.const 1536
      i32.const 1536
      i32.load
      local.tee 3
      i32.const -33
      i32.and
      i32.store
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1584
            i32.load
            i32.eqz
            if  ;; label = @5
              i32.const 1584
              i32.const 80
              i32.store
              i32.const 1564
              i32.const 0
              i32.store
              i32.const 1552
              i64.const 0
              i64.store
              i32.const 1580
              i32.load
              local.set 2
              i32.const 1580
              local.get 1
              i32.store
              br 1 (;@4;)
            end
            i32.const 1552
            i32.load
            br_if 1 (;@3;)
          end
          i32.const -1
          i32.const 1536
          call 9
          br_if 1 (;@2;)
          drop
        end
        i32.const 1536
        local.get 1
        i32.const 200
        i32.add
        local.get 1
        i32.const 80
        i32.add
        local.get 1
        i32.const 160
        i32.add
        call 12
      end
      local.set 0
      local.get 3
      i32.const 32
      i32.and
      local.set 3
      local.get 2
      if (result i32)  ;; label = @2
        i32.const 1536
        i32.const 0
        i32.const 0
        i32.const 1572
        i32.load
        call_indirect (type 2)
        drop
        i32.const 1584
        i32.const 0
        i32.store
        i32.const 1580
        local.get 2
        i32.store
        i32.const 1564
        i32.const 0
        i32.store
        i32.const 1556
        i32.load
        drop
        i32.const 1552
        i64.const 0
        i64.store
        i32.const 0
      else
        local.get 0
      end
      drop
      i32.const 1536
      i32.const 1536
      i32.load
      local.get 3
      i32.or
      i32.store
      local.get 5
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 208
    i32.add
    global.set 0
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;5;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 6
    local.get 3
    i32.const 16
    i32.add
    local.set 4
    i32.const 2
    local.set 7
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=60
            local.get 3
            i32.const 16
            i32.add
            i32.const 2
            local.get 3
            i32.const 12
            i32.add
            call 0
            call 17
            if  ;; label = @5
              local.get 4
              local.set 5
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 6
              local.get 3
              i32.load offset=12
              local.tee 1
              i32.eq
              br_if 2 (;@3;)
              local.get 1
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                local.get 4
                local.set 5
                br 4 (;@2;)
              end
              local.get 4
              local.get 1
              local.get 4
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 9
              i32.const 3
              i32.shl
              i32.add
              local.tee 5
              local.get 1
              local.get 8
              i32.const 0
              local.get 9
              select
              i32.sub
              local.tee 8
              local.get 5
              i32.load
              i32.add
              i32.store
              local.get 4
              i32.const 12
              i32.const 4
              local.get 9
              select
              i32.add
              local.tee 4
              local.get 4
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 6
              local.get 1
              i32.sub
              local.set 6
              local.get 0
              i32.load offset=60
              local.get 5
              local.tee 4
              local.get 7
              local.get 9
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 0
              call 17
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 5
      i32.load offset=4
      i32.sub
    end
    local.set 1
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 1)
  (func (;6;) (type 0) (param i32) (result i32)
    i32.const 0)
  (func (;7;) (type 6) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;8;) (type 1) (param i32 i32 i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const 1
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const 3
      i32.sub
      local.get 1
      i32.store8
      local.get 3
      i32.const 2
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const 4
      i32.sub
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const 4
      i32.sub
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const 8
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 12
      i32.sub
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const 16
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 20
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 24
      i32.sub
      local.get 1
      i32.store
      local.get 2
      i32.const 28
      i32.sub
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 4
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 5
      local.get 3
      local.get 4
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store offset=24
        local.get 1
        local.get 5
        i64.store offset=16
        local.get 1
        local.get 5
        i64.store offset=8
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const 32
        i32.sub
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end)
  (func (;9;) (type 0) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 1
    i32.const 1
    i32.sub
    local.get 1
    i32.or
    i32.store offset=72
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;10;) (type 0) (param i32) (result i32)
    local.get 0
    i32.const 48
    i32.sub
    i32.const 10
    i32.lt_u)
  (func (;11;) (type 7) (result i32)
    i32.const 2712)
  (func (;12;) (type 3) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    i32.const 1041
    local.set 6
    global.get 0
    i32.const 80
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    i32.const 1041
    i32.store offset=76
    local.get 3
    i32.const 192
    i32.sub
    local.set 23
    local.get 2
    i32.const 384
    i32.sub
    local.set 24
    local.get 5
    i32.const 55
    i32.add
    local.set 25
    local.get 5
    i32.const 56
    i32.add
    local.set 17
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 0
            local.set 4
            loop  ;; label = @5
              local.get 6
              local.set 11
              local.get 4
              local.get 16
              i32.const 2147483647
              i32.xor
              i32.gt_s
              br_if 2 (;@3;)
              local.get 4
              local.get 16
              i32.add
              local.set 16
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    local.tee 4
                    i32.load8_u
                    local.tee 12
                    if  ;; label = @9
                      loop  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 12
                            i32.const 255
                            i32.and
                            local.tee 12
                            i32.eqz
                            if  ;; label = @13
                              local.get 4
                              local.set 6
                              br 1 (;@12;)
                            end
                            local.get 12
                            i32.const 37
                            i32.ne
                            br_if 1 (;@11;)
                            local.get 4
                            local.set 12
                            loop  ;; label = @13
                              local.get 12
                              i32.load8_u offset=1
                              i32.const 37
                              i32.ne
                              if  ;; label = @14
                                local.get 12
                                local.set 6
                                br 2 (;@12;)
                              end
                              local.get 4
                              i32.const 1
                              i32.add
                              local.set 4
                              local.get 12
                              i32.load8_u offset=2
                              local.set 7
                              local.get 12
                              i32.const 2
                              i32.add
                              local.tee 6
                              local.set 12
                              local.get 7
                              i32.const 37
                              i32.eq
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 4
                          local.get 11
                          i32.sub
                          local.tee 4
                          local.get 16
                          i32.const 2147483647
                          i32.xor
                          local.tee 12
                          i32.gt_s
                          br_if 8 (;@3;)
                          local.get 0
                          if  ;; label = @12
                            local.get 0
                            local.get 11
                            local.get 4
                            call 13
                          end
                          local.get 4
                          br_if 6 (;@5;)
                          local.get 5
                          local.get 6
                          i32.store offset=76
                          local.get 6
                          i32.const 1
                          i32.add
                          local.set 4
                          i32.const -1
                          local.set 14
                          block  ;; label = @12
                            local.get 6
                            i32.load8_s offset=1
                            call 10
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 6
                            i32.load8_u offset=2
                            i32.const 36
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const 3
                            i32.add
                            local.set 4
                            local.get 6
                            i32.load8_s offset=1
                            i32.const 48
                            i32.sub
                            local.set 14
                            i32.const 1
                            local.set 18
                          end
                          local.get 5
                          local.get 4
                          i32.store offset=76
                          i32.const 0
                          local.set 8
                          block  ;; label = @12
                            local.get 4
                            i32.load8_s
                            local.tee 9
                            i32.const 32
                            i32.sub
                            local.tee 6
                            i32.const 31
                            i32.gt_u
                            if  ;; label = @13
                              local.get 4
                              local.set 7
                              br 1 (;@12;)
                            end
                            local.get 4
                            local.set 7
                            i32.const 1
                            local.get 6
                            i32.shl
                            local.tee 6
                            i32.const 75913
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                            loop  ;; label = @13
                              local.get 5
                              local.get 4
                              i32.const 1
                              i32.add
                              local.tee 7
                              i32.store offset=76
                              local.get 6
                              local.get 8
                              i32.or
                              local.set 8
                              local.get 4
                              i32.load8_s offset=1
                              local.tee 9
                              i32.const 32
                              i32.sub
                              local.tee 6
                              i32.const 32
                              i32.ge_u
                              br_if 1 (;@12;)
                              local.get 7
                              local.set 4
                              i32.const 1
                              local.get 6
                              i32.shl
                              local.tee 6
                              i32.const 75913
                              i32.and
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 9
                            i32.const 42
                            i32.eq
                            if  ;; label = @13
                              local.get 7
                              i32.const 1
                              i32.add
                              local.set 9
                              block (result i32)  ;; label = @14
                                block  ;; label = @15
                                  local.get 7
                                  i32.load8_s offset=1
                                  call 10
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i32.load8_u offset=2
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 9
                                  i32.load8_s
                                  local.set 4
                                  block (result i32)  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    if  ;; label = @17
                                      local.get 23
                                      local.get 4
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      i32.const 10
                                      i32.store
                                      i32.const 0
                                      br 1 (;@16;)
                                    end
                                    local.get 24
                                    local.get 4
                                    i32.const 3
                                    i32.shl
                                    i32.add
                                    i32.load
                                  end
                                  local.set 13
                                  local.get 7
                                  i32.const 3
                                  i32.add
                                  local.set 9
                                  i32.const 1
                                  br 1 (;@14;)
                                end
                                local.get 18
                                br_if 6 (;@8;)
                                local.get 0
                                i32.eqz
                                if  ;; label = @15
                                  local.get 5
                                  local.get 9
                                  i32.store offset=76
                                  i32.const 0
                                  local.set 18
                                  i32.const 0
                                  local.set 13
                                  br 3 (;@12;)
                                end
                                local.get 1
                                local.get 1
                                i32.load
                                local.tee 4
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 4
                                i32.load
                                local.set 13
                                i32.const 0
                              end
                              local.set 18
                              local.get 5
                              local.get 9
                              i32.store offset=76
                              local.get 13
                              i32.const 0
                              i32.ge_s
                              br_if 1 (;@12;)
                              i32.const 0
                              local.get 13
                              i32.sub
                              local.set 13
                              local.get 8
                              i32.const 8192
                              i32.or
                              local.set 8
                              br 1 (;@12;)
                            end
                            local.get 5
                            i32.const 76
                            i32.add
                            call 14
                            local.tee 13
                            i32.const 0
                            i32.lt_s
                            br_if 9 (;@3;)
                            local.get 5
                            i32.load offset=76
                            local.set 9
                          end
                          i32.const 0
                          local.set 4
                          i32.const -1
                          local.set 10
                          block (result i32)  ;; label = @12
                            local.get 9
                            i32.load8_u
                            i32.const 46
                            i32.ne
                            if  ;; label = @13
                              local.get 9
                              local.set 6
                              i32.const 0
                              br 1 (;@12;)
                            end
                            local.get 9
                            i32.load8_u offset=1
                            i32.const 42
                            i32.eq
                            if  ;; label = @13
                              local.get 9
                              i32.const 2
                              i32.add
                              local.set 6
                              block (result i32)  ;; label = @14
                                block  ;; label = @15
                                  local.get 9
                                  i32.load8_s offset=2
                                  call 10
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 9
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 6
                                  i32.load8_s
                                  local.set 7
                                  local.get 9
                                  i32.const 4
                                  i32.add
                                  local.set 6
                                  block (result i32)  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    if  ;; label = @17
                                      local.get 23
                                      local.get 7
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      i32.const 10
                                      i32.store
                                      i32.const 0
                                      br 1 (;@16;)
                                    end
                                    local.get 24
                                    local.get 7
                                    i32.const 3
                                    i32.shl
                                    i32.add
                                    i32.load
                                  end
                                  br 1 (;@14;)
                                end
                                local.get 18
                                br_if 6 (;@8;)
                                i32.const 0
                                local.get 0
                                i32.eqz
                                br_if 0 (;@14;)
                                drop
                                local.get 1
                                local.get 1
                                i32.load
                                local.tee 7
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 7
                                i32.load
                              end
                              local.set 10
                              local.get 5
                              local.get 6
                              i32.store offset=76
                              local.get 10
                              i32.const 0
                              i32.ge_s
                              br 1 (;@12;)
                            end
                            local.get 5
                            local.get 9
                            i32.const 1
                            i32.add
                            i32.store offset=76
                            local.get 5
                            i32.const 76
                            i32.add
                            call 14
                            local.set 10
                            local.get 5
                            i32.load offset=76
                            local.set 6
                            i32.const 1
                          end
                          local.set 19
                          loop  ;; label = @12
                            local.get 4
                            local.set 7
                            i32.const 28
                            local.set 15
                            local.get 6
                            local.tee 9
                            i32.load8_s
                            local.tee 4
                            i32.const 123
                            i32.sub
                            i32.const -58
                            i32.lt_u
                            br_if 10 (;@2;)
                            local.get 6
                            i32.const 1
                            i32.add
                            local.set 6
                            local.get 4
                            local.get 7
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.load8_u offset=991
                            local.tee 4
                            i32.const 1
                            i32.sub
                            i32.const 8
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          local.get 6
                          i32.store offset=76
                          block  ;; label = @12
                            local.get 4
                            i32.const 27
                            i32.ne
                            if  ;; label = @13
                              local.get 4
                              i32.eqz
                              br_if 11 (;@2;)
                              local.get 14
                              i32.const 0
                              i32.ge_s
                              if  ;; label = @14
                                local.get 0
                                i32.eqz
                                if  ;; label = @15
                                  local.get 3
                                  local.get 14
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 4
                                  i32.store
                                  br 11 (;@4;)
                                end
                                local.get 5
                                local.get 2
                                local.get 14
                                i32.const 3
                                i32.shl
                                i32.add
                                i64.load
                                i64.store offset=64
                                br 2 (;@12;)
                              end
                              local.get 0
                              i32.eqz
                              br_if 7 (;@6;)
                              local.get 5
                              i32.const -64
                              i32.sub
                              local.get 4
                              local.get 1
                              call 15
                              br 1 (;@12;)
                            end
                            local.get 14
                            i32.const 0
                            i32.ge_s
                            br_if 10 (;@2;)
                            i32.const 0
                            local.set 4
                            local.get 0
                            i32.eqz
                            br_if 7 (;@5;)
                          end
                          i32.const -1
                          local.set 15
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 10 (;@1;)
                          local.get 8
                          i32.const -65537
                          i32.and
                          local.tee 20
                          local.get 8
                          local.get 8
                          i32.const 8192
                          i32.and
                          select
                          local.set 8
                          i32.const 0
                          local.set 14
                          i32.const 1024
                          local.set 21
                          local.get 17
                          local.set 22
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block (result i32)  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block (result i32)  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          local.get 9
                                                          i32.load8_s
                                                          local.tee 4
                                                          i32.const -33
                                                          i32.and
                                                          local.get 4
                                                          local.get 4
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 3
                                                          i32.eq
                                                          select
                                                          local.get 4
                                                          local.get 7
                                                          select
                                                          local.tee 4
                                                          i32.const 88
                                                          i32.sub
                                                          br_table 4 (;@23;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 14 (;@13;) 20 (;@7;) 15 (;@12;) 6 (;@21;) 14 (;@13;) 14 (;@13;) 14 (;@13;) 20 (;@7;) 6 (;@21;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 20 (;@7;) 2 (;@25;) 5 (;@22;) 3 (;@24;) 20 (;@7;) 20 (;@7;) 9 (;@18;) 20 (;@7;) 1 (;@26;) 20 (;@7;) 20 (;@7;) 4 (;@23;) 0 (;@27;)
                                                        end
                                                        block  ;; label = @27
                                                          local.get 4
                                                          i32.const 65
                                                          i32.sub
                                                          br_table 14 (;@13;) 20 (;@7;) 11 (;@16;) 20 (;@7;) 14 (;@13;) 14 (;@13;) 14 (;@13;) 0 (;@27;)
                                                        end
                                                        local.get 4
                                                        i32.const 83
                                                        i32.eq
                                                        br_if 9 (;@17;)
                                                        br 19 (;@7;)
                                                      end
                                                      local.get 5
                                                      i64.load offset=64
                                                      local.set 26
                                                      i32.const 1024
                                                      br 5 (;@20;)
                                                    end
                                                    i32.const 0
                                                    local.set 4
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  local.get 7
                                                                  i32.const 255
                                                                  i32.and
                                                                  br_table 0 (;@31;) 1 (;@30;) 2 (;@29;) 3 (;@28;) 4 (;@27;) 26 (;@5;) 5 (;@26;) 6 (;@25;) 26 (;@5;)
                                                                end
                                                                local.get 5
                                                                i32.load offset=64
                                                                local.get 16
                                                                i32.store
                                                                br 25 (;@5;)
                                                              end
                                                              local.get 5
                                                              i32.load offset=64
                                                              local.get 16
                                                              i32.store
                                                              br 24 (;@5;)
                                                            end
                                                            local.get 5
                                                            i32.load offset=64
                                                            local.get 16
                                                            i64.extend_i32_s
                                                            i64.store
                                                            br 23 (;@5;)
                                                          end
                                                          local.get 5
                                                          i32.load offset=64
                                                          local.get 16
                                                          i32.store16
                                                          br 22 (;@5;)
                                                        end
                                                        local.get 5
                                                        i32.load offset=64
                                                        local.get 16
                                                        i32.store8
                                                        br 21 (;@5;)
                                                      end
                                                      local.get 5
                                                      i32.load offset=64
                                                      local.get 16
                                                      i32.store
                                                      br 20 (;@5;)
                                                    end
                                                    local.get 5
                                                    i32.load offset=64
                                                    local.get 16
                                                    i64.extend_i32_s
                                                    i64.store
                                                    br 19 (;@5;)
                                                  end
                                                  i32.const 8
                                                  local.get 10
                                                  local.get 10
                                                  i32.const 8
                                                  i32.le_u
                                                  select
                                                  local.set 10
                                                  local.get 8
                                                  i32.const 8
                                                  i32.or
                                                  local.set 8
                                                  i32.const 120
                                                  local.set 4
                                                end
                                                local.get 17
                                                local.set 6
                                                local.get 4
                                                i32.const 32
                                                i32.and
                                                local.set 11
                                                local.get 5
                                                i64.load offset=64
                                                local.tee 26
                                                i64.const 0
                                                i64.ne
                                                if  ;; label = @23
                                                  loop  ;; label = @24
                                                    local.get 6
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee 6
                                                    local.get 26
                                                    i32.wrap_i64
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 1520
                                                    i32.add
                                                    i32.load8_u
                                                    local.get 11
                                                    i32.or
                                                    i32.store8
                                                    local.get 26
                                                    i64.const 15
                                                    i64.gt_u
                                                    local.set 7
                                                    local.get 26
                                                    i64.const 4
                                                    i64.shr_u
                                                    local.set 26
                                                    local.get 7
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 6
                                                local.set 11
                                                local.get 5
                                                i64.load offset=64
                                                i64.eqz
                                                br_if 3 (;@19;)
                                                local.get 8
                                                i32.const 8
                                                i32.and
                                                i32.eqz
                                                br_if 3 (;@19;)
                                                local.get 4
                                                i32.const 4
                                                i32.shr_u
                                                i32.const 1024
                                                i32.add
                                                local.set 21
                                                i32.const 2
                                                local.set 14
                                                br 3 (;@19;)
                                              end
                                              local.get 17
                                              local.set 4
                                              local.get 5
                                              i64.load offset=64
                                              local.tee 26
                                              i64.const 0
                                              i64.ne
                                              if  ;; label = @22
                                                loop  ;; label = @23
                                                  local.get 4
                                                  i32.const 1
                                                  i32.sub
                                                  local.tee 4
                                                  local.get 26
                                                  i32.wrap_i64
                                                  i32.const 7
                                                  i32.and
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get 26
                                                  i64.const 7
                                                  i64.gt_u
                                                  local.set 6
                                                  local.get 26
                                                  i64.const 3
                                                  i64.shr_u
                                                  local.set 26
                                                  local.get 6
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 4
                                              local.set 11
                                              local.get 8
                                              i32.const 8
                                              i32.and
                                              i32.eqz
                                              br_if 2 (;@19;)
                                              local.get 10
                                              local.get 17
                                              local.get 4
                                              i32.sub
                                              local.tee 4
                                              i32.const 1
                                              i32.add
                                              local.get 4
                                              local.get 10
                                              i32.lt_s
                                              select
                                              local.set 10
                                              br 2 (;@19;)
                                            end
                                            local.get 5
                                            i64.load offset=64
                                            local.tee 26
                                            i64.const 0
                                            i64.lt_s
                                            if  ;; label = @21
                                              local.get 5
                                              i64.const 0
                                              local.get 26
                                              i64.sub
                                              local.tee 26
                                              i64.store offset=64
                                              i32.const 1
                                              local.set 14
                                              i32.const 1024
                                              br 1 (;@20;)
                                            end
                                            local.get 8
                                            i32.const 2048
                                            i32.and
                                            if  ;; label = @21
                                              i32.const 1
                                              local.set 14
                                              i32.const 1025
                                              br 1 (;@20;)
                                            end
                                            i32.const 1026
                                            i32.const 1024
                                            local.get 8
                                            i32.const 1
                                            i32.and
                                            local.tee 14
                                            select
                                          end
                                          local.set 21
                                          local.get 17
                                          local.set 6
                                          block  ;; label = @20
                                            local.get 26
                                            i64.const 4294967296
                                            i64.lt_u
                                            if  ;; label = @21
                                              local.get 26
                                              local.set 27
                                              br 1 (;@20;)
                                            end
                                            loop  ;; label = @21
                                              local.get 6
                                              i32.const 1
                                              i32.sub
                                              local.tee 6
                                              local.get 26
                                              local.get 26
                                              i64.const 10
                                              i64.div_u
                                              local.tee 27
                                              i64.const 10
                                              i64.mul
                                              i64.sub
                                              i32.wrap_i64
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get 26
                                              i64.const 42949672959
                                              i64.gt_u
                                              local.set 4
                                              local.get 27
                                              local.set 26
                                              local.get 4
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          local.get 27
                                          i32.wrap_i64
                                          local.tee 4
                                          if  ;; label = @20
                                            loop  ;; label = @21
                                              local.get 6
                                              i32.const 1
                                              i32.sub
                                              local.tee 6
                                              local.get 4
                                              local.get 4
                                              i32.const 10
                                              i32.div_u
                                              local.tee 7
                                              i32.const 10
                                              i32.mul
                                              i32.sub
                                              i32.const 48
                                              i32.or
                                              i32.store8
                                              local.get 4
                                              i32.const 9
                                              i32.gt_u
                                              local.set 11
                                              local.get 7
                                              local.set 4
                                              local.get 11
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          local.get 6
                                          local.set 11
                                        end
                                        local.get 19
                                        local.get 10
                                        i32.const 0
                                        i32.lt_s
                                        i32.and
                                        br_if 15 (;@3;)
                                        local.get 8
                                        i32.const -65537
                                        i32.and
                                        local.get 8
                                        local.get 19
                                        select
                                        local.set 8
                                        block  ;; label = @19
                                          local.get 5
                                          i64.load offset=64
                                          local.tee 26
                                          i64.const 0
                                          i64.ne
                                          br_if 0 (;@19;)
                                          local.get 10
                                          br_if 0 (;@19;)
                                          local.get 17
                                          local.set 11
                                          i32.const 0
                                          local.set 10
                                          br 12 (;@7;)
                                        end
                                        local.get 10
                                        local.get 26
                                        i64.eqz
                                        local.get 17
                                        local.get 11
                                        i32.sub
                                        i32.add
                                        local.tee 4
                                        local.get 4
                                        local.get 10
                                        i32.lt_s
                                        select
                                        local.set 10
                                        br 11 (;@7;)
                                      end
                                      block (result i32)  ;; label = @18
                                        i32.const 2147483647
                                        local.get 10
                                        local.get 10
                                        i32.const 2147483647
                                        i32.ge_u
                                        select
                                        local.tee 6
                                        local.tee 8
                                        i32.const 0
                                        i32.ne
                                        local.set 7
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              local.get 5
                                              i32.load offset=64
                                              local.tee 4
                                              i32.const 1034
                                              local.get 4
                                              select
                                              local.tee 11
                                              local.tee 4
                                              local.tee 9
                                              i32.const 3
                                              i32.and
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 8
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 9
                                                i32.load8_u
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                local.get 8
                                                i32.const 1
                                                i32.sub
                                                local.tee 8
                                                i32.const 0
                                                i32.ne
                                                local.set 7
                                                local.get 9
                                                i32.const 1
                                                i32.add
                                                local.tee 9
                                                i32.const 3
                                                i32.and
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                local.get 8
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 7
                                            i32.eqz
                                            br_if 1 (;@19;)
                                            block  ;; label = @21
                                              local.get 9
                                              i32.load8_u
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 8
                                              i32.const 4
                                              i32.lt_u
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 9
                                                i32.load
                                                local.tee 7
                                                i32.const -1
                                                i32.xor
                                                local.get 7
                                                i32.const 16843009
                                                i32.sub
                                                i32.and
                                                i32.const -2139062144
                                                i32.and
                                                br_if 2 (;@20;)
                                                local.get 9
                                                i32.const 4
                                                i32.add
                                                local.set 9
                                                local.get 8
                                                i32.const 4
                                                i32.sub
                                                local.tee 8
                                                i32.const 3
                                                i32.gt_u
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 8
                                            i32.eqz
                                            br_if 1 (;@19;)
                                          end
                                          loop  ;; label = @20
                                            local.get 9
                                            local.get 9
                                            i32.load8_u
                                            i32.eqz
                                            br_if 2 (;@18;)
                                            drop
                                            local.get 9
                                            i32.const 1
                                            i32.add
                                            local.set 9
                                            local.get 8
                                            i32.const 1
                                            i32.sub
                                            local.tee 8
                                            br_if 0 (;@20;)
                                          end
                                        end
                                        i32.const 0
                                      end
                                      local.tee 9
                                      local.get 4
                                      i32.sub
                                      local.get 6
                                      local.get 9
                                      select
                                      local.tee 4
                                      local.get 11
                                      i32.add
                                      local.set 22
                                      local.get 10
                                      i32.const 0
                                      i32.ge_s
                                      if  ;; label = @18
                                        local.get 20
                                        local.set 8
                                        local.get 4
                                        local.set 10
                                        br 11 (;@7;)
                                      end
                                      local.get 20
                                      local.set 8
                                      local.get 4
                                      local.set 10
                                      local.get 22
                                      i32.load8_u
                                      br_if 14 (;@3;)
                                      br 10 (;@7;)
                                    end
                                    local.get 10
                                    if  ;; label = @17
                                      local.get 5
                                      i32.load offset=64
                                      br 2 (;@15;)
                                    end
                                    i32.const 0
                                    local.set 4
                                    local.get 0
                                    i32.const 32
                                    local.get 13
                                    i32.const 0
                                    local.get 8
                                    call 16
                                    br 2 (;@14;)
                                  end
                                  local.get 5
                                  i32.const 0
                                  i32.store offset=12
                                  local.get 5
                                  local.get 5
                                  i64.load offset=64
                                  i64.store32 offset=8
                                  local.get 5
                                  local.get 5
                                  i32.const 8
                                  i32.add
                                  i32.store offset=64
                                  i32.const -1
                                  local.set 10
                                  local.get 5
                                  i32.const 8
                                  i32.add
                                end
                                local.set 12
                                i32.const 0
                                local.set 4
                                block  ;; label = @15
                                  loop  ;; label = @16
                                    local.get 12
                                    i32.load
                                    local.tee 7
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    block  ;; label = @17
                                      local.get 5
                                      i32.const 4
                                      i32.add
                                      local.get 7
                                      call 18
                                      local.tee 7
                                      i32.const 0
                                      i32.lt_s
                                      local.tee 11
                                      br_if 0 (;@17;)
                                      local.get 7
                                      local.get 10
                                      local.get 4
                                      i32.sub
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 12
                                      i32.const 4
                                      i32.add
                                      local.set 12
                                      local.get 4
                                      local.get 7
                                      i32.add
                                      local.tee 4
                                      local.get 10
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      br 2 (;@15;)
                                    end
                                  end
                                  local.get 11
                                  br_if 14 (;@1;)
                                end
                                i32.const 61
                                local.set 15
                                local.get 4
                                i32.const 0
                                i32.lt_s
                                br_if 12 (;@2;)
                                local.get 0
                                i32.const 32
                                local.get 13
                                local.get 4
                                local.get 8
                                call 16
                                local.get 4
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 0
                                  local.set 4
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 7
                                local.get 5
                                i32.load offset=64
                                local.set 12
                                loop  ;; label = @15
                                  local.get 12
                                  i32.load
                                  local.tee 11
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  local.get 11
                                  call 18
                                  local.tee 11
                                  local.get 7
                                  i32.add
                                  local.tee 7
                                  local.get 4
                                  i32.gt_u
                                  br_if 1 (;@14;)
                                  local.get 0
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  local.get 11
                                  call 13
                                  local.get 12
                                  i32.const 4
                                  i32.add
                                  local.set 12
                                  local.get 4
                                  local.get 7
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.const 32
                              local.get 13
                              local.get 4
                              local.get 8
                              i32.const 8192
                              i32.xor
                              call 16
                              local.get 13
                              local.get 4
                              local.get 4
                              local.get 13
                              i32.lt_s
                              select
                              local.set 4
                              br 8 (;@5;)
                            end
                            local.get 19
                            local.get 10
                            i32.const 0
                            i32.lt_s
                            i32.and
                            br_if 9 (;@3;)
                            i32.const 61
                            local.set 15
                            local.get 5
                            f64.load offset=64
                            drop
                            unreachable
                          end
                          local.get 5
                          local.get 5
                          i64.load offset=64
                          i64.store8 offset=55
                          i32.const 1
                          local.set 10
                          local.get 25
                          local.set 11
                          local.get 20
                          local.set 8
                          br 4 (;@7;)
                        end
                        local.get 4
                        i32.load8_u offset=1
                        local.set 12
                        local.get 4
                        i32.const 1
                        i32.add
                        local.set 4
                        br 0 (;@10;)
                      end
                      unreachable
                    end
                    local.get 16
                    local.set 15
                    local.get 0
                    br_if 7 (;@1;)
                    local.get 18
                    i32.eqz
                    br_if 2 (;@6;)
                    i32.const 1
                    local.set 4
                    loop  ;; label = @9
                      local.get 3
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      local.tee 12
                      if  ;; label = @10
                        local.get 2
                        local.get 4
                        i32.const 3
                        i32.shl
                        i32.add
                        local.get 12
                        local.get 1
                        call 15
                        i32.const 1
                        local.set 15
                        local.get 4
                        i32.const 1
                        i32.add
                        local.tee 4
                        i32.const 10
                        i32.ne
                        br_if 1 (;@9;)
                        br 9 (;@1;)
                      end
                    end
                    i32.const 1
                    local.set 15
                    local.get 4
                    i32.const 10
                    i32.ge_u
                    br_if 7 (;@1;)
                    loop  ;; label = @9
                      local.get 3
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.add
                      i32.load
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const 1
                      i32.add
                      local.tee 4
                      i32.const 10
                      i32.ne
                      br_if 0 (;@9;)
                    end
                    br 7 (;@1;)
                  end
                  i32.const 28
                  local.set 15
                  br 5 (;@2;)
                end
                local.get 10
                local.get 22
                local.get 11
                i32.sub
                local.tee 6
                local.get 6
                local.get 10
                i32.lt_s
                select
                local.tee 9
                local.get 14
                i32.const 2147483647
                i32.xor
                i32.gt_s
                br_if 3 (;@3;)
                i32.const 61
                local.set 15
                local.get 13
                local.get 9
                local.get 14
                i32.add
                local.tee 7
                local.get 7
                local.get 13
                i32.lt_s
                select
                local.tee 4
                local.get 12
                i32.gt_s
                br_if 4 (;@2;)
                local.get 0
                i32.const 32
                local.get 4
                local.get 7
                local.get 8
                call 16
                local.get 0
                local.get 21
                local.get 14
                call 13
                local.get 0
                i32.const 48
                local.get 4
                local.get 7
                local.get 8
                i32.const 65536
                i32.xor
                call 16
                local.get 0
                i32.const 48
                local.get 9
                local.get 6
                i32.const 0
                call 16
                local.get 0
                local.get 11
                local.get 6
                call 13
                local.get 0
                i32.const 32
                local.get 4
                local.get 7
                local.get 8
                i32.const 8192
                i32.xor
                call 16
                local.get 5
                i32.load offset=76
                local.set 6
                br 1 (;@5;)
              end
            end
          end
          i32.const 0
          local.set 15
          br 2 (;@1;)
        end
        i32.const 61
        local.set 15
      end
      i32.const 2712
      local.get 15
      i32.store
      i32.const -1
      local.set 15
    end
    local.get 5
    i32.const 80
    i32.add
    global.set 0
    local.get 15)
  (func (;13;) (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 0
        local.tee 4
        i32.load offset=16
        local.tee 0
        if (result i32)  ;; label = @3
          local.get 0
        else
          local.get 4
          call 9
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=16
        end
        local.get 4
        i32.load offset=20
        local.tee 5
        i32.sub
        i32.gt_u
        if  ;; label = @3
          local.get 4
          local.get 1
          local.get 2
          local.get 4
          i32.load offset=36
          call_indirect (type 2)
          drop
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.load offset=80
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.set 0
            loop  ;; label = @5
              local.get 0
              local.get 1
              i32.add
              local.tee 3
              i32.const 1
              i32.sub
              i32.load8_u
              i32.const 10
              i32.ne
              if  ;; label = @6
                local.get 0
                i32.const 1
                i32.sub
                local.tee 0
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 4
            local.get 1
            local.get 0
            local.get 4
            i32.load offset=36
            call_indirect (type 2)
            local.get 0
            i32.lt_u
            br_if 2 (;@2;)
            local.get 2
            local.get 0
            i32.sub
            local.set 2
            local.get 4
            i32.load offset=20
            local.set 5
            br 1 (;@3;)
          end
          local.get 1
          local.set 3
        end
        local.get 5
        local.set 0
        block  ;; label = @3
          local.get 2
          local.tee 1
          i32.const 512
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 3
            local.get 1
            call 1
            br 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 0
            local.get 3
            i32.xor
            i32.const 3
            i32.and
            i32.eqz
            if  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 3
                i32.and
                i32.eqz
                if  ;; label = @7
                  local.get 0
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 0
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 0
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.load8_u
                  i32.store8
                  local.get 3
                  i32.const 1
                  i32.add
                  local.set 3
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 1
                  i32.const 3
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  local.get 5
                  i32.lt_u
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 5
                i32.const -4
                i32.and
                local.tee 6
                i32.const 64
                i32.lt_u
                br_if 0 (;@6;)
                local.get 1
                local.get 6
                i32.const -64
                i32.add
                local.tee 0
                i32.gt_u
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.load
                  i32.store
                  local.get 1
                  local.get 3
                  i32.load offset=4
                  i32.store offset=4
                  local.get 1
                  local.get 3
                  i32.load offset=8
                  i32.store offset=8
                  local.get 1
                  local.get 3
                  i32.load offset=12
                  i32.store offset=12
                  local.get 1
                  local.get 3
                  i32.load offset=16
                  i32.store offset=16
                  local.get 1
                  local.get 3
                  i32.load offset=20
                  i32.store offset=20
                  local.get 1
                  local.get 3
                  i32.load offset=24
                  i32.store offset=24
                  local.get 1
                  local.get 3
                  i32.load offset=28
                  i32.store offset=28
                  local.get 1
                  local.get 3
                  i32.load offset=32
                  i32.store offset=32
                  local.get 1
                  local.get 3
                  i32.load offset=36
                  i32.store offset=36
                  local.get 1
                  local.get 3
                  i32.load offset=40
                  i32.store offset=40
                  local.get 1
                  local.get 3
                  i32.load offset=44
                  i32.store offset=44
                  local.get 1
                  local.get 3
                  i32.load offset=48
                  i32.store offset=48
                  local.get 1
                  local.get 3
                  i32.load offset=52
                  i32.store offset=52
                  local.get 1
                  local.get 3
                  i32.load offset=56
                  i32.store offset=56
                  local.get 1
                  local.get 3
                  i32.load offset=60
                  i32.store offset=60
                  local.get 3
                  i32.const -64
                  i32.sub
                  local.set 3
                  local.get 1
                  i32.const -64
                  i32.sub
                  local.tee 1
                  local.get 0
                  i32.le_u
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              local.get 6
              i32.ge_u
              br_if 1 (;@4;)
              loop  ;; label = @6
                local.get 1
                local.get 3
                i32.load
                i32.store
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 1
                i32.const 4
                i32.add
                local.tee 1
                local.get 6
                i32.lt_u
                br_if 0 (;@6;)
              end
              br 1 (;@4;)
            end
            local.get 5
            i32.const 4
            i32.lt_u
            if  ;; label = @5
              local.get 0
              local.set 1
              br 1 (;@4;)
            end
            local.get 0
            local.get 5
            i32.const 4
            i32.sub
            local.tee 6
            i32.gt_u
            if  ;; label = @5
              local.get 0
              local.set 1
              br 1 (;@4;)
            end
            local.get 0
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.get 3
              i32.load8_u
              i32.store8
              local.get 1
              local.get 3
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get 1
              local.get 3
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get 1
              local.get 3
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get 3
              i32.const 4
              i32.add
              local.set 3
              local.get 1
              i32.const 4
              i32.add
              local.tee 1
              local.get 6
              i32.le_u
              br_if 0 (;@5;)
            end
          end
          local.get 1
          local.get 5
          i32.lt_u
          if  ;; label = @4
            loop  ;; label = @5
              local.get 1
              local.get 3
              i32.load8_u
              i32.store8
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 1
              i32.const 1
              i32.add
              local.tee 1
              local.get 5
              i32.ne
              br_if 0 (;@5;)
            end
          end
        end
        local.get 4
        local.get 4
        i32.load offset=20
        local.get 2
        i32.add
        i32.store offset=20
      end
    end)
  (func (;14;) (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    i32.load8_s
    call 10
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    loop  ;; label = @1
      local.get 0
      i32.load
      local.set 3
      i32.const -1
      local.set 2
      local.get 1
      i32.const 214748364
      i32.le_u
      if  ;; label = @2
        i32.const -1
        local.get 3
        i32.load8_s
        i32.const 48
        i32.sub
        local.tee 2
        local.get 1
        i32.const 10
        i32.mul
        local.tee 1
        i32.add
        local.get 2
        local.get 1
        i32.const 2147483647
        i32.xor
        i32.gt_s
        select
        local.set 2
      end
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      i32.store
      local.get 2
      local.set 1
      local.get 3
      i32.load8_s offset=1
      call 10
      br_if 0 (;@1;)
    end
    local.get 1)
  (func (;15;) (type 1) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.const 9
                                          i32.sub
                                          br_table 0 (;@19;) 1 (;@18;) 2 (;@17;) 5 (;@14;) 3 (;@16;) 4 (;@15;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 17 (;@2;) 18 (;@1;)
                                        end
                                        local.get 2
                                        local.get 2
                                        i32.load
                                        local.tee 1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get 0
                                        local.get 1
                                        i32.load
                                        i32.store
                                        return
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 0
                                      local.get 1
                                      i64.load32_s
                                      i64.store
                                      return
                                    end
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 0
                                    local.get 1
                                    i64.load32_u
                                    i64.store
                                    return
                                  end
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 0
                                  local.get 1
                                  i64.load32_s
                                  i64.store
                                  return
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                local.tee 1
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 0
                                local.get 1
                                i64.load32_u
                                i64.store
                                return
                              end
                              local.get 2
                              local.get 2
                              i32.load
                              i32.const 7
                              i32.add
                              i32.const -8
                              i32.and
                              local.tee 1
                              i32.const 8
                              i32.add
                              i32.store
                              local.get 0
                              local.get 1
                              i64.load
                              i64.store
                              return
                            end
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 0
                            local.get 1
                            i64.load16_s
                            i64.store
                            return
                          end
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 0
                          local.get 1
                          i64.load16_u
                          i64.store
                          return
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i64.load8_s
                        i64.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load8_u
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    i32.const 7
                    i32.add
                    i32.const -8
                    i32.and
                    local.tee 1
                    i32.const 8
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load32_u
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee 1
                i32.const 8
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              i32.const 7
              i32.add
              i32.const -8
              i32.and
              local.tee 1
              i32.const 8
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load32_s
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load32_u
          i64.store
          return
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee 1
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 1
        f64.load
        f64.store
        return
      end
      unreachable
    end)
  (func (;16;) (type 9) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      i32.const 255
      i32.and
      local.get 2
      local.get 3
      i32.sub
      local.tee 3
      i32.const 256
      local.get 3
      i32.const 256
      i32.lt_u
      local.tee 2
      select
      call 8
      local.get 2
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 13
          local.get 3
          i32.const 256
          i32.sub
          local.tee 3
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 3
      call 13
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;17;) (type 0) (param i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 2712
    local.get 0
    i32.store
    i32.const -1)
  (func (;18;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 127
          i32.le_u
          br_if 1 (;@2;)
          block  ;; label = @4
            i32.const 2868
            i32.load
            i32.load
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const -128
              i32.and
              i32.const 57216
              i32.eq
              br_if 3 (;@2;)
              i32.const 2712
              i32.const 25
              i32.store
              br 1 (;@4;)
            end
            local.get 1
            i32.const 2047
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8
              i32.const 2
              br 4 (;@1;)
            end
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            local.get 1
            i32.const 55296
            i32.ge_u
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 3
              br 4 (;@1;)
            end
            local.get 1
            i32.const 65536
            i32.sub
            i32.const 1048575
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=3
              local.get 0
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 4
              br 4 (;@1;)
            end
            i32.const 2712
            i32.const 25
            i32.store
          end
          i32.const -1
        else
          i32.const 1
        end
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store8
      i32.const 1
    end)
  (func (;19;) (type 7) (result i32)
    global.get 0)
  (func (;20;) (type 5) (param i32)
    local.get 0
    global.set 0)
  (func (;21;) (type 0) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;22;) (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i64)
    local.get 1
    local.get 2
    i64.extend_i32_u
    local.get 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    i64.or
    local.get 4
    local.get 0
    call_indirect (type 6)
    local.tee 5
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    global.set 1
    local.get 5
    i32.wrap_i64)
  (table (;0;) 4 4 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 68448))
  (global (;1;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 2))
  (export "main" (func 3))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func 11))
  (export "stackSave" (func 19))
  (export "stackRestore" (func 20))
  (export "stackAlloc" (func 21))
  (export "dynCall_jiji" (func 22))
  (elem (;0;) (i32.const 1) func 6 5 7)
  (data (;0;) (i32.const 1024) "-+   0X0x\00(null)\00%d\0a")
  (data (;1;) (i32.const 1056) "\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19")
  (data (;2;) (i32.const 1137) "\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data (;3;) (i32.const 1195) "\0c")
  (data (;4;) (i32.const 1207) "\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;5;) (i32.const 1253) "\10")
  (data (;6;) (i32.const 1265) "\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data (;7;) (i32.const 1311) "\12")
  (data (;8;) (i32.const 1323) "\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data (;9;) (i32.const 1378) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data (;10;) (i32.const 1427) "\14")
  (data (;11;) (i32.const 1439) "\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data (;12;) (i32.const 1485) "\16")
  (data (;13;) (i32.const 1497) "\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data (;14;) (i32.const 1536) "\05")
  (data (;15;) (i32.const 1548) "\01")
  (data (;16;) (i32.const 1572) "\02\00\00\00\03\00\00\00\98\06\00\00\00\04")
  (data (;17;) (i32.const 1596) "\01")
  (data (;18;) (i32.const 1612) "\ff\ff\ff\ff\0a"))
