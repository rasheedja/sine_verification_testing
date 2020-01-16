; Assert that a taylor sine approxiamtion to the third degree with an estimate
; for 32-bit FP rounding error is close to a taylor sine approximation with no
; rounding

; z3 fails to verify this file

(declare-const eps Real)
(assert (= eps (/ 1 8388608))) ;machine epsilon

(assert
    (forall ((x Real))
        (=> (and (<= (+ (^ 2 -126) (^ 2 -23)) x) (<= x 1.57)) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
        (and
            (<= 
                (abs (-
                    (* x (- 1 (/ (* x x) 6)))
                    ; x * (1 - (x * x) / 6) ; Without rounding

                    ; (x *
                    ;     ((1 - (((x * x * (1 + eps)) / 6) * (1 + eps))) * (1 - eps)) *
                    ; (1 - eps)) ; Lower bound on rounding

                    (* x (- 1 (/ (* x x) 6)))))
            100)

            (<= 
                (abs (-
                    (* x (- 1 (/ (* x x) 6)))
                    ; x * (1 - (x * x) / 6) ; Without rounding

                    ; (x *
                    ;     ((1 - (((x * x * (1 - eps)) / 6) * (1 - eps))) * (1 + eps)) *
                    ; (1 + eps)) ; Lower bound on rounding

                    (* (* x 
                        (* (- 1 (* (/ (* (* x x) (- 1 eps)) 6) (- 1 eps))) (+ 1 eps))
                    ) (- 1 eps))))
            100)))))
(check-sat)
(get-model)
(exit)
