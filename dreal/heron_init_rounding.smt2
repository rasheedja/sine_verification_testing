(set-option :precision 1e-307)

(declare-const eps Real)
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
    (forall ((x Real [0.5, 2]))
      (and
        (<= (abs (- (/ (+ 1 x) 2) (* (/ (* (+ 1 x) (- 1 eps)) 2) (- 1 eps)))) (* 6 eps))
        (<= (abs (- (/ (+ 1 x) 2) (* (/ (* (+ 1 x) (+ 1 eps)) 2) (+ 1 eps)))) (* 6 eps)))))
(check-sat)
(get-model)
(exit)
