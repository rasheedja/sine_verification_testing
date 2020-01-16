;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 32-bit FP rounding error is close to sine

(set-option :precision 0.004486167978) ; 0.01s to prove delta-sat

(assert
    (forall ((x Real [(+ (^ 2 -126) (^ 2 -23)), 1.57])) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
        (= 
            (sin x)
            ; x * (1 - (x * x) * (1 / 6.0 - (x * x) / 120.0)) ; Without rounding
            (* x (- 1 (* (* x x) (- (/ 1 6.0) (/ (* x x) 120.0))))))))
(check-sat)
(get-model)
(exit)
