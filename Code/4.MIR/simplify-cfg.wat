(func $foo 
  (param $operand i32) (result i32)
  block  ;; label = @1
    block  ;; label = @2
      local.get $operand
      i32.const 2
      i32.rem_s
      i32.eqz
      if  ;; label = @3
        br 1 (;@2;)
      else
        br 2 (;@1;)
      end
    end
    i32.const 1
    return
  end
  i32.const 0)