(type $t0 (func (param i32 i32) (result i32)))  
(func $adler32 (export "adler32") (type $t0)
    (local $l0 i32) (local $l1 i32)
    get_local $p1
    if $I0
      (set_local $l1 (i32.const 1))
      loop $L1
        (i32.rem_u
          (i32.add
            (get_local $l1) 
            (i32.load8_u (get_local $p0)))
          (i32.const 65521))
        ... ...
      end
      (i32.or
        (i32.shl (get_local $l0) (i32.const 16))
        (get_local $l1))
      return
    end
    i32.const 1)
(memory $memory (export "memory") 2)