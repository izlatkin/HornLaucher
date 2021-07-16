(set-info :original "../sandbox/testgen_7/testgen_7.bc")
(set-info :authors "SeaHorn v.10.0.0-rc0")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel main@_loop.bound ())
(declare-rel main@empty.loop (Int Int Int ))
(declare-rel main@_.06 (Int Int Int Int Int ))
(declare-rel main@_ret ())
(declare-var main@%.06.off_0 Int )
(declare-var main@%_6_0 Bool )
(declare-var main@%_7_0 Int )
(declare-var main@%_or.cond_0 Bool )
(declare-var main@%or.cond_0 Bool )
(declare-var main@%not.or.cond.demorgan_0 Bool )
(declare-var main@%not.or.cond_0 Bool )
(declare-var main@%_.17_0 Int )
(declare-var main@%.17_0 Int )
(declare-var main@%_.1_0 Int )
(declare-var main@%_11_0 Int )
(declare-var main@%_12_0 Bool )
(declare-var main@%_or.cond3_0 Bool )
(declare-var main@%or.cond3_0 Bool )
(declare-var main@%_or.cond5_0 Bool )
(declare-var main@%or.cond5_0 Bool )
(declare-var main@%nd.loop.cond_0 Bool )
(declare-var main@%.06_2 Int )
(declare-var main@%.0_2 Int )
(declare-var main@%_call_0 Bool )
(declare-var main@%_call3_0 Bool )
(declare-var main@%_call4_0 Bool )
(declare-var main@_loop.bound_0 Bool )
(declare-var main@%loop.bound_0 Int )
(declare-var main@%loop.bound1_0 Int )
(declare-var main@%loop.bound2_0 Int )
(declare-var main@empty.loop_0 Bool )
(declare-var main@empty.loop.body_0 Bool )
(declare-var main@empty.loop_1 Bool )
(declare-var main@_.06_0 Bool )
(declare-var main@%.06_0 Int )
(declare-var main@%.0_0 Int )
(declare-var main@%.06_1 Int )
(declare-var main@%.0_1 Int )
(declare-var main@%.1_0 Int )
(declare-var main@%_br_0 Int )
(declare-var main@_.06_1 Bool )
(declare-var main@_ret_0 Bool )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule main@_loop.bound)
(rule (=> (and main@_loop.bound
         true
         (= main@%_call_0 (= main@%loop.bound_0 2000))
         main@%_call_0
         (= main@%_call3_0 (= main@%loop.bound1_0 1000))
         main@%_call3_0
         (= main@%_call4_0 (= main@%loop.bound2_0 100000))
         main@%_call4_0
         (=> main@empty.loop_0 (and main@empty.loop_0 main@_loop.bound_0))
         main@empty.loop_0)
    (main@empty.loop main@%loop.bound2_0 main@%loop.bound1_0 main@%loop.bound_0)))
(rule (=> (and (main@empty.loop main@%loop.bound2_0
                          main@%loop.bound1_0
                          main@%loop.bound_0)
         true
         (=> main@empty.loop.body_0
             (and main@empty.loop.body_0 main@empty.loop_0))
         (=> (and main@empty.loop.body_0 main@empty.loop_0)
             main@%nd.loop.cond_0)
         (=> main@empty.loop_1 (and main@empty.loop_1 main@empty.loop.body_0))
         main@empty.loop_1)
    (main@empty.loop main@%loop.bound2_0 main@%loop.bound1_0 main@%loop.bound_0)))
(rule (=> (and (main@empty.loop main@%loop.bound2_0
                          main@%loop.bound1_0
                          main@%loop.bound_0)
         true
         (=> main@_.06_0 (and main@_.06_0 main@empty.loop_0))
         (=> (and main@_.06_0 main@empty.loop_0) (not main@%nd.loop.cond_0))
         (=> (and main@_.06_0 main@empty.loop_0) (= main@%.06_0 38629))
         (=> (and main@_.06_0 main@empty.loop_0) (= main@%.0_0 51985))
         (=> (and main@_.06_0 main@empty.loop_0) (= main@%.06_1 main@%.06_0))
         (=> (and main@_.06_0 main@empty.loop_0) (= main@%.0_1 main@%.0_0))
         main@_.06_0)
    (main@_.06 main@%.06_1
               main@%.0_1
               main@%loop.bound2_0
               main@%loop.bound1_0
               main@%loop.bound_0)))
