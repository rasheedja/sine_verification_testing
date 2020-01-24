;Assert that a taylor sine approxiamtion to the third degree is the same as itself

; (set-option :precision 0.06227020243) ; 0.00s to prove delta-sat

(assert
    (forall ((x Real))
        (=> (and (<= (+ (^ 2 -126) (^ 2 -23)) x) (<= x 0.75)) ;x is between (smallest normalised number + machine epsilon for float32) and pi/2
            (<= 
                (abs (- 
                    (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0)))))))
                    (* x (- 1 (* (* x x) (- (/ 1 6.0) (* (* x x) (- (/ 1 120.0) (/ (* x x) 5040.0)))))))))
                0))))
(check-sat)
(get-model)
(exit)
