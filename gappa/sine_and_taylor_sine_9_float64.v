Require Import Gappa.Gappa_library.
Section Generated_by_Gappa.
Variable _x : R.
Definition f1 := Float2 (1) (-23).
Definition f2 := Float2 (3) (-2).
Definition i1 := makepairF f1 f2.
Notation p1 := (BND _x i1). (* BND(x, [1.19209e-07, 0.75]) *)
Notation r8 := (Float1 (1)).
Notation r12 := ((_x * _x)%R).
Notation r11 := ((rounding_float rndNE (53)%positive (-1074)%Z) r12).
Notation r17 := (Float1 (6)).
Notation r16 := ((r8 / r17)%R).
Notation r15 := ((rounding_float rndNE (53)%positive (-1074)%Z) r16).
Notation r24 := (Float1 (120)).
Notation r23 := ((r8 / r24)%R).
Notation r22 := ((rounding_float rndNE (53)%positive (-1074)%Z) r23).
Notation r31 := (Float1 (5040)).
Notation r30 := ((r8 / r31)%R).
Notation r29 := ((rounding_float rndNE (53)%positive (-1074)%Z) r30).
Notation r34 := (Float1 (362880)).
Notation r33 := ((r11 / r34)%R).
Notation r32 := ((rounding_float rndNE (53)%positive (-1074)%Z) r33).
Notation r28 := ((r29 - r32)%R).
Notation r27 := ((rounding_float rndNE (53)%positive (-1074)%Z) r28).
Notation r26 := ((r11 * r27)%R).
Notation r25 := ((rounding_float rndNE (53)%positive (-1074)%Z) r26).
Notation r21 := ((r22 - r25)%R).
Notation r20 := ((rounding_float rndNE (53)%positive (-1074)%Z) r21).
Notation r19 := ((r11 * r20)%R).
Notation r18 := ((rounding_float rndNE (53)%positive (-1074)%Z) r19).
Notation r14 := ((r15 - r18)%R).
Notation r13 := ((rounding_float rndNE (53)%positive (-1074)%Z) r14).
Notation r10 := ((r11 * r13)%R).
Notation r9 := ((rounding_float rndNE (53)%positive (-1074)%Z) r10).
Notation r7 := ((r8 - r9)%R).
Notation r6 := ((rounding_float rndNE (53)%positive (-1074)%Z) r7).
Notation r5 := ((_x * r6)%R).
Notation _ts := ((rounding_float rndNE (53)%positive (-1074)%Z) r5).
Notation r43 := ((r12 / r34)%R).
Notation r42 := ((r30 - r43)%R).
Notation r41 := ((r12 * r42)%R).
Notation r40 := ((r23 - r41)%R).
Notation r39 := ((r12 * r40)%R).
Notation r38 := ((r16 - r39)%R).
Notation r37 := ((r12 * r38)%R).
Notation r36 := ((r8 - r37)%R).
Notation _Mts := ((_x * r36)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (310603720466396411) (-111).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 1.1964e-16]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 1.1964e-16]) *)
Definition f5 := Float2 (-17) (-57).
Definition i3 := makepairF f5 f4.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-1.17961e-16, 1.1964e-16]) *)
Notation r45 := ((_ts - r5)%R).
Notation r46 := ((r5 - _Mts)%R).
Notation r44 := ((r45 + r46)%R).
Notation p5 := (BND r44 i3). (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) + (x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - Mts), [-1.17961e-16, 1.1964e-16]) *)
Definition f6 := Float2 (-1) (-54).
Definition f7 := Float2 (1) (-54).
Definition i4 := makepairF f6 f7.
Notation p6 := (BND r45 i4). (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [-5.55112e-17, 5.55112e-17]) *)
Definition f8 := Float2 (1) (-24).
Definition f9 := Float2 (1) (0).
Definition i5 := makepairF f8 f9.
Notation p7 := (ABS r5 i5). (* ABS(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [5.96046e-08, 1]) *)
Notation p8 := (ABS _x i1). (* ABS(x, [1.19209e-07, 0.75]) *)
Lemma l10 : s1 -> p1 (* BND(x, [1.19209e-07, 0.75]) *).
 intros h0.
 assert (h1 := h0).
 exact (proj1 h1).
Qed.
Lemma t1 : p1 -> p8.
 intros h0.
 refine (abs_of_bnd_p _x i1 i1 h0 _) ; finalize.
Qed.
Lemma l9 : s1 -> p8 (* ABS(x, [1.19209e-07, 0.75]) *).
 intros h0.
 assert (h1 := l10 h0).
 apply t1. exact h1.
Qed.
Definition f10 := Float2 (1) (-1).
Definition i6 := makepairF f10 f9.
Notation p9 := (ABS r6 i6). (* ABS(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))), [0.5, 1]) *)
Definition i7 := makepairF f9 f9.
Notation p12 := (BND r8 i7). (* BND(1, [1, 1]) *)
Lemma t2 : p12.
 refine (constant1 _ i7 _) ; finalize.
Qed.
Lemma l14 : s1 -> p12 (* BND(1, [1, 1]) *).
 intros h0.
 apply t2.
Qed.
Definition f11 := Float2 (1) (-49).
Definition i8 := makepairF f11 f10.
Notation p13 := (BND r9 i8). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))), [1.77636e-15, 0.5]) *)
Definition f12 := Float2 (1) (-3).
Definition i9 := makepairF f11 f12.
Notation p14 := (BND r10 i9). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [1.77636e-15, 0.125]) *)
Definition f13 := Float2 (1) (-46).
Definition f14 := Float2 (9) (-4).
Definition i10 := makepairF f13 f14.
Notation p15 := (BND r11 i10). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.5625]) *)
Notation p16 := (BND r12 i10). (* BND(x * x, [1.42109e-14, 0.5625]) *)
Lemma t3 : p8 -> p16.
 intros h0.
 refine (square _x i1 i10 h0 _) ; finalize.
Qed.
Lemma l18 : s1 -> p16 (* BND(x * x, [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t3. exact h1.
Qed.
Lemma t4 : p16 -> p15.
 intros h0.
 refine (float_round_ne _ _ r12 i10 i10 h0 _) ; finalize.
Qed.
Lemma l17 : s1 -> p15 (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l18 h0).
 apply t4. exact h1.
Qed.
Definition f15 := Float2 (1501199875790165) (-53).
Definition i11 := makepairF f12 f15.
Notation p17 := (BND r13 i11). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [0.125, 0.166667]) *)
Notation p18 := (BND r14 i11). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))), [0.125, 0.166667]) *)
Definition f16 := Float2 (6004799503160661) (-55).
Definition i12 := makepairF f16 f16.
Notation p19 := (BND r15 i12). (* BND(float<53,-1074,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f17 := Float2 (96076792050570581) (-59).
Definition f18 := Float2 (768614336404564651) (-62).
Definition i13 := makepairF f17 f18.
Notation p20 := (BND r16 i13). (* BND(1 / 6, [0.166667, 0.166667]) *)
Definition f19 := Float2 (3) (1).
Definition i14 := makepairF f19 f19.
Notation p21 := (BND r17 i14). (* BND(6, [6, 6]) *)
Lemma t5 : p21.
 refine (constant1 _ i14 _) ; finalize.
Qed.
Lemma l23 : s1 -> p21 (* BND(6, [6, 6]) *).
 intros h0.
 apply t5.
Qed.
Lemma t6 : p12 -> p21 -> p20.
 intros h0 h1.
 refine (div_pp r8 r17 i7 i14 i13 h0 h1 _) ; finalize.
Qed.
Lemma l22 : s1 -> p20 (* BND(1 / 6, [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l23 h0).
 apply t6. exact h1. exact h2.
Qed.
Definition f20 := Float2 (48038396025285291) (-58).
Definition i15 := makepairF f16 f20.
Notation p22 := (BND r16 i15). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t7 : p22 -> p19.
 intros h0.
 refine (float_round_ne _ _ r16 i15 i12 h0 _) ; finalize.
Qed.
Lemma l21 : s1 -> p19 (* BND(float<53,-1074,ne>(1 / 6), [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 apply t7. refine (subset r16 i13 i15 h1 _) ; finalize.
Qed.
Definition f21 := Float2 (1) (-53).
Definition f22 := Float2 (1) (-5).
Definition i16 := makepairF f21 f22.
Notation p23 := (BND r18 i16). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i16). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [1.11022e-16, 0.03125]) *)
Definition f23 := Float2 (1) (-7).
Definition f24 := Float2 (5) (-9).
Definition i17 := makepairF f23 f24.
Notation p25 := (BND r20 i17). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [0.0078125, 0.00976562]) *)
Notation p26 := (BND r21 i17). (* BND(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))), [0.0078125, 0.00976562]) *)
Definition f25 := Float2 (4803839602528529) (-59).
Definition i18 := makepairF f25 f25.
Notation p27 := (BND r22 i18). (* BND(float<53,-1074,ne>(1 / 120), [0.00833333, 0.00833333]) *)
Definition f26 := Float2 (76861433640456465) (-63).
Definition f27 := Float2 (153722867280912931) (-64).
Definition i19 := makepairF f26 f27.
Notation p28 := (BND r23 i19). (* BND(1 / 120, [0.00833333, 0.00833333]) *)
Definition f28 := Float2 (15) (3).
Definition i20 := makepairF f28 f28.
Notation p29 := (BND r24 i20). (* BND(120, [120, 120]) *)
Lemma t8 : p29.
 refine (constant1 _ i20 _) ; finalize.
