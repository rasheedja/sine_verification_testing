(declare-const x (_ FloatingPoint 8 24))
(assert (fp.gt x (fp #b1 #b01111110 #b00000000000000000000000))) ;-0.5
(assert (fp.lt x (fp #b0 #b01111110 #b00000000000000000000000))) ;0.5
(assert
    (<
        (-
            (fp.to_real ; x - ((x ^ 3) / 6)
                (fp.sub roundNearestTiesToEven
                    x 
                        (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                x
                                (fp.mul roundNearestTiesToEven
                                    x x))
                        (fp #b0 #b10000001 #b10000000000000000000000))))) ;6
        (sin (fp.to_real x))
    2.0))
(check-sat) ;unknown

