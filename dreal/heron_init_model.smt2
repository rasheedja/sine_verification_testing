(assert
    (forall ((x Real [0.5, 2]))
      (<= (abs (- (sqrt x) (/ (+ 1 x) 2))) (^ (/ 1 2) (^ 2 1)))))
(check-sat)
(get-model)
(exit)
