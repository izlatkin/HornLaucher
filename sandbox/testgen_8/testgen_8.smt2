(set-info :original "testgen.tmp3.bc")
(set-info :authors "SeaHorn v.10.0.0-rc0")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel main@_loop.bound ())
(declare-rel main@_.04 (Int Int Int Int ))
(declare-rel main@_15 (Int Int Int Int ))
(declare-rel main@_ret ())
(declare-rel main@empty.loop (Int Int Int Int ))
(declare-rel main@empty.loop.body (Int Int Int Int ))
(declare-var main@%_9_0 Bool )
(declare-var main@%_or.cond_0 Bool )
(declare-var main@%or.cond_0 Bool )
(declare-var main@%not.or.cond.demorgan_0 Bool )
(declare-var main@%not.or.cond_0 Bool )
(declare-var main@%_.15_0 Int )
(declare-var main@%_.1_0 Int )
(declare-var main@%_13_0 Bool )
(declare-var main@%_or.cond3_0 Bool )
(declare-var main@%or.cond3_0 Bool )
(declare-var main@%nd.loop.cond_0 Bool )
(declare-var main@%_call_0 Bool )
(declare-var main@%_call2_0 Bool )
(declare-var main@%_4_0 Int )
(declare-var main@%_6_0 Int )
(declare-var main@%loop.bound_0 Int )
(declare-var main@%loop.bound1_0 Int )
(declare-var main@%_call3_0 Int )
(declare-var main@%_br_0 Int )
(declare-var main@%.04_0 Int )
(declare-var main@%.0_0 Int )
(declare-var main@%.15_0 Int )
(declare-var main@%.1_0 Int )
(declare-var main@%_br4_0 Int )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule main@_loop.bound)
(rule (=> (and main@_loop.bound
         true
         (= main@%_call_0 (= main@%loop.bound_0 10))
         main@%_call_0
         (= main@%_call2_0 (= main@%loop.bound1_0 20))
         main@%_call2_0
         (= main@%_call3_0 (+ main@%_4_0 4904))
         (= main@%_br_0 (+ main@%_6_0 4924)))
    (main@empty.loop main@%loop.bound_0
                     main@%loop.bound1_0
                     main@%_call3_0
                     main@%_br_0)))
(rule (=> (and (main@_.04 main@%.04_0
                    main@%.0_0
                    main@%loop.bound_0
                    main@%loop.bound1_0)
         true
         (= main@%_9_0 (> main@%.04_0 1))
         (= main@%_or.cond_0 (> main@%.0_0 2))
         (= main@%or.cond_0 (or main@%_9_0 main@%_or.cond_0))
         (= main@%not.or.cond.demorgan_0 (or main@%_9_0 main@%_or.cond_0))
         (= main@%not.or.cond_0 (xor main@%not.or.cond.demorgan_0 true))
         (= main@%_.15_0 (ite main@%not.or.cond_0 1 0))
         (= main@%.15_0 (+ main@%.04_0 main@%_.15_0))
         (= main@%_.1_0 (ite main@%or.cond_0 1 0))
         (= main@%.1_0 (+ main@%.0_0 main@%_.1_0))
         (= main@%_13_0 (> main@%.15_0 main@%loop.bound_0))
         (= main@%_or.cond3_0 (> main@%.1_0 main@%loop.bound1_0))
         (= main@%or.cond3_0 (or main@%_13_0 main@%_or.cond3_0))
         main@%or.cond3_0)
    main@_ret))
(rule (=> (and (main@_.04 main@%.04_0
                    main@%.0_0
                    main@%loop.bound_0
                    main@%loop.bound1_0)
         true
         (= main@%_9_0 (> main@%.04_0 1))
         (= main@%_or.cond_0 (> main@%.0_0 2))
         (= main@%or.cond_0 (or main@%_9_0 main@%_or.cond_0))
         (= main@%not.or.cond.demorgan_0 (or main@%_9_0 main@%_or.cond_0))
         (= main@%not.or.cond_0 (xor main@%not.or.cond.demorgan_0 true))
         (= main@%_.15_0 (ite main@%not.or.cond_0 1 0))
         (= main@%.15_0 (+ main@%.04_0 main@%_.15_0))
         (= main@%_.1_0 (ite main@%or.cond_0 1 0))
         (= main@%.1_0 (+ main@%.0_0 main@%_.1_0))
         (= main@%_13_0 (> main@%.15_0 main@%loop.bound_0))
         (= main@%_or.cond3_0 (> main@%.1_0 main@%loop.bound1_0))
         (= main@%or.cond3_0 (or main@%_13_0 main@%_or.cond3_0))
         (not main@%or.cond3_0))
    (main@_15 main@%.15_0 main@%.1_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_15 main@%.15_0
                   main@%.1_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_br4_0 (+ main@%.15_0 1))
         (= main@%.04_0 main@%_br4_0)
         (= main@%.0_0 main@%.1_0))
    (main@_.04 main@%.04_0 main@%.0_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@empty.loop main@%loop.bound_0
                          main@%loop.bound1_0
                          main@%_call3_0
                          main@%_br_0)
         true
         main@%nd.loop.cond_0)
    (main@empty.loop.body
      main@%loop.bound_0
      main@%loop.bound1_0
      main@%_call3_0
      main@%_br_0)))
(rule (=> (and (main@empty.loop main@%loop.bound_0
                          main@%loop.bound1_0
                          main@%_call3_0
                          main@%_br_0)
         true
         (not main@%nd.loop.cond_0)
         (= main@%.04_0 main@%_call3_0)
         (= main@%.0_0 main@%_br_0))
    (main@_.04 main@%.04_0 main@%.0_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (main@empty.loop.body
      main@%loop.bound_0
      main@%loop.bound1_0
      main@%_call3_0
      main@%_br_0)
    (main@empty.loop main@%loop.bound_0
                     main@%loop.bound1_0
                     main@%_call3_0
                     main@%_br_0)))
(query main@_ret)

