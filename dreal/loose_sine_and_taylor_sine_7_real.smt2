;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 32-bit FP rounding error is close to sine

; 0.000000209225771949035315011087405277778739076666170149110257625579833984375
(set-option :precision 0.1) ; 0s to prove delta-sat

(assert
    (forall ((x Real [0, 0.75])) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
        (= 
            (sin x)
            ; x * (1 - (x * x) * (1 / 6.0 - (x * x) * (1 / 120.0 - (x * x) / 5040.0))) ; Without rounding
            (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0))))))))))
(check-sat)
(get-model)
(exit)
