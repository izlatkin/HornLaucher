(set-info :original "../sandbox/testgen_2/testgen_2.bc")
(set-info :authors "SeaHorn v.10.0.0-rc0")
(declare-rel verifier.error (Bool Bool Bool ))
(declare-rel main@_loop.bound ())
(declare-rel main@.lr.ph (Int Int Int Int Int ))
(declare-rel main@._crit_edge ())
(declare-var main@%_7_0 Int )
(declare-var main@%_br1_0 Bool )
(declare-var main@%_br3_0 Bool )
(declare-var main@%_13_0 Bool )
(declare-var main@%_spec.select_0 Int )
(declare-var main@%.210_2 Int )
(declare-var main@%_9_0 Bool )
(declare-var main@%_.14_0 Int )
(declare-var main@%not._0 Bool )
(declare-var main@%_.12_0 Int )
(declare-var main@%_br2_0 Bool )
(declare-var main@%_call_0 Bool )
(declare-var main@%_tail_0 Int )
(declare-var main@%_br_0 Bool )
(declare-var main@%.012_2 Int )
(declare-var main@%.031_2 Int )
(declare-var main@_loop.bound_0 Bool )
(declare-var main@%loop.bound_0 Int )
(declare-var main@%_4_0 Int )
(declare-var main@.lr.ph_0 Bool )
(declare-var main@%.04_0 Int )
(declare-var main@%.012_0 Int )
(declare-var main@%.031_0 Int )
(declare-var main@%.04_1 Int )
(declare-var main@%.012_1 Int )
(declare-var main@%.031_1 Int )
(declare-var main@._crit_edge_0 Bool )
(declare-var main@%.14_0 Int )
(declare-var main@%.12_0 Int )
(declare-var main@.thread_0 Bool )
(declare-var main@%spec.select_0 Int )
(declare-var main@%spec.select6_0 Int )
(declare-var main@_15_0 Bool )
(declare-var main@%_16_0 Int )
(declare-var main@_.111_0 Bool )
(declare-var |tuple(main@_15_0, main@_.111_0)| Bool )
(declare-var main@%.111_0 Int )
(declare-var main@%.210_0 Int )
(declare-var main@%.259_0 Int )
(declare-var main@%.111_1 Int )
(declare-var main@%.210_1 Int )
(declare-var main@%.259_1 Int )
(declare-var main@%.111_2 Int )
(declare-var main@%.259_2 Int )
(declare-var main@.lr.ph_1 Bool )
(declare-var main@%.04_2 Int )
(declare-var |tuple(main@_.111_0, main@._crit_edge_0)| Bool )
(declare-var |tuple(main@_15_0, main@._crit_edge_0)| Bool )
(rule (verifier.error false false false))
(rule (verifier.error false true true))
(rule (verifier.error true false true))
(rule (verifier.error true true true))
(rule main@_loop.bound)
(rule (=> (and main@_loop.bound
         true
         (= main@%_call_0 (= main@%loop.bound_0 0))
         main@%_call_0
         (= main@%_4_0 (+ main@%_tail_0 16319))
         (= main@%_br_0 (= main@%_4_0 137938))
         (=> main@.lr.ph_0 (and main@.lr.ph_0 main@_loop.bound_0))
         (=> (and main@.lr.ph_0 main@_loop.bound_0) (not main@%_br_0))
         (=> (and main@.lr.ph_0 main@_loop.bound_0) (= main@%.04_0 58672))
         (=> (and main@.lr.ph_0 main@_loop.bound_0) (= main@%.012_0 98844))
         (=> (and main@.lr.ph_0 main@_loop.bound_0) (= main@%.031_0 79266))
         (=> (and main@.lr.ph_0 main@_loop.bound_0) (= main@%.04_1 main@%.04_0))
         (=> (and main@.lr.ph_0 main@_loop.bound_0)
             (= main@%.012_1 main@%.012_0))
         (=> (and main@.lr.ph_0 main@_loop.bound_0)
             (= main@%.031_1 main@%.031_0))
         main@.lr.ph_0)
    (main@.lr.ph main@%_4_0
                 main@%.04_1
                 main@%.012_1
                 main@%.031_1
                 main@%loop.bound_0)))
