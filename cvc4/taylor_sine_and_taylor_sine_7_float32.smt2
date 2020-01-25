; Assert that a taylor sine approxiamtion to the third degree with an estimate
; for 32-bit FP rounding error is close to a taylor sine approximation with no
; rounding

; z3 fails to verify this file

(declare-const eps Real)
(declare-const sn Real)
(assert (= sn (/ 1 85070591730234615865843651857942052864))) ; 2^-126
(assert (= eps (/ 1 8388608))) ; 2^-23

(assert
    (forall ((x Real))
        (=> (and (<= 0 x) (<= x 0.75)) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2    
        (and
            (and 
                (<= 
                    (-
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
                0.1)
                (>= 
                    (-
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
                (- 0 0.1)))

            (and 
                (<= 
                    (-
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
                        ) sn) (+ 1 eps)))
                0.1)
                (>= 
                    (-
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
                        ) sn) (+ 1 eps)))
                (- 0 0.1)))))))
(check-sat)
(get-model)
(exit)
