;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 64-bit FP rounding error is close to sine

(declare-const eps Real)
(set-option :precision 0.0045084) ; 0.02s to prove delta-sat
(assert (= eps (^ 2 -52))) ;machine epsilon

(assert
    (forall ((x Real [(+ (^ 2 -126) (^ 2 -23)), 1.57])) ;x is between (smallest normalised number + machine epsilon) and pi/2
        (and
            (= 
                (sin x)
                ; x * (1 - (x * x) * (1 / 6.0 - (x * x) / 120.0)) ; Without rounding

                ;   x * 
                ;       ((1 - ((x * x * (1 + eps)) * 
                ;           (((1 / 6.0 * (1 + eps)) - ((x * x * (1 - eps)) / 120 * (1 - eps))) * (1 + eps)) * 
                ;       (1 + eps))) * (1 - eps)) * 
                ;   (1 - eps) ; Lower bound on rounding

                (* (* x
                    (* (- 1 (* (* (* (* x x) (+ 1 eps))
                        (* (- (* (/ 1 6) (+ 1 eps)) (* (/ (* (* x x) (- 1 eps)) 120) (- 1 eps))) (+ 1 eps)))
                    (+ 1 eps))) (- 1 eps)))
                (- 1 eps))
            )

            (= 
                (sin x)
                ; x * (1 - (x * x) * (1 / 6.0 - (x * x) / 120.0)) ; Without rounding

                ;   x * 
                ;       ((1 - ((x * x * (1 - eps)) * 
                ;           (((1 / 6.0 * (1 - eps)) - ((x * x * (1 + eps)) / 120 * (1 + eps))) * (1 - eps)) * 
                ;       (1 - eps))) * (1 + eps)) * 
                ;   (1 + eps) ; Upper bound on rounding

                (* (* x 
                    (* (- 1 (* (* (* (* x x) (- 1 eps))
                        (* (- (* (/ 1 6) (- 1 eps)) (* (/ (* (* x x) (+ 1 eps)) 120) (+ 1 eps))) (- 1 eps)))
                    (- 1 eps))) (+ 1 eps)))
                (+ 1 eps))
            ))))
(check-sat)
(get-model)
(exit)
