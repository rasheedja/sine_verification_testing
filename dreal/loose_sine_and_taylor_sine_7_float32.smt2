;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 32-bit FP rounding error is close to sine

(declare-const eps Real)
; precision from script 0.00000042828521908991127705571325644251512443361207260750234127044677734375
(set-option :precision 0.1) ; 60s to prove delta-sat
(assert (= eps (^ 2 -23))) ;machine epsilon

(assert
    (forall ((x Real [(+ (^ 2 -126) (^ 2 -23)), 0.75])) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
        (and
            (= 
                (sin x)
                ; x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) / 5040.0))) ; Without rounding

                ;   x * 
                ;       ((1 - ((x * x * (1 + eps)) * 
                ;           (((1 / 6.0 * (1 + eps)) - ((x * x * (1 - eps)) * 
                ;               (((1 / 120.0 * (1 - eps)) - ((x * x * (1 + eps)) / 5040.0 * (1 + eps))) * (1 - eps)) * 
                ;           (1 - eps))) * (1 - eps)) * 
                ;       (1 + eps))) * (1 - eps)) * 
                ;   (1 - eps) ; Lower bound on rounding

                (* (* x
                    (* (- 1 (* (* (* (* x x) (+ 1 eps))
                        (* (- (* (/ 1 6) (+ 1 eps)) (* (* (* (* x x) (- 1 eps))
                            (* (- (* (/ 1 120) (- 1 eps)) (* (/ (* (* x x) (+ 1 eps)) 5040) (+ 1 eps))) (- 1 eps))) 
                        (- 1 eps))) (- 1 eps))
                    ) (+ 1 eps))) (- 1 eps))
                ) (- 1 eps))
            )

            (= 
                (sin x)
                ; x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) / 5040.0))) ; Without rounding

                ;   x * 
                ;       ((1 - ((x * x * (1 - eps)) * 
                ;           (((1 / 6.0 * (1 - eps)) - ((x * x * (1 + eps)) * 
                ;               (((1 / 120.0 * (1 + eps)) - ((x * x * (1 - eps)) / 5040.0 * (1 - eps))) * (1 + eps)) * 
                ;           (1 + eps))) * (1 + eps)) * 
                ;       (1 - eps))) * (1 + eps)) * 
                ;   (1 + eps) ; Upper bound on rounding

                (* (* x
                    (* (- 1 (* (* (* (* x x) (- 1 eps))
                        (* (- (* (/ 1 6) (- 1 eps)) (* (* (* (* x x) (+ 1 eps))
                            (* (- (* (/ 1 120) (+ 1 eps)) (* (/ (* (* x x) (- 1 eps)) 5040) (- 1 eps))) (+ 1 eps))) 
                        (+ 1 eps))) (+ 1 eps))
                    ) (- 1 eps))) (+ 1 eps))
                ) (+ 1 eps))
            ))))
(check-sat)
(get-model)
(exit)