Qed.
Lemma l30 : s1 -> p29 (* BND(120, [120, 120]) *).
 intros h0.
 apply t8.
Qed.
Lemma t9 : p12 -> p29 -> p28.
 intros h0 h1.
 refine (div_pp r8 r24 i7 i20 i19 h0 h1 _) ; finalize.
Qed.
Lemma l29 : s1 -> p28 (* BND(1 / 120, [0.00833333, 0.00833333]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l30 h0).
 apply t9. exact h1. exact h2.
Qed.
Definition f29 := Float2 (19215358410114117) (-61).
Definition i21 := makepairF f25 f29.
Notation p30 := (BND r23 i21). (* BND(1 / 120, [0.00833333, 0.00833333]) *)
Lemma t10 : p30 -> p27.
 intros h0.
 refine (float_round_ne _ _ r23 i21 i18 h0 _) ; finalize.
Qed.
Lemma l28 : s1 -> p27 (* BND(float<53,-1074,ne>(1 / 120), [0.00833333, 0.00833333]) *).
 intros h0.
 assert (h1 := l29 h0).
 apply t10. refine (subset r23 i19 i21 h1 _) ; finalize.
Qed.
Definition f30 := Float2 (1) (-59).
Definition f31 := Float2 (1) (-11).
Definition i22 := makepairF f30 f31.
Notation p31 := (BND r25 i22). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))), [1.73472e-18, 0.000488281]) *)
Notation p32 := (BND r26 i22). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [1.73472e-18, 0.000488281]) *)
Definition f32 := Float2 (1) (-13).
Definition f33 := Float2 (7) (-15).
Definition i23 := makepairF f32 f33.
Notation p33 := (BND r27 i23). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [0.00012207, 0.000213623]) *)
Notation p34 := (BND r28 i23). (* BND(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880), [0.00012207, 0.000213623]) *)
Definition f34 := Float2 (3660068268593165) (-64).
Definition i24 := makepairF f34 f34.
Notation p35 := (BND r29 i24). (* BND(float<53,-1074,ne>(1 / 5040), [0.000198413, 0.000198413]) *)
Definition f35 := Float2 (936977476759850241) (-72).
Definition i25 := makepairF f34 f35.
Notation p36 := (BND r30 i25). (* BND(1 / 5040, [0.000198413, 0.000198413]) *)
Definition f36 := Float2 (315) (4).
Definition i26 := makepairF f36 f36.
Notation p37 := (BND r31 i26). (* BND(5040, [5040, 5040]) *)
Lemma t11 : p37.
 refine (constant1 _ i26 _) ; finalize.
Qed.
Lemma l37 : s1 -> p37 (* BND(5040, [5040, 5040]) *).
 intros h0.
 apply t11.
Qed.
Lemma t12 : p12 -> p37 -> p36.
 intros h0 h1.
 refine (div_pp r8 r31 i7 i26 i25 h0 h1 _) ; finalize.
Qed.
Lemma l36 : s1 -> p36 (* BND(1 / 5040, [0.000198413, 0.000198413]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l37 h0).
 apply t12. exact h1. exact h2.
Qed.
Definition f37 := Float2 (14640273074372661) (-66).
Definition i27 := makepairF f34 f37.
Notation p38 := (BND r30 i27). (* BND(1 / 5040, [0.000198413, 0.000198413]) *)
Lemma t13 : p38 -> p35.
 intros h0.
 refine (float_round_ne _ _ r30 i27 i24 h0 _) ; finalize.
Qed.
Lemma l35 : s1 -> p35 (* BND(float<53,-1074,ne>(1 / 5040), [0.000198413, 0.000198413]) *).
 intros h0.
 assert (h1 := l36 h0).
 apply t13. refine (subset r30 i25 i27 h1 _) ; finalize.
Qed.
Definition f38 := Float2 (1) (-65).
Definition f39 := Float2 (1) (-14).
Definition i28 := makepairF f38 f39.
Notation p39 := (BND r32 i28). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880), [2.71051e-20, 6.10352e-05]) *)
Notation p40 := (BND r33 i28). (* BND(float<53,-1074,ne>(x * x) / 362880, [2.71051e-20, 6.10352e-05]) *)
Definition f40 := Float2 (2835) (7).
Definition f41 := Float2 (1) (19).
Definition i29 := makepairF f40 f41.
Notation p41 := (BND r34 i29). (* BND(362880, [362880, 524288]) *)
Lemma t14 : p41.
 refine (constant1 _ i29 _) ; finalize.
Qed.
Lemma l40 : s1 -> p41 (* BND(362880, [362880, 524288]) *).
 intros h0.
 apply t14.
Qed.
Definition i30 := makepairF f13 f9.
Notation p42 := (BND r11 i30). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 1]) *)
Definition f42 := Float2 (1) (14).
Definition i31 := makepairF f42 f41.
Notation p43 := (BND r34 i31). (* BND(362880, [16384, 524288]) *)
Lemma t15 : p42 -> p43 -> p40.
 intros h0 h1.
 refine (div_pp r11 r34 i30 i31 i28 h0 h1 _) ; finalize.
Qed.
Lemma l39 : s1 -> p40 (* BND(float<53,-1074,ne>(x * x) / 362880, [2.71051e-20, 6.10352e-05]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l40 h0).
 apply t15. refine (subset r11 i10 i30 h1 _) ; finalize. refine (subset r34 i29 i31 h2 _) ; finalize.
Qed.
Lemma t16 : p40 -> p39.
 intros h0.
 refine (float_round_ne _ _ r33 i28 i28 h0 _) ; finalize.
Qed.
Lemma l38 : s1 -> p39 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880), [2.71051e-20, 6.10352e-05]) *).
 intros h0.
 assert (h1 := l39 h0).
 apply t16. exact h1.
Qed.
Definition f43 := Float2 (3) (-14).
Definition i32 := makepairF f43 f33.
Notation p44 := (BND r29 i32). (* BND(float<53,-1074,ne>(1 / 5040), [0.000183105, 0.000213623]) *)
Lemma t17 : p44 -> p39 -> p34.
 intros h0 h1.
 refine (sub r29 r32 i32 i28 i23 h0 h1 _) ; finalize.
Qed.
Lemma l34 : s1 -> p34 (* BND(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880), [0.00012207, 0.000213623]) *).
 intros h0.
 assert (h1 := l35 h0).
 assert (h2 := l38 h0).
 apply t17. refine (subset r29 i24 i32 h1 _) ; finalize. exact h2.
Qed.
Lemma t18 : p34 -> p33.
 intros h0.
 refine (float_round_ne _ _ r28 i23 i23 h0 _) ; finalize.
Qed.
Lemma l33 : s1 -> p33 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [0.00012207, 0.000213623]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t18. exact h1.
Qed.
Definition i33 := makepairF f32 f31.
Notation p45 := (BND r27 i33). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [0.00012207, 0.000488281]) *)
Lemma t19 : p42 -> p45 -> p32.
 intros h0 h1.
 refine (mul_pp r11 r27 i30 i33 i22 h0 h1 _) ; finalize.
Qed.
Lemma l32 : s1 -> p32 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [1.73472e-18, 0.000488281]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l33 h0).
 apply t19. refine (subset r11 i10 i30 h1 _) ; finalize. refine (subset r27 i23 i33 h2 _) ; finalize.
