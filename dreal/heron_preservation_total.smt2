
(set-option :precision 0.0001)

(declare-const eps Real)
(declare-const i Int)

(assert (<= 1 i))
(assert (< i 5))
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
    (forall ((x Real [0.5, 2]) (y Real [0.8, 1.5]))
      (=> (<= (sqrt x) y)
        (=> 
          (<= (abs (- y (sqrt x))) (/ 1 (^ 2 (^ 2 (- i 1)))))
            (<= (abs (- (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps)) (sqrt x))) (/ 1 (^ 2 (^ 2 i))))))))
(check-sat)
(get-model)
(exit)
