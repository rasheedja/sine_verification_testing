
(set-option :precision 0.000031)

(declare-const eps Real)
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
  (forall ((x Real [0.5, 2]) (y Real [0.7, 1.8]) (i Int [1, 5]))
    (=> (<= (sqrt x) y)
      (=> 
        (<= (abs (- y (sqrt x))) (+ (/ 1 (^ 2 (^ 2 (- i 1)))) (* (* 6 (- i 1)) eps)))
          (<= (abs (- (/ (+ y (/ x y)) 2) (sqrt x))) (+ (/ 1 (^ 2 (^ 2 i))) (* (* 6 (- i 1)) eps)))))))
(check-sat)
(get-model)
(exit)