Qed.
Lemma t20 : p32 -> p31.
 intros h0.
 refine (float_round_ne _ _ r26 i22 i22 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p31 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))), [1.73472e-18, 0.000488281]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t20. exact h1.
Qed.
Definition f44 := Float2 (17) (-11).
Definition i34 := makepairF f44 f24.
Notation p46 := (BND r22 i34). (* BND(float<53,-1074,ne>(1 / 120), [0.00830078, 0.00976562]) *)
Lemma t21 : p46 -> p31 -> p26.
 intros h0 h1.
 refine (sub r22 r25 i34 i22 i17 h0 h1 _) ; finalize.
Qed.
Lemma l27 : s1 -> p26 (* BND(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l28 h0).
 assert (h2 := l31 h0).
 apply t21. refine (subset r22 i18 i34 h1 _) ; finalize. exact h2.
Qed.
Lemma t22 : p26 -> p25.
 intros h0.
 refine (float_round_ne _ _ r21 i17 i17 h0 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t22. exact h1.
Qed.
Definition i35 := makepairF f23 f22.
Notation p47 := (BND r20 i35). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [0.0078125, 0.03125]) *)
Lemma t23 : p42 -> p47 -> p24.
 intros h0 h1.
 refine (mul_pp r11 r20 i30 i35 i16 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t23. refine (subset r11 i10 i30 h1 _) ; finalize. refine (subset r20 i17 i35 h2 _) ; finalize.
Qed.
Lemma t24 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i16 i16 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t24. exact h1.
Qed.
Definition f45 := Float2 (5) (-5).
Definition f46 := Float2 (750599937895083) (-52).
Definition i36 := makepairF f45 f46.
Notation p48 := (BND r15 i36). (* BND(float<53,-1074,ne>(1 / 6), [0.15625, 0.166667]) *)
Lemma t25 : p48 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i36 i16 i11 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t25. refine (subset r15 i12 i36 h1 _) ; finalize. exact h2.
Qed.
Lemma t26 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i11 i11 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t26. exact h1.
Qed.
Definition i37 := makepairF f13 f2.
Notation p49 := (BND r11 i37). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t27 : p49 -> p17 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i37 i11 i9 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t27. refine (subset r11 i10 i37 h1 _) ; finalize. exact h2.
Qed.
Notation p50 := (BND r10 i8). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [1.77636e-15, 0.5]) *)
Lemma t28 : p50 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t28. refine (subset r10 i9 i8 h1 _) ; finalize.
Qed.
Lemma t29 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t29. exact h1. exact h2.
Qed.
Lemma t30 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t30. exact h1.
Qed.
Lemma t31 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t31. exact h1.
Qed.
Definition i38 := makepairF f1 f9.
Notation p51 := (ABS _x i38). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t32 : p51 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i38 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t32. refine (abs_subset _x i1 i38 h1 _) ; finalize. exact h2.
Qed.
Lemma t33 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t33. exact h1.
Qed.
Definition f47 := Float2 (-9) (-57).
Definition f48 := Float2 (166488532390540539) (-111).
Definition i39 := makepairF f47 f48.
Notation p52 := (BND r46 i39). (* BND(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - Mts, [-6.245e-17, 6.4129e-17]) *)
Notation r48 := ((r6 - r36)%R).
Notation r47 := ((_x * r48)%R).
Notation p53 := (BND r47 i39). (* BND(x * (float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))))), [-6.245e-17, 6.4129e-17]) *)
Definition f49 := Float2 (-3) (-55).
Definition f50 := Float2 (55496177463513513) (-109).
Definition i40 := makepairF f49 f50.
Notation p54 := (BND r48 i40). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-8.32667e-17, 8.55054e-17]) *)
Notation r50 := ((r6 - r7)%R).
Notation r51 := ((r7 - r36)%R).
Notation r49 := ((r50 + r51)%R).
Notation p55 := (BND r49 i40). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) + (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))))), [-8.32667e-17, 8.55054e-17]) *)
Notation p56 := (BND r50 i4). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [-5.55112e-17, 5.55112e-17]) *)
Notation p57 := (ABS r7 i6). (* ABS(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))), [0.5, 1]) *)
Lemma t34 : p11 -> p57.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p57 (* ABS(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t34. exact h1.
Qed.
Lemma t35 : p57 -> p56.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l45 : s1 -> p56 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))), [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l46 h0).
 apply t35. exact h1.
Qed.
Definition f51 := Float2 (-1) (-55).
Definition f52 := Float2 (19467380444549545) (-109).
Definition i41 := makepairF f51 f52.
Notation p58 := (BND r51 i41). (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.77556e-17, 2.99942e-17]) *)
Notation r53 := ((r9 - r37)%R).
Notation r52 := ((- r53)%R).
Notation p59 := (BND r52 i41). (* BND(-(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.77556e-17, 2.99942e-17]) *)
Definition f53 := Float2 (-19467380444549545) (-109).
Definition f54 := Float2 (1) (-55).
Definition i42 := makepairF f53 f54.
Notation p60 := (BND r53 i42). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.99942e-17, 2.77556e-17]) *)
Notation r55 := ((r9 - r10)%R).
Notation r56 := ((r10 - r37)%R).
Notation r54 := ((r55 + r56)%R).
Notation p61 := (BND r54 i42). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.99942e-17, 2.77556e-17]) *)
Definition f55 := Float2 (-1) (-57).
Definition f56 := Float2 (1) (-56).
Definition i43 := makepairF f55 f56.
Notation p62 := (BND r55 i43). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [-6.93889e-18, 1.38778e-17]) *)
Notation p63 := (ABS r10 i9). (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [1.77636e-15, 0.125]) *)
Lemma t36 : p14 -> p63.
 intros h0.
 refine (abs_of_bnd_p r10 i9 i9 h0 _) ; finalize.
Qed.
Lemma l52 : s1 -> p63 (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t36. exact h1.
Qed.
Lemma t37 : p63 -> p62.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i9 i43 h0 _) ; finalize.
Qed.
Lemma l51 : s1 -> p62 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [-6.93889e-18, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t37. exact h1.
Qed.
Definition f57 := Float2 (-14963780817179049) (-109).
Definition i44 := makepairF f57 f56.
Notation p64 := (BND r56 i44). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.30554e-17, 1.38778e-17]) *)
Notation r59 := ((r13 - r38)%R).
Notation r58 := ((r11 * r59)%R).
Notation r61 := ((r11 - r12)%R).
Notation r60 := ((r61 * r38)%R).
Notation r57 := ((r58 + r60)%R).
Notation p65 := (BND r57 i44). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.30554e-17, 1.38778e-17]) *)
Definition f58 := Float2 (-35835925256073567) (-111).
Definition f59 := Float2 (5) (-60).
Definition i45 := makepairF f58 f59.
Notation p66 := (BND r58 i45). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-1.38035e-17, 4.33681e-18]) *)
Definition f60 := Float2 (-3981769472897063) (-107).
Definition f61 := Float2 (1) (-57).
Definition i46 := makepairF f60 f61.
Notation p67 := (BND r59 i46). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.45395e-17, 6.93889e-18]) *)
Notation r63 := ((r13 - r14)%R).
Notation r64 := ((r14 - r38)%R).
Notation r62 := ((r63 + r64)%R).
Notation p68 := (BND r62 i46). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) + (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.45395e-17, 6.93889e-18]) *)
Definition f62 := Float2 (-1) (-56).
Definition i47 := makepairF f62 f56.
Notation p69 := (BND r63 i47). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [-1.38778e-17, 1.38778e-17]) *)
Definition f63 := Float2 (1) (-2).
Definition i48 := makepairF f12 f63.
Notation p70 := (ABS r14 i48). (* ABS(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))), [0.125, 0.25]) *)
Notation p71 := (BND r14 i48). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))), [0.125, 0.25]) *)
Lemma t38 : p71 -> p70.
 intros h0.
 refine (abs_of_bnd_p r14 i48 i48 h0 _) ; finalize.
Qed.
Lemma l59 : s1 -> p70 (* ABS(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t38. refine (subset r14 i11 i48 h1 _) ; finalize.
Qed.
Lemma t39 : p70 -> p69.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i48 i47 h0 _) ; finalize.
Qed.
Lemma l58 : s1 -> p69 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))), [-1.38778e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l59 h0).
 apply t39. exact h1.
