(module
 (type $iv (func (param i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $std/gc-integration/B.c i32 (i32.const 8))
 (global $std/gc-integration/B.d (mut i32) (i32.const 16))
 (global $std/gc-integration/no_ref (mut i32) (i32.const 64))
 (global $std/gc-integration/a_ref (mut i32) (i32.const 24))
 (global $std/gc-integration/b_ref (mut i32) (i32.const 32))
 (global $std/gc-integration/i (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 56))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $start~anonymous|0)
 (memory $0 1)
 (data (i32.const 8) "\15\00\00\00s\00t\00d\00/\00g\00c\00-\00i\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00.\00t\00s\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start~anonymous|0 (; 1 ;) (type $iv) (param $0 i32)
  (if
   (i32.eqz
    (i32.eq
     (get_local $0)
     (i32.shl
      (block (result i32)
       (set_global $std/gc-integration/i
        (i32.add
         (get_global $std/gc-integration/i)
         (i32.const 1)
        )
       )
       (get_global $std/gc-integration/i)
      )
      (i32.const 3)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 14)
     (i32.const 43)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 2 ;) (type $v)
  (drop
   (get_global $std/gc-integration/B.c)
  )
  (drop
   (get_global $std/gc-integration/B.d)
  )
  (block
   (call_indirect (type $iv)
    (get_global $std/gc-integration/B.c)
    (i32.const 0)
   )
   (call_indirect (type $iv)
    (get_global $std/gc-integration/B.d)
    (i32.const 0)
   )
   (call_indirect (type $iv)
    (get_global $std/gc-integration/a_ref)
    (i32.const 0)
   )
   (call_indirect (type $iv)
    (get_global $std/gc-integration/b_ref)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/gc-integration/i)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)