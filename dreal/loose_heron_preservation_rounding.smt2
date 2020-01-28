
(set-option :precision 0.1)

(declare-const eps Real)
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
  (forall ((x Real [0.5, 2]) (y Real [0.8, 1.8]))
    (and 
      (= (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps)))
      (= (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (+ 1 eps))) (+ 1 eps)) 2) (- 1 eps))))))
(check-sat)
(get-model)
(exit)
