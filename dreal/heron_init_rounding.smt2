(assert
    (forall ((x Real [0.5, 2]))
      (<= (abs (- (/ (+ 1 x) 2) (* (/ (* (+ 1 x) (- 1 eps)) 2) (- 1 eps)))) (^ (/ 1 2) (^ 2 1)))))
(check-sat)
(get-model)
(exit)
