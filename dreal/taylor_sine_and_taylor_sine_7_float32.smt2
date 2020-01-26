;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 32-bit FP rounding error is close to sine

(declare-const eps Real)
(declare-const sn Real)
(set-option :precision 0.00000073) ; 60s to prove delta-sat
(assert (= eps (^ 2 -23))) ;machine epsilon
(assert (= sn (^ 2 -126))) ; smallest normalized number

(assert
    (forall ((x Real [0, 0.75])) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
        (and
            (= 
                (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0)))))))
                ; x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) / 5040.0))) ; Without rounding

                ;   (x * 
                ;       ((1.0 - ((((x * x + sn) * (1.0 + eps)) * 
                ;           ((((1.0 / 6.0 + sn) * (1.0 + eps)) - ((((x * x - sn) * (1.0 - eps)) * 
                ;               ((((1.0 / 120.0 - sn) * (1.0 - eps)) - ((((x * x + sn) * (1.0 + eps)) / 5040.0 + sn) * (1.0 + eps)) - sn) * (1.0 - eps)) 
                ;           - sn) * (1.0 - eps)) - sn) * (1.0 - eps))
                ;       + sn) * (1.0 + eps)) - sn) * (1.0 - eps))
                ;   - sn) * (1.0 - eps) ; Lower bound on rounding

                (* (- (* x
                    (* (- (- 1 (* (+ (* (* (+ (* x x) sn) (+ 1 eps))
                        (* (- (- (* (+ (/ 1 6) sn) (+ 1 eps)) (* (- (* (* (- (* x x) sn) (- 1 eps))
                            (* (- (- (* (- (/ 1 120) sn) (- 1 eps)) (* (+ (/ (* (+ (* x x) sn) (+ 1 eps)) 5040) sn) (+ 1 eps))) sn) (- 1 eps))) 
                        sn) (- 1 eps))) sn) (- 1 eps))
                    ) sn) (+ 1 eps))) sn) (- 1 eps))
                ) sn) (- 1 eps)))

            (= 
                (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0)))))))
                ; x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) / 5040.0))) ; Without rounding

                ;   (x * 
                ;       ((1.0 - ((((x * x - sn) * (1.0 - eps)) * 
                ;           ((((1.0 / 6.0 - sn) * (1.0 - eps)) - ((((x * x + sn) * (1.0 + eps)) * 
                ;               ((((1.0 / 120.0 + sn) * (1.0 + eps)) - ((((x * x - sn) * (1.0 - eps)) / 5040.0 - sn) * (1.0 - eps)) + sn) * (1.0 + eps))
                ;           + sn) * (1.0 + eps)) + sn) * (1.0 + eps))
                ;       - sn) * (1.0 - eps)) + sn) * (1.0 + eps))
                ;   + sn) * (1.0 + eps) ; Upper bound on rounding

                (* (+ (* x
                    (* (+ (- 1 (* (- (* (* (- (* x x) sn) (- 1 eps))
                        (* (+ (- (* (- (/ 1 6) sn) (- 1 eps)) (* (+ (* (* (+ (* x x) sn) (+ 1 eps))
                            (* (+ (- (* (+ (/ 1 120) sn) (+ 1 eps)) (* (- (/ (* (- (* x x) sn) (- 1 eps)) 5040) sn) (- 1 eps))) sn) (+ 1 eps))) 
                        sn) (+ 1 eps))) sn) (+ 1 eps))
                    ) sn) (- 1 eps))) sn) (+ 1 eps))
                ) sn) (+ 1 eps))
            ))))
(check-sat)
(get-model)
(exit)
