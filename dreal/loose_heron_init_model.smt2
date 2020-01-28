(set-option :precision 0.1)

(declare-const eps Real)
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
    (forall ((x Real [0.5, 2]))
      (= (sqrt x) (/ (+ 1 x) 2))))
(check-sat)
(get-model)
(exit)
