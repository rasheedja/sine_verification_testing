; Assert that a taylor sine approxiamtion to the third degree with an estimate
; for 32-bit FP rounding error is close to a taylor sine approximation with no
; rounding

; z3 fails to verify this file

(declare-const eps Real)
(assert (= eps (/ 1 4503599627370496))) ; 2^-52

(assert
    (forall ((x Real))
        (=> (and (<= (+ (/ 1 85070591730234615865843651857942052864) (/ 1 8388608)) x) (<= x 0.75)) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2    
        (and
            (and 
                (<= 
                    (-
                        (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0)))))))
                        ; x * (1 - (x * x) / 6) ; Without rounding

                        ; (x *
                        ;     ((1 - (((x * x * (1 + eps)) / 6) * (1 + eps))) * (1 - eps)) *
                        ; (1 - eps)) ; Lower bound on rounding

                        (* (* x
                            (* (- 1 (* (* (* (* x x) (+ 1 eps))
                                (* (- (* (/ 1 6) (+ 1 eps)) (* (* (* (* x x) (- 1 eps))
                                    (* (- (* (/ 1 120) (- 1 eps)) (* (/ (* (* x x) (+ 1 eps)) 5040) (+ 1 eps))) (- 1 eps))) 
                                (- 1 eps))) (- 1 eps))
                            ) (+ 1 eps))) (- 1 eps))
                        ) (- 1 eps)))
                0.1)
                (>= 
                    (-
                        (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0)))))))
                        ; x * (1 - (x * x) / 6) ; Without rounding

                        ; (x *
                        ;     ((1 - (((x * x * (1 + eps)) / 6) * (1 + eps))) * (1 - eps)) *
                        ; (1 - eps)) ; Lower bound on rounding

                        (* (* x
                            (* (- 1 (* (* (* (* x x) (+ 1 eps))
                                (* (- (* (/ 1 6) (+ 1 eps)) (* (* (* (* x x) (- 1 eps))
                                    (* (- (* (/ 1 120) (- 1 eps)) (* (/ (* (* x x) (+ 1 eps)) 5040) (+ 1 eps))) (- 1 eps))) 
                                (- 1 eps))) (- 1 eps))
                            ) (+ 1 eps))) (- 1 eps))
                        ) (- 1 eps)))
                (- 0 0.1)))
            (and 
                (<= 
                    (-
                        (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0)))))))
                        ; x * (1 - (x * x) / 6) ; Without rounding

                        ; (x *
                        ;     ((1 - (((x * x * (1 + eps)) / 6) * (1 + eps))) * (1 - eps)) *
                        ; (1 - eps)) ; Lower bound on rounding

                        (* (* x
                            (* (- 1 (* (* (* (* x x) (- 1 eps))
                                (* (- (* (/ 1 6) (- 1 eps)) (* (* (* (* x x) (+ 1 eps))
                                    (* (- (* (/ 1 120) (+ 1 eps)) (* (/ (* (* x x) (- 1 eps)) 5040) (- 1 eps))) (+ 1 eps))) 
                                (+ 1 eps))) (+ 1 eps))
                            ) (- 1 eps))) (+ 1 eps))
                        ) (+ 1 eps)))
                0.1)
                (>= 
                    (-
                        (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0)))))))
                        ; x * (1 - (x * x) / 6) ; Without rounding

                        ; (x *
                        ;     ((1 - (((x * x * (1 + eps)) / 6) * (1 + eps))) * (1 - eps)) *
                        ; (1 - eps)) ; Lower bound on rounding

                        (* (* x
                            (* (- 1 (* (* (* (* x x) (- 1 eps))
                                (* (- (* (/ 1 6) (- 1 eps)) (* (* (* (* x x) (+ 1 eps))
                                    (* (- (* (/ 1 120) (+ 1 eps)) (* (/ (* (* x x) (- 1 eps)) 5040) (- 1 eps))) (+ 1 eps))) 
                                (+ 1 eps))) (+ 1 eps))
                            ) (- 1 eps))) (+ 1 eps))
                        ) (+ 1 eps)))
                (- 0 0.1)))))))
(check-sat)
(get-model)
(exit)
