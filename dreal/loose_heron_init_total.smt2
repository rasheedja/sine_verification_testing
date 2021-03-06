(set-option :precision 0.1)

(declare-const eps Real)
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
    (forall ((x Real [0.5, 2]))
      (and
        (= (sqrt x) (* (/ (* (+ 1 x) (- 1 eps)) 2) (- 1 eps)))
        (= (sqrt x) (* (/ (* (+ 1 x) (+ 1 eps)) 2) (+ 1 eps))))))
(check-sat)
(get-model)
(exit)
