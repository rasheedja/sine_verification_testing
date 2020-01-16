;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 32-bit FP rounding error is close to sine

(set-option :precision 0.06227020243) ; 0.00s to prove delta-sat

(assert
    (forall ((x Real [(+ (^ 2 -126) (^ 2 -23)), 1.57])) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
        (= 
            (sin x)
            ; x * (1 - (x * x) / 6) ; Without rounding
            (* x (- 1 (/ (* x x) 6))))))
(check-sat)
(get-model)
(exit)
