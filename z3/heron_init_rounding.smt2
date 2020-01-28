(declare-const eps Real)
(assert (= eps (/ 1 8388608))) ; machine epsilon

(assert
    (forall ((x Real))
      (=> (and (<= 0.5 x) (<= x 2))
      (and
        (and 
          (<= (- (/ (+ 1 x) 2) (* (/ (* (+ 1 x) (- 1 eps)) 2) (- 1 eps))) (* 6 eps)) 
          (>= (- (/ (+ 1 x) 2) (* (/ (* (+ 1 x) (- 1 eps)) 2) (- 1 eps))) (- 0 (* 6 eps))))
        (and
          (<= (- (/ (+ 1 x) 2) (* (/ (* (+ 1 x) (+ 1 eps)) 2) (+ 1 eps))) (* 6 eps))
          (>= (- (/ (+ 1 x) 2) (* (/ (* (+ 1 x) (+ 1 eps)) 2) (+ 1 eps))) (- 0 (* 6 eps))))))))
(check-sat)
(get-model)
(exit)
