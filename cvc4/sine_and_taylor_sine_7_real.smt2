;Assert that a taylor sine approxiamtion to the third degree is the same as itself

; (set-option :precision 0.06227020243) ; 0.00s to prove delta-sat

(assert
    (forall ((x Real))
        (=> (and (<= (+ (/ 1 85070591730234615865843651857942052864) (/ 1 8388608)) x) (<= x 0.75)) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
            (= 
                (- 
                    (* x (- 1 (* (* x x) (- (/ 1 6) (* (* x x) (- (/ 1 120) (/ (* x x) 5040)))))))
                    (* x (- 1 (* (* x x) (- (/ 1 6) (* (* x x) (- (/ 1 120) (/ (* x x) 5040))))))))
                0))))
(check-sat)
(get-model)
(exit)
