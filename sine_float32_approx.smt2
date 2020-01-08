;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 32-bit FP rounding error is close to sine

(declare-const eps Real)
(set-option :precision 0.001)
(assert (= eps (^ 2 -23))) ;machine epsilon

(assert
    (forall ((x Real [(+ (^ 2 -126) (^ 2 -23)), 0.6])) ;x is between (smallest normalised number + machine epsilon) and 0.6
        (and
            (= 
                (sin x)
                ; x * (1 - (x * x) / 6.0) ; Without rounding
                ; x * ((1 - ((x * x * (1 + eps)) / 6.0) * (1 + eps)) * (1 - eps)) * (1 - eps) ; Lower bound on rounding
                (* (* x (* (- 1 (* (/ (* (* x x) (+ 1 eps)) 6.0) (+ 1 eps))) (- 1 eps))) (- 1 eps)))
            (= 
                (sin x)
                ; x * (1 - (x * x) / 6.0) ; Without rounding
                ; x * ((1 - ((x * x * (1 - eps)) / 6.0) * (1 - eps)) * (1 + eps)) * (1 + eps) ; Upper bound on rounding
                (* (* x (* (- 1 (* (/ (* (* x x) (- 1 eps)) 6.0) (- 1 eps))) (+ 1 eps))) (+ 1 eps))))))
(check-sat)
(get-model)
(exit)