(rule (=> (and main@_loop.bound
         true
         (= main@%_call_0 (= main@%loop.bound_0 0))
         main@%_call_0
         (= main@%_4_0 (+ main@%_tail_0 16319))
         (= main@%_br_0 (= main@%_4_0 137938))
         (=> main@._crit_edge_0 (and main@._crit_edge_0 main@_loop.bound_0))
         (=> (and main@._crit_edge_0 main@_loop.bound_0) main@%_br_0)
         main@._crit_edge_0)
    main@._crit_edge))
(rule (let ((a!1 (and (main@.lr.ph main@%_4_0
                             main@%.04_0
                             main@%.012_0
                             main@%.031_0
                             main@%loop.bound_0)
                true
                (= main@%_9_0 (> main@%.012_0 4))
                (= main@%_.14_0 (ite main@%_9_0 1 0))
                (= main@%.14_0 (+ main@%.031_0 main@%_.14_0))
                (= main@%not._0 (xor main@%_9_0 true))
                (= main@%_.12_0 (ite main@%not._0 1 0))
                (= main@%.12_0 (+ main@%.012_0 main@%_.12_0))
                (= main@%_br2_0 (< main@%.14_0 6))
                (=> main@.thread_0 (and main@.thread_0 main@.lr.ph_0))
                (=> (and main@.thread_0 main@.lr.ph_0) (not main@%_br2_0))
                (=> main@.thread_0 (= main@%_13_0 (> main@%.12_0 main@%.14_0)))
                (=> main@.thread_0
                    (= main@%_spec.select_0 (ite main@%_13_0 1 0)))
                (=> main@.thread_0
                    (= main@%spec.select_0 (+ main@%.14_0 main@%_spec.select_0)))
                (=> main@.thread_0
                    (= main@%spec.select6_0 (ite main@%_13_0 main@%.12_0 0)))
                (=> main@_15_0 (and main@_15_0 main@.lr.ph_0))
                (=> (and main@_15_0 main@.lr.ph_0) main@%_br2_0)
                (=> main@_15_0 (= main@%_16_0 (+ main@%.04_0 1)))
                (=> main@_15_0
                    (= main@%_br3_0 (= main@%_16_0 main@%loop.bound_0)))
                (=> |tuple(main@_15_0, main@_.111_0)| main@_15_0)
                (=> main@_.111_0
                    (or (and main@_.111_0 main@.thread_0)
                        |tuple(main@_15_0, main@_.111_0)|))
                (=> |tuple(main@_15_0, main@_.111_0)| (not main@%_br3_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.111_0 main@%.04_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.210_0 main@%spec.select6_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.259_0 main@%spec.select_0))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.111_1 main@%_16_0))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.210_1 main@%.12_0))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.259_1 main@%.14_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.111_2 main@%.111_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.210_2 main@%.210_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.259_2 main@%.259_0))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.111_2 main@%.111_1))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.210_2 main@%.210_1))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.259_2 main@%.259_1))
                (=> main@_.111_0 (= main@%_7_0 (+ main@%.111_2 main@%.259_2)))
                (=> main@_.111_0 (= main@%_br1_0 (= main@%_4_0 main@%_7_0)))
                (=> main@.lr.ph_1 (and main@.lr.ph_1 main@_.111_0))
                (=> (and main@.lr.ph_1 main@_.111_0) (not main@%_br1_0))
                (=> (and main@.lr.ph_1 main@_.111_0)
                    (= main@%.04_1 main@%.111_2))
                (=> (and main@.lr.ph_1 main@_.111_0)
                    (= main@%.012_1 main@%.210_2))
                (=> (and main@.lr.ph_1 main@_.111_0)
                    (= main@%.031_1 main@%.259_2))
                (=> (and main@.lr.ph_1 main@_.111_0)
                    (= main@%.04_2 main@%.04_1))
                (=> (and main@.lr.ph_1 main@_.111_0)
                    (= main@%.012_2 main@%.012_1))
                (=> (and main@.lr.ph_1 main@_.111_0)
                    (= main@%.031_2 main@%.031_1))
                main@.lr.ph_1)))
  (=> a!1
      (main@.lr.ph main@%_4_0
                   main@%.04_2
                   main@%.012_2
                   main@%.031_2
                   main@%loop.bound_0))))
