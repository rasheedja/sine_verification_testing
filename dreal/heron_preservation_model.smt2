
(set-option :precision 0.0001)

(declare-const i Int)
(assert (<= 1 i))
(assert (< i 5))

(assert
    (forall ((x Real [0.5, 2]) (y Real [0.8, 1.5]))
      (=> (<= (sqrt x) y)
        (=> 
          (<= (abs (- y (sqrt x))) (/ 1 (^ 2 (^ 2 (- i 1)))))
            (<= (abs (- (/ (+ y (/ x y)) 2) (sqrt x))) (/ 1 (^ 2 (^ 2 i))))))))
(check-sat)
(get-model)
(exit)
