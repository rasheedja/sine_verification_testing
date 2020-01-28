
(set-option :precision 0.000085)

(declare-const eps Real)
(assert (= eps (^ 2 -23))) ; machine epsilon

(assert
  (forall ((x Real [0.5, 2]) (y Real [0.8, 1.8]) (i Int [1, 5]))
      (=> 
        (<= (abs (- y (sqrt x))) (+ (/ 1 (^ 2 (^ 2 (- i 1)))) (* (* 6 (- i 1)) eps)))
          (and
            (<= (abs (- (* (/ (* (+ y (* (/ x y) (- 1 eps))) (- 1 eps)) 2) (- 1 eps)) (sqrt x))) (+ (/ 1 (^ 2 (^ 2 i))) (* (* 6 i) eps)))
            (<= (abs (- (* (/ (* (+ y (* (/ x y) (+ 1 eps))) (+ 1 eps)) 2) (+ 1 eps)) (sqrt x))) (+ (/ 1 (^ 2 (^ 2 i))) (* (* 6 i) eps)))))))
(check-sat)
(get-model)
(exit)
