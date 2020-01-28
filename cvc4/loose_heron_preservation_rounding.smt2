(declare-const eps Real)
(assert (= eps (/ 1 8388608))) ; machine epsilon

(assert
  (forall ((x Real) (y Real))
    (=> (and (and (<= 0.5 x) (<= x 2)) (and (<= 0.8 y) (<= y 1.8)))
    (and 
      (and 
        (<= (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps))) 0.1)
        (>= (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps))) (- 0 0.1)))
      (and 
        (<= (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (+ 1 eps))) (+ 1 eps)) 2) (- 1 eps))) 0.1)
        (>= (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (+ 1 eps))) (+ 1 eps)) 2) (- 1 eps))) (- 0 0.1)))))))
(check-sat)
(get-model)
(exit)
