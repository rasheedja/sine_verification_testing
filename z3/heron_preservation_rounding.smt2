(declare-const eps Real)
(assert (= eps (/ 1 8388608))) ; machine epsilon

(assert
  (forall ((x Real) (y Real))
    (=> (and (and (<= 0.5 x) (<= x 2)) (and (<= 0.8 y) (<= y 1.5)))
    (and 
      (and 
        (<= (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps))) (* 6 eps))
        (>= (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps))) (- 0 (* 6 eps))))
      (and 
        (<= (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (+ 1 eps))) (+ 1 eps)) 2) (- 1 eps))) (* 6 eps))
        (>= (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (+ 1 eps))) (+ 1 eps)) 2) (- 1 eps))) (- 0 (* 6 eps))))))))
(check-sat)
(get-model)
(exit)