Qed.
Definition f64 := Float2 (-1729969659211815) (-107).
Definition i49 := makepairF f64 f55.
Notation p72 := (BND r64 i49). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.06618e-17, -6.93889e-18]) *)
Notation r66 := ((r15 - r16)%R).
Notation r67 := ((r18 - r39)%R).
Notation r65 := ((r66 - r67)%R).
Notation p73 := (BND r65 i49). (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.06618e-17, -6.93889e-18]) *)
Definition f65 := Float2 (-43) (-62).
Definition f66 := Float2 (-5) (-59).
Definition i50 := makepairF f65 f66.
Notation p74 := (BND r66 i50). (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6, [-9.32414e-18, -8.67362e-18]) *)
Lemma t40 : p19 -> p20 -> p74.
 intros h0 h1.
 refine (sub r15 r16 i12 i13 i50 h0 h1 _) ; finalize.
Qed.
Lemma l62 : s1 -> p74 (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6, [-9.32414e-18, -8.67362e-18]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t40. exact h1. exact h2.
Qed.
Definition f67 := Float2 (-1) (-59).
Definition f68 := Float2 (217041659392039) (-107).
Definition i51 := makepairF f67 f68.
Notation p75 := (BND r67 i51). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-1.73472e-18, 1.33762e-18]) *)
Notation r69 := ((r18 - r19)%R).
Notation r70 := ((r19 - r39)%R).
Notation r68 := ((r69 + r70)%R).
Notation p76 := (BND r68 i51). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.73472e-18, 1.33762e-18]) *)
Definition f69 := Float2 (-1) (-61).
Definition f70 := Float2 (1) (-61).
Definition i52 := makepairF f69 f70.
Notation p77 := (BND r69 i52). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [-4.33681e-19, 4.33681e-19]) *)
Definition i53 := makepairF f21 f23.
Notation p78 := (ABS r19 i53). (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [1.11022e-16, 0.0078125]) *)
Notation p79 := (ABS r11 i10). (* ABS(float<53,-1074,ne>(x * x), [1.42109e-14, 0.5625]) *)
Lemma t41 : p15 -> p79.
 intros h0.
 refine (abs_of_bnd_p r11 i10 i10 h0 _) ; finalize.
Qed.
Lemma l67 : s1 -> p79 (* ABS(float<53,-1074,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t41. exact h1.
Qed.
Notation p80 := (ABS r20 i17). (* ABS(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [0.0078125, 0.00976562]) *)
Lemma t42 : p25 -> p80.
 intros h0.
 refine (abs_of_bnd_p r20 i17 i17 h0 _) ; finalize.
Qed.
Lemma l68 : s1 -> p80 (* ABS(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t42. exact h1.
Qed.
Notation p81 := (ABS r11 i37). (* ABS(float<53,-1074,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t43 : p81 -> p80 -> p78.
 intros h0 h1.
 refine (mul_aa r11 r20 i37 i17 i53 h0 h1 _) ; finalize.
Qed.
Lemma l66 : s1 -> p78 (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l67 h0).
 assert (h2 := l68 h0).
 apply t43. refine (abs_subset r11 i10 i37 h1 _) ; finalize. exact h2.
Qed.
Lemma t44 : p78 -> p77.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i53 i52 h0 _) ; finalize.
Qed.
Lemma l65 : s1 -> p77 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [-4.33681e-19, 4.33681e-19]) *).
 intros h0.
 assert (h1 := l66 h0).
 apply t44. exact h1.
Qed.
Definition f71 := Float2 (-3) (-61).
Definition f72 := Float2 (146672915214375) (-107).
Definition i54 := makepairF f71 f72.
Notation p82 := (BND r70 i54). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-1.30104e-18, 9.03942e-19]) *)
Notation r73 := ((r20 - r40)%R).
Notation r72 := ((r11 * r73)%R).
Notation r74 := ((r61 * r40)%R).
Notation r71 := ((r72 + r74)%R).
Notation p83 := (BND r71 i54). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-1.30104e-18, 9.03942e-19]) *)
Definition f73 := Float2 (-3) (-62).
Definition f74 := Float2 (286451685699467) (-109).
Definition i55 := makepairF f73 f74.
Notation p84 := (BND r72 i55). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-6.50521e-19, 4.41349e-19]) *)
Definition f75 := Float2 (-5) (-62).
Definition f76 := Float2 (4073979529947975) (-112).
Definition i56 := makepairF f75 f76.
Notation p85 := (BND r73 i56). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-1.0842e-18, 7.8462e-19]) *)
Notation r76 := ((r20 - r21)%R).
Notation r77 := ((r21 - r40)%R).
Notation r75 := ((r76 + r77)%R).
Notation p86 := (BND r75 i56). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) + (float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.0842e-18, 7.8462e-19]) *)
Definition f77 := Float2 (-1) (-60).
Definition f78 := Float2 (1) (-60).
Definition i57 := makepairF f77 f78.
Notation p87 := (BND r76 i57). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [-8.67362e-19, 8.67362e-19]) *)
Definition f79 := Float2 (1) (-6).
Definition i58 := makepairF f23 f79.
Notation p88 := (ABS r21 i58). (* ABS(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))), [0.0078125, 0.015625]) *)
Notation p89 := (BND r21 i58). (* BND(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))), [0.0078125, 0.015625]) *)
Lemma t45 : p89 -> p88.
 intros h0.
 refine (abs_of_bnd_p r21 i58 i58 h0 _) ; finalize.
Qed.
Lemma l75 : s1 -> p88 (* ABS(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))), [0.0078125, 0.015625]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t45. refine (subset r21 i17 i58 h1 _) ; finalize.
Qed.
Lemma t46 : p88 -> p87.
 intros h0.
 refine (float_absolute_wide_ne _ _ r21 i58 i57 h0 _) ; finalize.
Qed.
Lemma l74 : s1 -> p87 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))), [-8.67362e-19, 8.67362e-19]) *).
 intros h0.
 assert (h1 := l75 h0).
 apply t46. exact h1.
Qed.
Definition f80 := Float2 (-1) (-62).
Definition f81 := Float2 (-429620097422521) (-112).
Definition i59 := makepairF f80 f81.
Notation p90 := (BND r77 i59). (* BND(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-2.1684e-19, -8.27418e-20]) *)
Notation r79 := ((r22 - r23)%R).
Notation r80 := ((r25 - r41)%R).
Notation r78 := ((r79 - r80)%R).
Notation p91 := (BND r78 i59). (* BND(float<53,-1074,ne>(1 / 120) - 1 / 120 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - x * x * (1 / 5040 - x * x / 362880)), [-2.1684e-19, -8.27418e-20]) *)
Definition f82 := Float2 (-3) (-64).
Definition f83 := Float2 (-1) (-63).
Definition i60 := makepairF f82 f83.
Notation p92 := (BND r79 i60). (* BND(float<53,-1074,ne>(1 / 120) - 1 / 120, [-1.6263e-19, -1.0842e-19]) *)
Lemma t47 : p27 -> p28 -> p92.
 intros h0 h1.
 refine (sub r22 r23 i18 i19 i60 h0 h1 _) ; finalize.
Qed.
Lemma l78 : s1 -> p92 (* BND(float<53,-1074,ne>(1 / 120) - 1 / 120, [-1.6263e-19, -1.0842e-19]) *).
 intros h0.
 assert (h1 := l28 h0).
 assert (h2 := l29 h0).
 apply t47. exact h1. exact h2.
Qed.
Definition f84 := Float2 (-133329855998791) (-112).
Definition f85 := Float2 (1) (-64).
Definition i61 := makepairF f84 f85.
Notation p93 := (BND r80 i61). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - x * x * (1 / 5040 - x * x / 362880), [-2.56784e-20, 5.42101e-20]) *)
Notation r82 := ((r25 - r26)%R).
Notation r83 := ((r26 - r41)%R).
Notation r81 := ((r82 + r83)%R).
Notation p94 := (BND r81 i61). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - x * x * (1 / 5040 - x * x / 362880)), [-2.56784e-20, 5.42101e-20]) *)
Definition f86 := Float2 (-1) (-67).
Definition i62 := makepairF f86 f38.
Notation p95 := (BND r82 i62). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [-6.77626e-21, 2.71051e-20]) *)
Definition i63 := makepairF f30 f32.
Notation p96 := (ABS r26 i63). (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [1.73472e-18, 0.00012207]) *)
Notation p97 := (ABS r27 i23). (* ABS(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [0.00012207, 0.000213623]) *)
Lemma t48 : p33 -> p97.
 intros h0.
 refine (abs_of_bnd_p r27 i23 i23 h0 _) ; finalize.
