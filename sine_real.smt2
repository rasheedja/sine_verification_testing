(declare-const x Real)
(assert (> x -0.5))
(assert (< x 0.5))
(assert
    (= ;x - x^3/6 - sin x = 0.0
        (-
            (- 
                x
                (/
                    (*
                        x
                        (*
                            x x))
                6.0))
        (sin x))
        0.0))
(check-sat) 
(exit)

