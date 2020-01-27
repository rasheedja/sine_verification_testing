
(set-option :precision 0.00061)

(declare-const eps Real)
(declare-const i Int)

(assert (<= 1 i))
(assert (< i 5))
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
  (forall ((x Real [0.5, 2]) (y Real [0.8, 1.5]))
    (= (/ (+ y (/ x y)) 2) (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps)))))
(check-sat)
(get-model)
(exit)
