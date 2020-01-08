;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 32-bit FP rounding error is close to sine

(set-option :precision 0.0000001) ; 1m33s to prove delta-sat

(assert
    (forall ((x Real [0.0, 0.6])) ;x is between 0.0 and 0.6
        (= 
            (sin x)
            ; x * (1 - (x * x) / 6.0 + (x * x * x * x) / 120.0 - (x * x * x * x * x * x) / 5040.0) ; Without rounding
            (* x (- (+ (- 1 (/ (* x x) 6.0)) (/ (* x (* x (* x x))) 120.0)) (/ (* x (* x (* x (* x (* x x))))) 5040.0))))))
(check-sat)
(get-model)
(exit)
