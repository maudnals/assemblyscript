(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $i (func (result i32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $function-expression/f1 (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 1))
 (global $function-expression/f3 (mut i32) (i32.const 2))
 (global $function-expression/f4 (mut i32) (i32.const 3))
 (global $HEAP_BASE i32 (i32.const 52))
 (table 4 4 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~someName|2 $start~anonymous|3)
 (memory $0 1)
 (data (i32.const 4) "\16\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start~anonymous|0 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $start~anonymous|1 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $start~someName|2 (; 3 ;) (type $v)
 )
 (func $start~anonymous|3 (; 4 ;) (type $i) (result i32)
  (i32.const 1)
 )
 (func $start (; 5 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call_indirect (type $ii)
      (i32.const 1)
      (get_global $function-expression/f1)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call_indirect (type $ii)
      (i32.const 2)
      (get_global $function-expression/f2)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call_indirect (type $v)
   (get_global $function-expression/f3)
  )
  (if
   (i32.eqz
    (i32.eq
     (call_indirect (type $i)
      (get_global $function-expression/f4)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)