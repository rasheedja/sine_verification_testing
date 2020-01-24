;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 64-bit FP rounding error is close to sine

(declare-const eps Real)
; 0.0000005227480596386357826021833161700413938888232223689556121826171875
(set-option :precision 0.1) ; s to prove delta-sat
(assert (= eps (^ 2 -52))) ;machine epsilon

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
