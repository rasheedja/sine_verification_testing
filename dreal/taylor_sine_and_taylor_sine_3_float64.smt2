;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 64-bit FP rounding error is close to sine

(declare-const eps Real)
(set-option :precision 0.0000000567553386076721859402995150160886606016674704733304679393768310546875) ; 0.02s to prove delta-sat
(assert (= eps (^ 2 -52))) ;machine epsilon

(assert
    (forall ((x Real [(+ (^ 2 -126) (^ 2 -23)), 0.75])) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
        (and
            (= 
                (* x (- 1 (/ (* x x) 6)))
                ; x * (1 - (x * x) / 6) ; Without rounding

                ; (x *
                ;     ((1 - (((x * x * (1 + eps)) / 6) * (1 + eps))) * (1 - eps)) *
                ; (1 - eps)) ; Lower bound on rounding

                (* (* x 
                    (* (- 1 (* (/ (* (* x x) (+ 1 eps)) 6) (+ 1 eps))) (- 1 eps))
                ) (- 1 eps))
            )

            (= 
                (* x (- 1 (/ (* x x) 6)))
                ; x * (1 - (x * x) / 6) ; Without rounding

                ; (x *
                ;     ((1 - (((x * x * (1 - eps)) / 6) * (1 - eps))) * (1 + eps)) *
                ; (1 + eps)) ; Lower bound on rounding

                (* (* x 
                    (* (- 1 (* (/ (* (* x x) (- 1 eps)) 6) (- 1 eps))) (+ 1 eps))
                ) (- 1 eps))
            ))))
(check-sat)
(get-model)
(exit)