Qed.
Lemma l83 : s1 -> p97 (* ABS(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [0.00012207, 0.000213623]) *).
 intros h0.
 assert (h1 := l33 h0).
 apply t48. exact h1.
Qed.
Lemma t49 : p79 -> p97 -> p96.
 intros h0 h1.
 refine (mul_aa r11 r27 i10 i23 i63 h0 h1 _) ; finalize.
Qed.
Lemma l82 : s1 -> p96 (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [1.73472e-18, 0.00012207]) *).
 intros h0.
 assert (h1 := l67 h0).
 assert (h2 := l83 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p96 -> p95.
 intros h0.
 refine (float_absolute_wide_ne _ _ r26 i63 i62 h0 _) ; finalize.
Qed.
Lemma l81 : s1 -> p95 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [-6.77626e-21, 2.71051e-20]) *).
 intros h0.
 assert (h1 := l82 h0).
 apply t50. exact h1.
Qed.
Definition f87 := Float2 (-98145483909959) (-112).
Definition i64 := makepairF f87 f38.
Notation p98 := (BND r83 i64). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - x * x * (1 / 5040 - x * x / 362880), [-1.89021e-20, 2.71051e-20]) *)
Notation r86 := ((r27 - r42)%R).
Notation r85 := ((r11 * r86)%R).
Notation r87 := ((r61 * r42)%R).
Notation r84 := ((r85 + r87)%R).
Notation p99 := (BND r84 i64). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880)) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 5040 - x * x / 362880), [-1.89021e-20, 2.71051e-20]) *)
Definition f88 := Float2 (-163827668852763) (-114).
Definition f89 := Float2 (1) (-66).
Definition i65 := makepairF f88 f89.
Notation p100 := (BND r85 i65). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880)), [-7.88802e-21, 1.35525e-20]) *)
Definition f90 := Float2 (-145624594535789) (-113).
Definition f91 := Float2 (3) (-67).
Definition i66 := makepairF f90 f91.
Notation p101 := (BND r86 i66). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880), [-1.40231e-20, 2.03288e-20]) *)
Notation r89 := ((r27 - r28)%R).
Notation r90 := ((r28 - r42)%R).
Notation r88 := ((r89 + r90)%R).
Notation p102 := (BND r88 i66). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) + (float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - (1 / 5040 - x * x / 362880)), [-1.40231e-20, 2.03288e-20]) *)
Definition f92 := Float2 (-1) (-66).
Definition i67 := makepairF f92 f89.
Notation p103 := (BND r89 i67). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [-1.35525e-20, 1.35525e-20]) *)
Definition f93 := Float2 (1) (-12).
Definition i68 := makepairF f32 f93.
Notation p104 := (ABS r28 i68). (* ABS(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880), [0.00012207, 0.000244141]) *)
Notation p105 := (BND r28 i68). (* BND(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880), [0.00012207, 0.000244141]) *)
Lemma t51 : p105 -> p104.
 intros h0.
 refine (abs_of_bnd_p r28 i68 i68 h0 _) ; finalize.
Qed.
Lemma l90 : s1 -> p104 (* ABS(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880), [0.00012207, 0.000244141]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t51. refine (subset r28 i23 i68 h1 _) ; finalize.
Qed.
Lemma t52 : p104 -> p103.
 intros h0.
 refine (float_absolute_wide_ne _ _ r28 i68 i67 h0 _) ; finalize.
Qed.
Lemma l89 : s1 -> p103 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)), [-1.35525e-20, 1.35525e-20]) *).
 intros h0.
 assert (h1 := l90 h0).
 apply t52. exact h1.
Qed.
Definition f94 := Float2 (-4887106180461) (-113).
Definition f95 := Float2 (1) (-67).
Definition i69 := makepairF f94 f95.
Notation p106 := (BND r90 i69). (* BND(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - (1 / 5040 - x * x / 362880), [-4.70611e-22, 6.77626e-21]) *)
Notation r92 := ((r29 - r30)%R).
Notation r93 := ((r32 - r43)%R).
Notation r91 := ((r92 - r93)%R).
Notation p107 := (BND r91 i69). (* BND(float<53,-1074,ne>(1 / 5040) - 1 / 5040 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - x * x / 362880), [-4.70611e-22, 6.77626e-21]) *)
Definition f96 := Float2 (-1) (-72).
Definition i70 := makepairF f96 f3.
Notation p108 := (BND r92 i70). (* BND(float<53,-1074,ne>(1 / 5040) - 1 / 5040, [-2.11758e-22, 0]) *)
Lemma t53 : p35 -> p36 -> p108.
 intros h0 h1.
 refine (sub r29 r30 i24 i25 i70 h0 h1 _) ; finalize.
Qed.
Lemma l93 : s1 -> p108 (* BND(float<53,-1074,ne>(1 / 5040) - 1 / 5040, [-2.11758e-22, 0]) *).
 intros h0.
 assert (h1 := l35 h0).
 assert (h2 := l36 h0).
 apply t53. exact h1. exact h2.
Qed.
Definition f97 := Float2 (2688082924909) (-113).
Definition i71 := makepairF f86 f97.
Notation p109 := (BND r93 i71). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - x * x / 362880, [-6.77626e-21, 2.58853e-22]) *)
Notation r95 := ((r32 - r33)%R).
Notation r96 := ((r33 - r43)%R).
Notation r94 := ((r95 + r96)%R).
Notation p110 := (BND r94 i71). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - float<53,-1074,ne>(x * x) / 362880 + (float<53,-1074,ne>(x * x) / 362880 - x * x / 362880), [-6.77626e-21, 2.58853e-22]) *)
Definition f98 := Float2 (-1) (-68).
Definition f99 := Float2 (1) (-73).
Definition i72 := makepairF f98 f99.
Notation p111 := (BND r95 i72). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - float<53,-1074,ne>(x * x) / 362880, [-3.38813e-21, 1.05879e-22]) *)
Definition f100 := Float2 (1) (-19).
Definition i73 := makepairF f38 f100.
Notation p112 := (ABS r33 i73). (* ABS(float<53,-1074,ne>(x * x) / 362880, [2.71051e-20, 1.90735e-06]) *)
Definition f101 := Float2 (5) (16).
Definition i74 := makepairF f101 f41.
Notation p113 := (ABS r34 i74). (* ABS(362880, [327680, 524288]) *)
Notation p114 := (BND r34 i74). (* BND(362880, [327680, 524288]) *)
Lemma t54 : p114 -> p113.
 intros h0.
 refine (abs_of_bnd_p r34 i74 i74 h0 _) ; finalize.
Qed.
Lemma l98 : s1 -> p113 (* ABS(362880, [327680, 524288]) *).
 intros h0.
 assert (h1 := l40 h0).
 apply t54. refine (subset r34 i29 i74 h1 _) ; finalize.
Qed.
Definition f102 := Float2 (5) (-3).
Definition i75 := makepairF f13 f102.
Notation p115 := (ABS r11 i75). (* ABS(float<53,-1074,ne>(x * x), [1.42109e-14, 0.625]) *)
Lemma t55 : p115 -> p113 -> p112.
 intros h0 h1.
 refine (div_aa r11 r34 i75 i74 i73 h0 h1 _) ; finalize.
Qed.
Lemma l97 : s1 -> p112 (* ABS(float<53,-1074,ne>(x * x) / 362880, [2.71051e-20, 1.90735e-06]) *).
 intros h0.
 assert (h1 := l67 h0).
 assert (h2 := l98 h0).
 apply t55. refine (abs_subset r11 i10 i75 h1 _) ; finalize. exact h2.
Qed.
Lemma t56 : p112 -> p111.
 intros h0.
 refine (float_absolute_wide_ne _ _ r33 i73 i72 h0 _) ; finalize.
Qed.
Lemma l96 : s1 -> p111 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - float<53,-1074,ne>(x * x) / 362880, [-3.38813e-21, 1.05879e-22]) *).
 intros h0.
 assert (h1 := l97 h0).
 apply t56. exact h1.
Qed.
Definition f103 := Float2 (1588571297133) (-113).
Definition i76 := makepairF f98 f103.
Notation p116 := (BND r96 i76). (* BND(float<53,-1074,ne>(x * x) / 362880 - x * x / 362880, [-3.38813e-21, 1.52974e-22]) *)
Notation p117 := (NZR r34). (* NZR(362880) *)
Definition i77 := makepairF f9 f41.
Notation p118 := (ABS r34 i77). (* ABS(362880, [1, 524288]) *)
Lemma t57 : p118 -> p117.
 intros h0.
 refine (nzr_of_abs r34 i77 h0 _) ; finalize.
