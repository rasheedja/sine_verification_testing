
(set-option :precision 0.0015)

(declare-const eps Real)
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
  (forall ((x Real [0.5, 2]) (y Real [0.8, 1.5]))
    (and 
      (<= (abs (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps)))) (* 6 eps))
      (<= (abs (- (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (+ 1 eps))) (+ 1 eps)) 2) (- 1 eps)))) (* 6 eps)))))
(check-sat)
(get-model)
(exit)
