;Assert that a taylor sine approxiamtion (x - (x^3 / 6)) with an estimate for 64-bit FP rounding error is close to sine

(declare-const eps Real)
(set-option :precision 0.001)
(assert (= eps (^ 2 -52))) ;machine epsilon

(assert
    (forall ((x Real [(+ (^ 2 -1022) (^ 2 -52)), 0.6])) ;x is between (smallest normalised number + machine epsilon) and 0.6
        (and
            (= 
                (sin x) 
                (- (- (- x eps) (- (/ (- (* (- x eps) (- (* (- x eps) (- x eps)) eps)) eps) 6.0) eps)) eps))    ; lower estimate for FP rounding
                                                                                                                ; sub eps from all occurences of x 
                                                                                                                ; sub eps from all FP operations
            (= 
                (sin x) 
                (- (- (+ x eps) (- (/ (- (* (+ x eps) (- (* (+ x eps) (+ x eps)) eps)) eps) 6.0) eps)) eps))))) ; upper estimate for FP rounding
                                                                                                                ; add eps to all occurences of x
                                                                                                                ; add eps to all FP operations
(check-sat)
(get-model)
(exit)