Qed.
Lemma l100 : s1 -> p117 (* NZR(362880) *).
 intros h0.
 assert (h1 := l98 h0).
 apply t57. refine (abs_subset r34 i74 i77 h1 _) ; finalize.
Qed.
Notation r97 := ((r61 / r34)%R).
Notation p119 := (BND r97 i76). (* BND((float<53,-1074,ne>(x * x) - x * x) / 362880, [-3.38813e-21, 1.52974e-22]) *)
Notation p120 := (BND r61 i4). (* BND(float<53,-1074,ne>(x * x) - x * x, [-5.55112e-17, 5.55112e-17]) *)
Notation p121 := (ABS r12 i30). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t58 : p51 -> p51 -> p121.
 intros h0 h1.
 refine (mul_aa _x _x i38 i38 i30 h0 h1 _) ; finalize.
Qed.
Lemma l103 : s1 -> p121 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t58. refine (abs_subset _x i1 i38 h1 _) ; finalize. refine (abs_subset _x i1 i38 h1 _) ; finalize.
Qed.
Lemma t59 : p121 -> p120.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i30 i4 h0 _) ; finalize.
Qed.
Lemma l102 : s1 -> p120 (* BND(float<53,-1074,ne>(x * x) - x * x, [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l103 h0).
 apply t59. exact h1.
Qed.
Definition f104 := Float2 (-1) (-50).
Definition i78 := makepairF f104 f7.
Notation p122 := (BND r61 i78). (* BND(float<53,-1074,ne>(x * x) - x * x, [-8.88178e-16, 5.55112e-17]) *)
Lemma t60 : p122 -> p41 -> p119.
 intros h0 h1.
 refine (div_op r61 r34 i78 i29 i76 h0 h1 _) ; finalize.
Qed.
Lemma l101 : s1 -> p119 (* BND((float<53,-1074,ne>(x * x) - x * x) / 362880, [-3.38813e-21, 1.52974e-22]) *).
 intros h0.
 assert (h1 := l102 h0).
 assert (h2 := l40 h0).
 apply t60. refine (subset r61 i4 i78 h1 _) ; finalize. exact h2.
Qed.
Lemma t61 : p117 -> p119 -> p116.
 intros h0 h1.
 refine (div_firs _ r34 _ i76 h0 h1) ; finalize.
Qed.
Lemma l99 : s1 -> p116 (* BND(float<53,-1074,ne>(x * x) / 362880 - x * x / 362880, [-3.38813e-21, 1.52974e-22]) *).
 intros h0.
 assert (h1 := l100 h0).
 assert (h2 := l101 h0).
 apply t61. exact h1. exact h2.
Qed.
Lemma t62 : p111 -> p116 -> p110.
 intros h0 h1.
 refine (add r95 r96 i72 i76 i71 h0 h1 _) ; finalize.
Qed.
Lemma l95 : s1 -> p110 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - float<53,-1074,ne>(x * x) / 362880 + (float<53,-1074,ne>(x * x) / 362880 - x * x / 362880), [-6.77626e-21, 2.58853e-22]) *).
 intros h0.
 assert (h1 := l96 h0).
 assert (h2 := l99 h0).
 apply t62. exact h1. exact h2.
Qed.
Lemma t63 : p110 -> p109.
 intros h0.
 refine (sub_xals _ _ _ i71 h0) ; finalize.
Qed.
Lemma l94 : s1 -> p109 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - x * x / 362880, [-6.77626e-21, 2.58853e-22]) *).
 intros h0.
 assert (h1 := l95 h0).
 apply t63. exact h1.
Qed.
Lemma t64 : p108 -> p109 -> p107.
 intros h0 h1.
 refine (sub r92 r93 i70 i71 i69 h0 h1 _) ; finalize.
Qed.
Lemma l92 : s1 -> p107 (* BND(float<53,-1074,ne>(1 / 5040) - 1 / 5040 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - x * x / 362880), [-4.70611e-22, 6.77626e-21]) *).
 intros h0.
 assert (h1 := l93 h0).
 assert (h2 := l94 h0).
 apply t64. exact h1. exact h2.
Qed.
Lemma t65 : p107 -> p106.
 intros h0.
 refine (sub_mibs _ _ _ _ i69 h0) ; finalize.
Qed.
Lemma l91 : s1 -> p106 (* BND(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - (1 / 5040 - x * x / 362880), [-4.70611e-22, 6.77626e-21]) *).
 intros h0.
 assert (h1 := l92 h0).
 apply t65. exact h1.
Qed.
Lemma t66 : p103 -> p106 -> p102.
 intros h0 h1.
 refine (add r89 r90 i67 i69 i66 h0 h1 _) ; finalize.
Qed.
Lemma l88 : s1 -> p102 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) + (float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880) - (1 / 5040 - x * x / 362880)), [-1.40231e-20, 2.03288e-20]) *).
 intros h0.
 assert (h1 := l89 h0).
 assert (h2 := l91 h0).
 apply t66. exact h1. exact h2.
Qed.
Lemma t67 : p102 -> p101.
 intros h0.
 refine (sub_xals _ _ _ i66 h0) ; finalize.
Qed.
Lemma l87 : s1 -> p101 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880), [-1.40231e-20, 2.03288e-20]) *).
 intros h0.
 assert (h1 := l88 h0).
 apply t67. exact h1.
Qed.
Lemma t68 : p15 -> p101 -> p100.
 intros h0 h1.
 refine (mul_po r11 r86 i10 i66 i65 h0 h1 _) ; finalize.
Qed.
Lemma l86 : s1 -> p100 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880)), [-7.88802e-21, 1.35525e-20]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l87 h0).
 apply t68. exact h1. exact h2.
Qed.
Definition f105 := Float2 (-228754266787073) (-114).
Definition i79 := makepairF f105 f89.
Notation p123 := (BND r87 i79). (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 5040 - x * x / 362880), [-1.10141e-20, 1.35525e-20]) *)
Definition f106 := Float2 (228754266787073) (-60).
Definition i80 := makepairF f43 f106.
Notation p124 := (BND r42 i80). (* BND(1 / 5040 - x * x / 362880, [0.000183105, 0.000198413]) *)
Definition f107 := Float2 (1) (-16).
Definition i81 := makepairF f38 f107.
Notation p125 := (BND r43 i81). (* BND(x * x / 362880, [2.71051e-20, 1.52588e-05]) *)
Notation p126 := (BND r12 i30). (* BND(x * x, [1.42109e-14, 1]) *)
Definition f108 := Float2 (1) (16).
Definition i82 := makepairF f108 f41.
Notation p127 := (BND r34 i82). (* BND(362880, [65536, 524288]) *)
Lemma t69 : p126 -> p127 -> p125.
 intros h0 h1.
 refine (div_pp r12 r34 i30 i82 i81 h0 h1 _) ; finalize.
Qed.
Lemma l106 : s1 -> p125 (* BND(x * x / 362880, [2.71051e-20, 1.52588e-05]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l40 h0).
 apply t69. refine (subset r12 i10 i30 h1 _) ; finalize. refine (subset r34 i29 i82 h2 _) ; finalize.
Qed.
Definition f109 := Float2 (13) (-16).
Definition i83 := makepairF f109 f106.
Notation p128 := (BND r30 i83). (* BND(1 / 5040, [0.000198364, 0.000198413]) *)
Lemma t70 : p128 -> p125 -> p124.
 intros h0 h1.
 refine (sub r30 r43 i83 i81 i80 h0 h1 _) ; finalize.
Qed.
Lemma l105 : s1 -> p124 (* BND(1 / 5040 - x * x / 362880, [0.000183105, 0.000198413]) *).
 intros h0.
 assert (h1 := l36 h0).
 assert (h2 := l106 h0).
 apply t70. refine (subset r30 i25 i83 h1 _) ; finalize. exact h2.
Qed.
Definition i84 := makepairF f32 f106.
Notation p129 := (BND r42 i84). (* BND(1 / 5040 - x * x / 362880, [0.00012207, 0.000198413]) *)
Lemma t71 : p120 -> p129 -> p123.
 intros h0 h1.
 refine (mul_op r61 r42 i4 i84 i79 h0 h1 _) ; finalize.
Qed.
Lemma l104 : s1 -> p123 (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 5040 - x * x / 362880), [-1.10141e-20, 1.35525e-20]) *).
 intros h0.
 assert (h1 := l102 h0).
 assert (h2 := l105 h0).
 apply t71. exact h1. refine (subset r42 i80 i84 h2 _) ; finalize.
