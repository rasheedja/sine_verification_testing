;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 64-bit FP rounding error is close to sine

(declare-const eps Real)
(set-option :precision 0.0000035793) ; 22s to prove delta-sat
(assert (= eps (^ 2 -52))) ;machine epsilon

(assert
    (forall ((x Real [(+ (^ 2 -126) (^ 2 -23)), 1.57])) ;x is between (smallest normalised number + machine epsilon) and pi/2
        (and
            (= 
                (sin x)
                ; x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) * (1 / 5040.0 - (x * x) / 362880)))) ; Without rounding

                ;   x * 
                ;       ((1 - ((x * x * (1 + eps)) * 
                ;           (((1 / 6.0 * (1 + eps)) - ((x * x * (1 - eps)) * 
                ;               (((1 / 120.0 * (1 - eps)) - ((x * x * (1 + eps)) * 
                ;                   (((1 / 5040.0 * (1 + eps)) - ((x * x * (1 - eps)) / 362880 * (1 - eps))) * (1 + eps)) * 
                ;               (1 + eps))) * (1 - eps)) * 
                ;           (1 - eps))) * (1 + eps)) * 
                ;       (1 + eps))) * (1 - eps)) * 
                ;   (1 - eps)

                (* (* x 
                    (* (- 1 (* (* (* (* x x) (+ 1 eps))
                        (* (- (* (/ 1 6) (+ 1 eps)) (* (* (* (* x x) (- 1 eps)) 
                            (* (- (* (/ 1 120) (- 1 eps)) (* (* (* (* x x) (+ 1 eps))
                                (* (- (* (/ 1 5040) (+ 1 eps)) (* (/ (* (* x x) (- 1 eps)) 362880) (- 1 eps))) (+ 1 eps)))
                            (+ 1 eps))) (- 1 eps)))
                        (- 1 eps))) (+ 1 eps)))
                    (+ 1 eps))) (- 1 eps))) 
                (- 1 eps))
            )

            (= 
                (sin x)
                ; x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) * (1 / 5040.0 - (x * x) / 362880)))) ; Without rounding

                ;   x * 
                ;       ((1 - ((x * x * (1 - eps)) * 
                ;           (((1 / 6.0 * (1 - eps)) - ((x * x * (1 + eps)) * 
                ;               (((1 / 120.0 * (1 + eps)) - ((x * x * (1 - eps)) * 
                ;                   (((1 / 5040.0 * (1 - eps)) - ((x * x * (1 + eps)) / 362880 * (1 + eps))) * (1 - eps)) * 
                ;               (1 - eps))) * (1 + eps)) * 
                ;           (1 + eps))) * (1 - eps)) * 
                ;       (1 - eps))) * (1 + eps)) * 
                ;   (1 + eps)

                (* (* x 
                    (* (- 1 (* (* (* (* x x) (- 1 eps))
                        (* (- (* (/ 1 6) (- 1 eps)) (* (* (* (* x x) (+ 1 eps)) 
                            (* (- (* (/ 1 120) (+ 1 eps)) (* (* (* (* x x) (- 1 eps))
                                (* (- (* (/ 1 5040) (- 1 eps)) (* (/ (* (* x x) (+ 1 eps)) 362880) (+ 1 eps))) (- 1 eps)))
                            (- 1 eps))) (+ 1 eps)))
                        (+ 1 eps))) (- 1 eps)))
                    (- 1 eps))) (+ 1 eps))) 
                (+ 1 eps))
            ))))
(check-sat)
(get-model)
(exit)
