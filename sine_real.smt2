;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 32-bit FP rounding error is close to sine

(set-option :precision 0.001)

(assert
    (forall ((x Real [0.0, 0.6])) ;x is between 0.0 and 0.6
        (= 
            (sin x)
            ; x * (1 - (x * x) / 6.0) ; Without rounding
            (* x (- 1 (/ (* x x) 6.0))))))
(check-sat)
(get-model)
(exit)