Qed.
Lemma t72 : p100 -> p123 -> p99.
 intros h0 h1.
 refine (add r85 r87 i65 i79 i64 h0 h1 _) ; finalize.
Qed.
Lemma l85 : s1 -> p99 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880)) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 5040 - x * x / 362880), [-1.89021e-20, 2.71051e-20]) *).
 intros h0.
 assert (h1 := l86 h0).
 assert (h2 := l104 h0).
 apply t72. exact h1. exact h2.
Qed.
Lemma t73 : p99 -> p98.
 intros h0.
 refine (mul_mars _ _ _ _ i64 h0) ; finalize.
Qed.
Lemma l84 : s1 -> p98 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - x * x * (1 / 5040 - x * x / 362880), [-1.89021e-20, 2.71051e-20]) *).
 intros h0.
 assert (h1 := l85 h0).
 apply t73. exact h1.
Qed.
Lemma t74 : p95 -> p98 -> p94.
 intros h0 h1.
 refine (add r82 r83 i62 i64 i61 h0 h1 _) ; finalize.
Qed.
Lemma l80 : s1 -> p94 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)) - x * x * (1 / 5040 - x * x / 362880)), [-2.56784e-20, 5.42101e-20]) *).
 intros h0.
 assert (h1 := l81 h0).
 assert (h2 := l84 h0).
 apply t74. exact h1. exact h2.
Qed.
Lemma t75 : p94 -> p93.
 intros h0.
 refine (sub_xals _ _ _ i61 h0) ; finalize.
Qed.
Lemma l79 : s1 -> p93 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - x * x * (1 / 5040 - x * x / 362880), [-2.56784e-20, 5.42101e-20]) *).
 intros h0.
 assert (h1 := l80 h0).
 apply t75. exact h1.
Qed.
Lemma t76 : p92 -> p93 -> p91.
 intros h0 h1.
 refine (sub r79 r80 i60 i61 i59 h0 h1 _) ; finalize.
Qed.
Lemma l77 : s1 -> p91 (* BND(float<53,-1074,ne>(1 / 120) - 1 / 120 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - x * x * (1 / 5040 - x * x / 362880)), [-2.1684e-19, -8.27418e-20]) *).
 intros h0.
 assert (h1 := l78 h0).
 assert (h2 := l79 h0).
 apply t76. exact h1. exact h2.
Qed.
Lemma t77 : p91 -> p90.
 intros h0.
 refine (sub_mibs _ _ _ _ i59 h0) ; finalize.
Qed.
Lemma l76 : s1 -> p90 (* BND(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-2.1684e-19, -8.27418e-20]) *).
 intros h0.
 assert (h1 := l77 h0).
 apply t77. exact h1.
Qed.
Lemma t78 : p87 -> p90 -> p86.
 intros h0 h1.
 refine (add r76 r77 i57 i59 i56 h0 h1 _) ; finalize.
Qed.
Lemma l73 : s1 -> p86 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) + (float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.0842e-18, 7.8462e-19]) *).
 intros h0.
 assert (h1 := l74 h0).
 assert (h2 := l76 h0).
 apply t78. exact h1. exact h2.
Qed.
Lemma t79 : p86 -> p85.
 intros h0.
 refine (sub_xals _ _ _ i56 h0) ; finalize.
Qed.
Lemma l72 : s1 -> p85 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-1.0842e-18, 7.8462e-19]) *).
 intros h0.
 assert (h1 := l73 h0).
 apply t79. exact h1.
Qed.
Lemma t80 : p15 -> p85 -> p84.
 intros h0 h1.
 refine (mul_po r11 r73 i10 i56 i55 h0 h1 _) ; finalize.
Qed.
Lemma l71 : s1 -> p84 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-6.50521e-19, 4.41349e-19]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l72 h0).
 apply t80. exact h1. exact h2.
Qed.
Definition f110 := Float2 (300239975158033) (-109).
Definition i85 := makepairF f73 f110.
Notation p130 := (BND r74 i85). (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-6.50521e-19, 4.62593e-19]) *)
Definition f111 := Float2 (33) (-12).
Definition f112 := Float2 (300239975158033) (-55).
Definition i86 := makepairF f111 f112.
Notation p131 := (BND r40 i86). (* BND(1 / 120 - x * x * (1 / 5040 - x * x / 362880), [0.00805664, 0.00833333]) *)
Definition f113 := Float2 (3) (-60).
Definition i87 := makepairF f113 f93.
Notation p132 := (BND r41 i87). (* BND(x * x * (1 / 5040 - x * x / 362880), [2.60209e-18, 0.000244141]) *)
Definition i88 := makepairF f43 f93.
Notation p133 := (BND r42 i88). (* BND(1 / 5040 - x * x / 362880, [0.000183105, 0.000244141]) *)
Lemma t81 : p126 -> p133 -> p132.
 intros h0 h1.
 refine (mul_pp r12 r42 i30 i88 i87 h0 h1 _) ; finalize.
Qed.
Lemma l109 : s1 -> p132 (* BND(x * x * (1 / 5040 - x * x / 362880), [2.60209e-18, 0.000244141]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l105 h0).
 apply t81. refine (subset r12 i10 i30 h1 _) ; finalize. refine (subset r42 i80 i88 h2 _) ; finalize.
Qed.
Definition f114 := Float2 (9607679205057059) (-60).
Definition i89 := makepairF f44 f114.
Notation p134 := (BND r23 i89). (* BND(1 / 120, [0.00830078, 0.00833333]) *)
Lemma t82 : p134 -> p132 -> p131.
 intros h0 h1.
 refine (sub r23 r41 i89 i87 i86 h0 h1 _) ; finalize.
Qed.
Lemma l108 : s1 -> p131 (* BND(1 / 120 - x * x * (1 / 5040 - x * x / 362880), [0.00805664, 0.00833333]) *).
 intros h0.
 assert (h1 := l29 h0).
 assert (h2 := l109 h0).
 apply t82. refine (subset r23 i19 i89 h1 _) ; finalize. exact h2.
Qed.
Definition i90 := makepairF f23 f112.
Notation p135 := (BND r40 i90). (* BND(1 / 120 - x * x * (1 / 5040 - x * x / 362880), [0.0078125, 0.00833333]) *)
Lemma t83 : p120 -> p135 -> p130.
 intros h0 h1.
 refine (mul_op r61 r40 i4 i90 i85 h0 h1 _) ; finalize.
Qed.
Lemma l107 : s1 -> p130 (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-6.50521e-19, 4.62593e-19]) *).
 intros h0.
 assert (h1 := l102 h0).
 assert (h2 := l108 h0).
 apply t83. exact h1. refine (subset r40 i86 i90 h2 _) ; finalize.
Qed.
Lemma t84 : p84 -> p130 -> p83.
 intros h0 h1.
 refine (add r72 r74 i55 i85 i54 h0 h1 _) ; finalize.
Qed.
Lemma l70 : s1 -> p83 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-1.30104e-18, 9.03942e-19]) *).
 intros h0.
 assert (h1 := l71 h0).
 assert (h2 := l107 h0).
 apply t84. exact h1. exact h2.
Qed.
Lemma t85 : p83 -> p82.
 intros h0.
 refine (mul_mars _ _ _ _ i54 h0) ; finalize.
Qed.
Lemma l69 : s1 -> p82 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-1.30104e-18, 9.03942e-19]) *).
 intros h0.
 assert (h1 := l70 h0).
 apply t85. exact h1.
Qed.
Lemma t86 : p77 -> p82 -> p76.
 intros h0 h1.
 refine (add r69 r70 i52 i54 i51 h0 h1 _) ; finalize.
Qed.
Lemma l64 : s1 -> p76 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.73472e-18, 1.33762e-18]) *).
 intros h0.
 assert (h1 := l65 h0).
 assert (h2 := l69 h0).
 apply t86. exact h1. exact h2.
Qed.
Lemma t87 : p76 -> p75.
 intros h0.
 refine (sub_xals _ _ _ i51 h0) ; finalize.
