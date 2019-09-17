(declare-const x Real)
(assert (= (* (sin x) (cos x)) 1))
(check-sat) ;unknown
