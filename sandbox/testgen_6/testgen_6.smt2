(set-info :original "testgen.tmp3.bc")
(set-info :authors "SeaHorn v.10.0.0-rc0")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel main@_loop.bound ())
(declare-rel main@_.01 (Int Int Int Int ))
(declare-rel main@_10 (Int Int Int Int ))
(declare-rel main@_12 (Int Int Int Int ))
(declare-rel main@_16 (Int Int Int Int ))
(declare-rel main@_.1 (Int Int Int Int ))
(declare-rel main@_23 (Int Int Int Int ))
(declare-rel main@_ret ())
(declare-rel main@empty.loop (Int Int Int Int ))
(declare-rel main@empty.loop.body (Int Int Int Int ))
(declare-var main@%_19_0 Int )
(declare-var main@%_20_0 Bool )
(declare-var main@%_21_0 Int )
(declare-var main@%_or.cond_0 Bool )
(declare-var main@%or.cond_0 Bool )
(declare-var main@%_13_0 Int )
(declare-var main@%_14_0 Int )
(declare-var main@%_br6_0 Bool )
(declare-var main@%_br5_0 Bool )
(declare-var main@%_br4_0 Bool )
(declare-var main@%nd.loop.cond_0 Bool )
(declare-var main@%_call_0 Bool )
(declare-var main@%_call2_0 Bool )
(declare-var main@%_4_0 Int )
(declare-var main@%_6_0 Int )
(declare-var main@%loop.bound_0 Int )
(declare-var main@%loop.bound1_0 Int )
(declare-var main@%_call3_0 Int )
(declare-var main@%_br_0 Int )
(declare-var main@%.01_0 Int )
(declare-var main@%.0_0 Int )
(declare-var main@%.1_0 Int )
(declare-var main@%_br7_0 Int )
(declare-var main@%_br8_0 Int )
(declare-var main@%.01_1 Int )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule main@_loop.bound)
(rule (=> (and main@_loop.bound
         true
         (= main@%_call_0 (= main@%loop.bound_0 100000))
         main@%_call_0
         (= main@%_call2_0 (= main@%loop.bound1_0 (- 5000)))
         main@%_call2_0
         (= main@%_call3_0 (+ main@%_4_0 4904))
         (= main@%_br_0 (+ main@%_6_0 4924)))
    (main@empty.loop main@%loop.bound_0
                     main@%loop.bound1_0
                     main@%_call3_0
                     main@%_br_0)))
(rule (=> (and (main@_.01 main@%.01_0
                    main@%.0_0
                    main@%loop.bound_0
                    main@%loop.bound1_0)
         true
         (= main@%_br4_0 (> main@%.01_0 4))
         main@%_br4_0)
    (main@_16 main@%.01_0 main@%.0_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_.01 main@%.01_0
                    main@%.0_0
                    main@%loop.bound_0
                    main@%loop.bound1_0)
         true
         (= main@%_br4_0 (> main@%.01_0 4))
         (not main@%_br4_0))
    (main@_10 main@%.01_0 main@%.0_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_10 main@%.01_0
                   main@%.0_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_br5_0 (= main@%.0_0 0))
         main@%_br5_0)
    (main@_12 main@%.01_0 main@%.0_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_10 main@%.01_0
                   main@%.0_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_br5_0 (= main@%.0_0 0))
         (not main@%_br5_0)
         (= main@%.1_0 main@%.0_0))
    (main@_.1 main@%.01_0 main@%.1_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_12 main@%.01_0
                   main@%.0_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_13_0 (+ main@%.01_0 main@%.0_0))
         (= main@%_14_0 (rem main@%_13_0 2))
         (= main@%_br6_0 (= main@%_14_0 1))
         main@%_br6_0)
    (main@_16 main@%.01_0 main@%.0_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_12 main@%.01_0
                   main@%.0_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_13_0 (+ main@%.01_0 main@%.0_0))
         (= main@%_14_0 (rem main@%_13_0 2))
         (= main@%_br6_0 (= main@%_14_0 1))
         (not main@%_br6_0)
         (= main@%.1_0 main@%.0_0))
    (main@_.1 main@%.01_0 main@%.1_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_16 main@%.01_0
                   main@%.0_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_br7_0 (+ main@%.0_0 1))
         (= main@%.1_0 main@%_br7_0))
    (main@_.1 main@%.01_0 main@%.1_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_.1 main@%.01_0
                   main@%.1_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_19_0 (+ main@%.01_0 main@%.1_0))
         (= main@%_20_0 (= main@%_19_0 main@%loop.bound_0))
         (= main@%_21_0 (+ main@%.01_0 main@%.1_0))
         (= main@%_or.cond_0 (= main@%_21_0 main@%loop.bound1_0))
         (= main@%or.cond_0 (or main@%_20_0 main@%_or.cond_0))
         main@%or.cond_0)
    main@_ret))
(rule (=> (and (main@_.1 main@%.01_0
                   main@%.1_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_19_0 (+ main@%.01_0 main@%.1_0))
         (= main@%_20_0 (= main@%_19_0 main@%loop.bound_0))
         (= main@%_21_0 (+ main@%.01_0 main@%.1_0))
         (= main@%_or.cond_0 (= main@%_21_0 main@%loop.bound1_0))
         (= main@%or.cond_0 (or main@%_20_0 main@%_or.cond_0))
         (not main@%or.cond_0))
    (main@_23 main@%.01_0 main@%.1_0 main@%loop.bound_0 main@%loop.bound1_0)))
(rule (=> (and (main@_23 main@%.01_0
                   main@%.1_0
                   main@%loop.bound_0
                   main@%loop.bound1_0)
         true
         (= main@%_br8_0 (+ main@%.01_0 1))
         (= main@%.01_1 main@%_br8_0)
         (= main@%.0_0 main@%.1_0))
    (main@_.01 main@%.01_1 main@%.0_0 main@%loop.bound_0 main@%loop.bound1_0)))
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
         (= main@%.01_0 main@%_call3_0)
         (= main@%.0_0 main@%_br_0))
    (main@_.01 main@%.01_0 main@%.0_0 main@%loop.bound_0 main@%loop.bound1_0)))
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