(rule (let ((a!1 (and (main@_.06 main@%.06_0
                           main@%.0_0
                           main@%loop.bound2_0
                           main@%loop.bound1_0
                           main@%loop.bound_0)
                true
                (= main@%.06.off_0 (+ main@%.06_0 (- 2)))
                (= main@%_6_0
                   (ite (>= main@%.06.off_0 0) (< 2 main@%.06.off_0) true))
                (= main@%_7_0 (rem main@%.06_0 3))
                (= main@%_or.cond_0 (= main@%_7_0 1))
                (= main@%or.cond_0 (or main@%_6_0 main@%_or.cond_0))
                (= main@%not.or.cond.demorgan_0
                   (or main@%_6_0 main@%_or.cond_0))
                (= main@%not.or.cond_0 (xor main@%not.or.cond.demorgan_0 true))
                (= main@%_.17_0 (ite main@%not.or.cond_0 1 0))
                (= main@%.17_0 (+ main@%.06_0 main@%_.17_0))
                (= main@%_.1_0 (ite main@%or.cond_0 1 0))
                (= main@%.1_0 (+ main@%.0_0 main@%_.1_0))
                (= main@%_11_0 (+ main@%.17_0 main@%.1_0))
                (= main@%_12_0 (= main@%_11_0 main@%loop.bound2_0))
                (= main@%_or.cond3_0 (> main@%.17_0 main@%loop.bound1_0))
                (= main@%or.cond3_0 (and main@%_or.cond3_0 main@%_12_0))
                (= main@%_or.cond5_0 (> main@%.1_0 main@%loop.bound_0))
                (= main@%or.cond5_0 (and main@%_or.cond5_0 main@%or.cond3_0))
                (= main@%_br_0 (+ main@%.17_0 1))
                (=> main@_.06_1 (and main@_.06_1 main@_.06_0))
                (=> (and main@_.06_1 main@_.06_0) (not main@%or.cond5_0))
                (=> (and main@_.06_1 main@_.06_0) (= main@%.06_1 main@%_br_0))
                (=> (and main@_.06_1 main@_.06_0) (= main@%.0_1 main@%.1_0))
                (=> (and main@_.06_1 main@_.06_0) (= main@%.06_2 main@%.06_1))
                (=> (and main@_.06_1 main@_.06_0) (= main@%.0_2 main@%.0_1))
                main@_.06_1)))
  (=> a!1
      (main@_.06 main@%.06_2
                 main@%.0_2
                 main@%loop.bound2_0
                 main@%loop.bound1_0
                 main@%loop.bound_0))))
(rule (let ((a!1 (and (main@_.06 main@%.06_0
                           main@%.0_0
                           main@%loop.bound2_0
                           main@%loop.bound1_0
                           main@%loop.bound_0)
                true
                (= main@%.06.off_0 (+ main@%.06_0 (- 2)))
                (= main@%_6_0
                   (ite (>= main@%.06.off_0 0) (< 2 main@%.06.off_0) true))
                (= main@%_7_0 (rem main@%.06_0 3))
                (= main@%_or.cond_0 (= main@%_7_0 1))
                (= main@%or.cond_0 (or main@%_6_0 main@%_or.cond_0))
                (= main@%not.or.cond.demorgan_0
                   (or main@%_6_0 main@%_or.cond_0))
                (= main@%not.or.cond_0 (xor main@%not.or.cond.demorgan_0 true))
                (= main@%_.17_0 (ite main@%not.or.cond_0 1 0))
                (= main@%.17_0 (+ main@%.06_0 main@%_.17_0))
                (= main@%_.1_0 (ite main@%or.cond_0 1 0))
                (= main@%.1_0 (+ main@%.0_0 main@%_.1_0))
                (= main@%_11_0 (+ main@%.17_0 main@%.1_0))
                (= main@%_12_0 (= main@%_11_0 main@%loop.bound2_0))
                (= main@%_or.cond3_0 (> main@%.17_0 main@%loop.bound1_0))
                (= main@%or.cond3_0 (and main@%_or.cond3_0 main@%_12_0))
                (= main@%_or.cond5_0 (> main@%.1_0 main@%loop.bound_0))
                (= main@%or.cond5_0 (and main@%_or.cond5_0 main@%or.cond3_0))
                (= main@%_br_0 (+ main@%.17_0 1))
                (=> main@_ret_0 (and main@_ret_0 main@_.06_0))
                (=> (and main@_ret_0 main@_.06_0) main@%or.cond5_0)
                main@_ret_0)))
  (=> a!1 main@_ret)))
(query main@_ret)

