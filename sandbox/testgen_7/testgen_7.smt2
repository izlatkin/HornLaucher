(set-info :original "testgen.tmp3.bc")
(set-info :authors "SeaHorn v.10.0.0-rc0")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel main@_loop.bound ())
(declare-rel main@_.06 (Int Int Int Int Int ))
(declare-rel main@_19 (Int Int Int Int Int ))
(declare-rel main@_ret ())
(declare-rel main@empty.loop (Int Int Int Int Int ))
(declare-rel main@empty.loop.body (Int Int Int Int Int ))
(declare-var main@%.06.off_0 Int )
(declare-var main@%_10_0 Bool )
(declare-var main@%_11_0 Int )
(declare-var main@%_or.cond_0 Bool )
(declare-var main@%or.cond_0 Bool )
(declare-var main@%not.or.cond.demorgan_0 Bool )
(declare-var main@%not.or.cond_0 Bool )
(declare-var main@%_.17_0 Int )
(declare-var main@%_.1_0 Int )
(declare-var main@%_15_0 Int )
(declare-var main@%_16_0 Bool )
(declare-var main@%_or.cond3_0 Bool )
(declare-var main@%or.cond3_0 Bool )
(declare-var main@%_or.cond5_0 Bool )
(declare-var main@%or.cond5_0 Bool )
(declare-var main@%nd.loop.cond_0 Bool )
(declare-var main@%_call_0 Bool )
(declare-var main@%_call3_0 Bool )
(declare-var main@%_call4_0 Bool )
(declare-var main@%_5_0 Int )
(declare-var main@%_7_0 Int )
(declare-var main@%loop.bound_0 Int )
(declare-var main@%loop.bound1_0 Int )
(declare-var main@%loop.bound2_0 Int )
(declare-var main@%_call5_0 Int )
(declare-var main@%_br_0 Int )
(declare-var main@%.06_0 Int )
(declare-var main@%.0_0 Int )
(declare-var main@%.17_0 Int )
(declare-var main@%.1_0 Int )
(declare-var main@%_br6_0 Int )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule main@_loop.bound)
(rule (=> (and main@_loop.bound
         true
         (= main@%_call_0 (= main@%loop.bound_0 100000))
         main@%_call_0
         (= main@%_call3_0 (= main@%loop.bound1_0 1000))
         main@%_call3_0
         (= main@%_call4_0 (= main@%loop.bound2_0 2000))
         main@%_call4_0
         (= main@%_call5_0 (+ main@%_5_0 4904))
         (= main@%_br_0 (+ main@%_7_0 4924)))
    (main@empty.loop main@%loop.bound_0
                     main@%loop.bound1_0
                     main@%loop.bound2_0
                     main@%_call5_0
                     main@%_br_0)))
(rule (let ((a!1 (and (main@_.06 main@%.06_0
                           main@%.0_0
                           main@%loop.bound_0
                           main@%loop.bound1_0
                           main@%loop.bound2_0)
                true
                (= main@%.06.off_0 (+ main@%.06_0 (- 2)))
                (= main@%_10_0
                   (ite (>= main@%.06.off_0 0) (< 2 main@%.06.off_0) true))
                (= main@%_11_0 (rem main@%.06_0 3))
                (= main@%_or.cond_0 (= main@%_11_0 1))
                (= main@%or.cond_0 (or main@%_10_0 main@%_or.cond_0))
                (= main@%not.or.cond.demorgan_0
                   (or main@%_10_0 main@%_or.cond_0))
                (= main@%not.or.cond_0 (xor main@%not.or.cond.demorgan_0 true))
                (= main@%_.17_0 (ite main@%not.or.cond_0 1 0))
                (= main@%.17_0 (+ main@%.06_0 main@%_.17_0))
                (= main@%_.1_0 (ite main@%or.cond_0 1 0))
                (= main@%.1_0 (+ main@%.0_0 main@%_.1_0))
                (= main@%_15_0 (+ main@%.17_0 main@%.1_0))
                (= main@%_16_0 (= main@%_15_0 main@%loop.bound_0))
                (= main@%_or.cond3_0 (> main@%.17_0 main@%loop.bound1_0))
                (= main@%or.cond3_0 (and main@%_16_0 main@%_or.cond3_0))
                (= main@%_or.cond5_0 (> main@%.1_0 main@%loop.bound2_0))
                (= main@%or.cond5_0 (and main@%or.cond3_0 main@%_or.cond5_0))
                main@%or.cond5_0)))
  (=> a!1 main@_ret)))
