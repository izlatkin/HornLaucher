(set-info :original "../sandbox/testgen_4/testgen_4.bc")
(set-info :authors "SeaHorn v.10.0.0-rc0")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel main@_tail ())
(declare-rel main@.split ())
(declare-var main@_tail_0 Bool )
(declare-var main@.split_0 Bool )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule main@_tail)
(rule (=> (and main@_tail
         true
         (=> main@.split_0 (and main@.split_0 main@_tail_0))
         main@.split_0)
    main@.split))
(query main@.split)