(rule (let ((a!1 (and (main@.lr.ph main@%_4_0
                             main@%.04_0
                             main@%.012_0
                             main@%.031_0
                             main@%loop.bound_0)
                true
                (= main@%_9_0 (> main@%.012_0 4))
                (= main@%_.14_0 (ite main@%_9_0 1 0))
                (= main@%.14_0 (+ main@%.031_0 main@%_.14_0))
                (= main@%not._0 (xor main@%_9_0 true))
                (= main@%_.12_0 (ite main@%not._0 1 0))
                (= main@%.12_0 (+ main@%.012_0 main@%_.12_0))
                (= main@%_br2_0 (< main@%.14_0 6))
                (=> main@.thread_0 (and main@.thread_0 main@.lr.ph_0))
                (=> (and main@.thread_0 main@.lr.ph_0) (not main@%_br2_0))
                (=> main@.thread_0 (= main@%_13_0 (> main@%.12_0 main@%.14_0)))
                (=> main@.thread_0
                    (= main@%_spec.select_0 (ite main@%_13_0 1 0)))
                (=> main@.thread_0
                    (= main@%spec.select_0 (+ main@%.14_0 main@%_spec.select_0)))
                (=> main@.thread_0
                    (= main@%spec.select6_0 (ite main@%_13_0 main@%.12_0 0)))
                (=> main@_15_0 (and main@_15_0 main@.lr.ph_0))
                (=> (and main@_15_0 main@.lr.ph_0) main@%_br2_0)
                (=> main@_15_0 (= main@%_16_0 (+ main@%.04_0 1)))
                (=> main@_15_0
                    (= main@%_br3_0 (= main@%_16_0 main@%loop.bound_0)))
                (=> |tuple(main@_15_0, main@_.111_0)| main@_15_0)
                (=> main@_.111_0
                    (or (and main@_.111_0 main@.thread_0)
                        |tuple(main@_15_0, main@_.111_0)|))
                (=> |tuple(main@_15_0, main@_.111_0)| (not main@%_br3_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.111_0 main@%.04_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.210_0 main@%spec.select6_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.259_0 main@%spec.select_0))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.111_1 main@%_16_0))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.210_1 main@%.12_0))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.259_1 main@%.14_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.111_2 main@%.111_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.210_2 main@%.210_0))
                (=> (and main@_.111_0 main@.thread_0)
                    (= main@%.259_2 main@%.259_0))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.111_2 main@%.111_1))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.210_2 main@%.210_1))
                (=> |tuple(main@_15_0, main@_.111_0)|
                    (= main@%.259_2 main@%.259_1))
                (=> main@_.111_0 (= main@%_7_0 (+ main@%.111_2 main@%.259_2)))
                (=> main@_.111_0 (= main@%_br1_0 (= main@%_4_0 main@%_7_0)))
                (=> |tuple(main@_.111_0, main@._crit_edge_0)| main@_.111_0)
                (=> |tuple(main@_15_0, main@._crit_edge_0)| main@_15_0)
                (=> main@._crit_edge_0
                    (or |tuple(main@_.111_0, main@._crit_edge_0)|
                        |tuple(main@_15_0, main@._crit_edge_0)|))
                (=> |tuple(main@_.111_0, main@._crit_edge_0)| main@%_br1_0)
                (=> |tuple(main@_15_0, main@._crit_edge_0)| main@%_br3_0)
                main@._crit_edge_0)))
  (=> a!1 main@._crit_edge)))
(query main@._crit_edge)