(rule (let ((a!1 (and (main@_.06 main@%.06_0
                           main@%.0_0
                           main@%loop.bound_0
                           main@%loop.bound1_0
                           main@%loop.bound2_0)
                true
                (= main@%.06.off_0 (+ main@%.06_0 (- 2)))
                (= main@%_10_0
                   (ite (>= main@%.06.off_0 0) (< 2 main@%.06.off_0) true))
                (= main@%_11_0 (rem main@%.06_0 3))
                (= main@%_or.cond_0 (= main@%_11_0 1))
                (= main@%or.cond_0 (or main@%_10_0 main@%_or.cond_0))
                (= main@%not.or.cond.demorgan_0
                   (or main@%_10_0 main@%_or.cond_0))
                (= main@%not.or.cond_0 (xor main@%not.or.cond.demorgan_0 true))
                (= main@%_.17_0 (ite main@%not.or.cond_0 1 0))
                (= main@%.17_0 (+ main@%.06_0 main@%_.17_0))
                (= main@%_.1_0 (ite main@%or.cond_0 1 0))
                (= main@%.1_0 (+ main@%.0_0 main@%_.1_0))
                (= main@%_15_0 (+ main@%.17_0 main@%.1_0))
                (= main@%_16_0 (= main@%_15_0 main@%loop.bound_0))
                (= main@%_or.cond3_0 (> main@%.17_0 main@%loop.bound1_0))
                (= main@%or.cond3_0 (and main@%_16_0 main@%_or.cond3_0))
                (= main@%_or.cond5_0 (> main@%.1_0 main@%loop.bound2_0))
                (= main@%or.cond5_0 (and main@%or.cond3_0 main@%_or.cond5_0))
                (not main@%or.cond5_0))))
  (=> a!1
      (main@_19 main@%.17_0
                main@%.1_0
                main@%loop.bound_0
                main@%loop.bound1_0
                main@%loop.bound2_0))))
(rule (=> (and (main@_19 main@%.17_0
                   main@%.1_0
                   main@%loop.bound_0
                   main@%loop.bound1_0
                   main@%loop.bound2_0)
         true
         (= main@%_br6_0 (+ main@%.17_0 1))
         (= main@%.06_0 main@%_br6_0)
         (= main@%.0_0 main@%.1_0))
    (main@_.06 main@%.06_0
               main@%.0_0
               main@%loop.bound_0
               main@%loop.bound1_0
               main@%loop.bound2_0)))
(rule (=> (and (main@empty.loop main@%loop.bound_0
                          main@%loop.bound1_0
                          main@%loop.bound2_0
                          main@%_call5_0
                          main@%_br_0)
         true
         main@%nd.loop.cond_0)
    (main@empty.loop.body
      main@%loop.bound_0
      main@%loop.bound1_0
      main@%loop.bound2_0
      main@%_call5_0
      main@%_br_0)))
(rule (=> (and (main@empty.loop main@%loop.bound_0
                          main@%loop.bound1_0
                          main@%loop.bound2_0
                          main@%_call5_0
                          main@%_br_0)
         true
         (not main@%nd.loop.cond_0)
         (= main@%.06_0 main@%_call5_0)
         (= main@%.0_0 main@%_br_0))
    (main@_.06 main@%.06_0
               main@%.0_0
               main@%loop.bound_0
               main@%loop.bound1_0
               main@%loop.bound2_0)))
(rule (=> (main@empty.loop.body
      main@%loop.bound_0
      main@%loop.bound1_0
      main@%loop.bound2_0
      main@%_call5_0
      main@%_br_0)
    (main@empty.loop main@%loop.bound_0
                     main@%loop.bound1_0
                     main@%loop.bound2_0
                     main@%_call5_0
                     main@%_br_0)))
(query main@_ret)

