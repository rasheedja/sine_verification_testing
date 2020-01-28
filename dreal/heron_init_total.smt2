(set-option :precision 1e-307)

(declare-const eps Real)
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
    (forall ((x Real [0.5, 2]))
      (and
        (<= (abs (- (sqrt x) (* (/ (* (+ 1 x) (- 1 eps)) 2) (- 1 eps)))) (+ 0.25 (* 6 eps)))
        (<= (abs (- (sqrt x) (* (/ (* (+ 1 x) (+ 1 eps)) 2) (+ 1 eps)))) (+ 0.25 (* 6 eps))))))
(check-sat)
(get-model)
(exit)
