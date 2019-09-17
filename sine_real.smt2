(declare-const x Real)
(assert (> x -0.5))
(assert (< x 0.5))
(assert
    (<
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
        2.0))
(check-sat) ;unknown