Qed.
Lemma l63 : s1 -> p75 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-1.73472e-18, 1.33762e-18]) *).
 intros h0.
 assert (h1 := l64 h0).
 apply t87. exact h1.
Qed.
Lemma t88 : p74 -> p75 -> p73.
 intros h0 h1.
 refine (sub r66 r67 i50 i51 i49 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p73 (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.06618e-17, -6.93889e-18]) *).
 intros h0.
 assert (h1 := l62 h0).
 assert (h2 := l63 h0).
 apply t88. exact h1. exact h2.
Qed.
Lemma t89 : p73 -> p72.
 intros h0.
 refine (sub_mibs _ _ _ _ i49 h0) ; finalize.
Qed.
Lemma l60 : s1 -> p72 (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.06618e-17, -6.93889e-18]) *).
 intros h0.
 assert (h1 := l61 h0).
 apply t89. exact h1.
Qed.
Lemma t90 : p69 -> p72 -> p68.
 intros h0 h1.
 refine (add r63 r64 i47 i49 i46 h0 h1 _) ; finalize.
Qed.
Lemma l57 : s1 -> p68 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) + (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.45395e-17, 6.93889e-18]) *).
 intros h0.
 assert (h1 := l58 h0).
 assert (h2 := l60 h0).
 apply t90. exact h1. exact h2.
Qed.
Lemma t91 : p68 -> p67.
 intros h0.
 refine (sub_xals _ _ _ i46 h0) ; finalize.
Qed.
Lemma l56 : s1 -> p67 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.45395e-17, 6.93889e-18]) *).
 intros h0.
 assert (h1 := l57 h0).
 apply t91. exact h1.
Qed.
Lemma t92 : p15 -> p67 -> p66.
 intros h0 h1.
 refine (mul_po r11 r59 i10 i46 i45 h0 h1 _) ; finalize.
Qed.
Lemma l55 : s1 -> p66 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-1.38035e-17, 4.33681e-18]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l56 h0).
 apply t92. exact h1. exact h2.
Qed.
Definition f115 := Float2 (-24019198012642629) (-111).
Definition f116 := Float2 (11) (-60).
Definition i91 := makepairF f115 f116.
Notation p136 := (BND r60 i91). (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-9.25186e-18, 9.54098e-18]) *)
Definition f117 := Float2 (24019198012642629) (-57).
Definition i92 := makepairF f12 f117.
Notation p137 := (BND r38 i92). (* BND(1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [0.125, 0.166667]) *)
Definition f118 := Float2 (33) (-58).
Definition i93 := makepairF f118 f22.
Notation p138 := (BND r39 i93). (* BND(x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [1.14492e-16, 0.03125]) *)
Definition i94 := makepairF f111 f22.
Notation p139 := (BND r40 i94). (* BND(1 / 120 - x * x * (1 / 5040 - x * x / 362880), [0.00805664, 0.03125]) *)
Lemma t93 : p126 -> p139 -> p138.
 intros h0 h1.
 refine (mul_pp r12 r40 i30 i94 i93 h0 h1 _) ; finalize.
Qed.
Lemma l112 : s1 -> p138 (* BND(x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [1.14492e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l108 h0).
 apply t93. refine (subset r12 i10 i30 h1 _) ; finalize. refine (subset r40 i86 i94 h2 _) ; finalize.
Qed.
Definition i95 := makepairF f45 f20.
Notation p140 := (BND r16 i95). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t94 : p140 -> p138 -> p137.
 intros h0 h1.
 refine (sub r16 r39 i95 i93 i92 h0 h1 _) ; finalize.
Qed.
Lemma l111 : s1 -> p137 (* BND(1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l112 h0).
 apply t94. refine (subset r16 i13 i95 h1 _) ; finalize. exact h2.
Qed.
Lemma t95 : p120 -> p137 -> p136.
 intros h0 h1.
 refine (mul_op r61 r38 i4 i92 i91 h0 h1 _) ; finalize.
Qed.
Lemma l110 : s1 -> p136 (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-9.25186e-18, 9.54098e-18]) *).
 intros h0.
 assert (h1 := l102 h0).
 assert (h2 := l111 h0).
 apply t95. exact h1. exact h2.
Qed.
Lemma t96 : p66 -> p136 -> p65.
 intros h0 h1.
 refine (add r58 r60 i45 i91 i44 h0 h1 _) ; finalize.
Qed.
Lemma l54 : s1 -> p65 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.30554e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l55 h0).
 assert (h2 := l110 h0).
 apply t96. exact h1. exact h2.
Qed.
Lemma t97 : p65 -> p64.
 intros h0.
 refine (mul_mars _ _ _ _ i44 h0) ; finalize.
Qed.
Lemma l53 : s1 -> p64 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.30554e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t97. exact h1.
Qed.
Lemma t98 : p62 -> p64 -> p61.
 intros h0 h1.
 refine (add r55 r56 i43 i44 i42 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p61 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.99942e-17, 2.77556e-17]) *).
 intros h0.
 assert (h1 := l51 h0).
 assert (h2 := l53 h0).
 apply t98. exact h1. exact h2.
Qed.
Lemma t99 : p61 -> p60.
 intros h0.
 refine (sub_xals _ _ _ i42 h0) ; finalize.
Qed.
Lemma l49 : s1 -> p60 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.99942e-17, 2.77556e-17]) *).
 intros h0.
 assert (h1 := l50 h0).
 apply t99. exact h1.
Qed.
Lemma t100 : p60 -> p59.
 intros h0.
 refine (neg r53 i42 i41 h0 _) ; finalize.
Qed.
Lemma l48 : s1 -> p59 (* BND(-(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.77556e-17, 2.99942e-17]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t100. exact h1.
Qed.
Lemma t101 : p59 -> p58.
 intros h0.
 refine (sub_fils _ _ _ i41 h0) ; finalize.
Qed.
Lemma l47 : s1 -> p58 (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.77556e-17, 2.99942e-17]) *).
 intros h0.
 assert (h1 := l48 h0).
 apply t101. exact h1.
Qed.
Lemma t102 : p56 -> p58 -> p55.
 intros h0 h1.
 refine (add r50 r51 i4 i41 i40 h0 h1 _) ; finalize.
Qed.
Lemma l44 : s1 -> p55 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) + (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))))), [-8.32667e-17, 8.55054e-17]) *).
 intros h0.
 assert (h1 := l45 h0).
 assert (h2 := l47 h0).
 apply t102. exact h1. exact h2.
Qed.
Lemma t103 : p55 -> p54.
 intros h0.
 refine (sub_xals _ _ _ i40 h0) ; finalize.
Qed.
Lemma l43 : s1 -> p54 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-8.32667e-17, 8.55054e-17]) *).
 intros h0.
 assert (h1 := l44 h0).
 apply t103. exact h1.
Qed.
Lemma t104 : p1 -> p54 -> p53.
 intros h0 h1.
 refine (mul_po _x r48 i1 i40 i39 h0 h1 _) ; finalize.
Qed.
Lemma l42 : s1 -> p53 (* BND(x * (float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))))), [-6.245e-17, 6.4129e-17]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l43 h0).
 apply t104. exact h1. exact h2.
Qed.
Lemma t105 : p53 -> p52.
 intros h0.
 refine (mul_fils _ _ _ i39 h0) ; finalize.
Qed.
Lemma l41 : s1 -> p52 (* BND(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - Mts, [-6.245e-17, 6.4129e-17]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t105. exact h1.
Qed.
Lemma t106 : p6 -> p52 -> p5.
 intros h0 h1.
 refine (add r45 r46 i4 i39 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) + (x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 120) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 5040) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 362880)))))))) - Mts), [-1.17961e-16, 1.1964e-16]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l41 h0).
 apply t106. exact h1. exact h2.
Qed.
Lemma t107 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-1.17961e-16, 1.1964e-16]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t107. exact h1.
Qed.
Lemma t108 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 1.1964e-16]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t108. exact h1.
Qed.
Lemma t109 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 1.1964e-16]) *).
 intros h0.
 assert (h1 := l4 h0).
 apply t109. exact h1.
Qed.
Lemma l1 : s1 -> False.
 intros h0.
 assert (h1 := l2 h0).
 assert (h2 := l3 h0).
 refine (simplify (Tatom false (Abnd 0%nat i2)) Tfalse (Abnd 0%nat i2) (List.cons r2 List.nil) h2 h1 _) ; finalize.
Qed.
End Generated_by_Gappa.
