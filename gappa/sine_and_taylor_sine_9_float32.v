Require Import Gappa.Gappa_library.
Section Generated_by_Gappa.
Variable _x : R.
Definition f1 := Float2 (1) (-23).
Definition f2 := Float2 (3) (-2).
Definition i1 := makepairF f1 f2.
Notation p1 := (BND _x i1). (* BND(x, [1.19209e-07, 0.75]) *)
Notation r8 := (Float1 (1)).
Notation r12 := ((_x * _x)%R).
Notation r11 := ((rounding_float rndNE (24)%positive (-149)%Z) r12).
Notation r17 := (Float1 (6)).
Notation r16 := ((r8 / r17)%R).
Notation r15 := ((rounding_float rndNE (24)%positive (-149)%Z) r16).
Notation r24 := (Float1 (120)).
Notation r23 := ((r8 / r24)%R).
Notation r22 := ((rounding_float rndNE (24)%positive (-149)%Z) r23).
Notation r31 := (Float1 (5040)).
Notation r30 := ((r8 / r31)%R).
Notation r29 := ((rounding_float rndNE (24)%positive (-149)%Z) r30).
Notation r34 := (Float1 (362880)).
Notation r33 := ((r11 / r34)%R).
Notation r32 := ((rounding_float rndNE (24)%positive (-149)%Z) r33).
Notation r28 := ((r29 - r32)%R).
Notation r27 := ((rounding_float rndNE (24)%positive (-149)%Z) r28).
Notation r26 := ((r11 * r27)%R).
Notation r25 := ((rounding_float rndNE (24)%positive (-149)%Z) r26).
Notation r21 := ((r22 - r25)%R).
Notation r20 := ((rounding_float rndNE (24)%positive (-149)%Z) r21).
Notation r19 := ((r11 * r20)%R).
Notation r18 := ((rounding_float rndNE (24)%positive (-149)%Z) r19).
Notation r14 := ((r15 - r18)%R).
Notation r13 := ((rounding_float rndNE (24)%positive (-149)%Z) r14).
Notation r10 := ((r11 * r13)%R).
Notation r9 := ((rounding_float rndNE (24)%positive (-149)%Z) r10).
Notation r7 := ((r8 - r9)%R).
Notation r6 := ((rounding_float rndNE (24)%positive (-149)%Z) r7).
Notation r5 := ((_x * r6)%R).
Notation _ts := ((rounding_float rndNE (24)%positive (-149)%Z) r5).
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
Definition f4 := Float2 (310094298444302027) (-82).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 6.4126e-08]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 6.4126e-08]) *)
Definition f5 := Float2 (-310094298444302027) (-82).
Definition f6 := Float2 (17) (-28).
Definition i3 := makepairF f5 f6.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-6.4126e-08, 6.33299e-08]) *)
Notation r45 := ((_ts - r5)%R).
Notation r46 := ((r5 - _Mts)%R).
Notation r44 := ((r45 + r46)%R).
Notation p5 := (BND r44 i3). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - Mts), [-6.4126e-08, 6.33299e-08]) *)
Definition f7 := Float2 (-1) (-25).
Definition f8 := Float2 (1) (-25).
Definition i4 := makepairF f7 f8.
Notation p6 := (BND r45 i4). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [-2.98023e-08, 2.98023e-08]) *)
Definition f9 := Float2 (1) (-24).
Definition f10 := Float2 (1) (0).
Definition i5 := makepairF f9 f10.
Notation p7 := (ABS r5 i5). (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [5.96046e-08, 1]) *)
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
Definition f11 := Float2 (1) (-1).
Definition i6 := makepairF f11 f10.
Notation p9 := (ABS r6 i6). (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))), [0.5, 1]) *)
Definition i7 := makepairF f10 f10.
Notation p12 := (BND r8 i7). (* BND(1, [1, 1]) *)
Lemma t2 : p12.
 refine (constant1 _ i7 _) ; finalize.
Qed.
Lemma l14 : s1 -> p12 (* BND(1, [1, 1]) *).
 intros h0.
 apply t2.
Qed.
Definition f12 := Float2 (1) (-49).
Definition i8 := makepairF f12 f11.
Notation p13 := (BND r9 i8). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))), [1.77636e-15, 0.5]) *)
Definition f13 := Float2 (1) (-3).
Definition i9 := makepairF f12 f13.
Notation p14 := (BND r10 i9). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [1.77636e-15, 0.125]) *)
Definition f14 := Float2 (1) (-46).
Definition f15 := Float2 (9) (-4).
Definition i10 := makepairF f14 f15.
Notation p15 := (BND r11 i10). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *)
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
Lemma l17 : s1 -> p15 (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l18 h0).
 apply t4. exact h1.
Qed.
Definition f16 := Float2 (3) (-4).
Definition i11 := makepairF f13 f16.
Notation p17 := (BND r13 i11). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [0.125, 0.1875]) *)
Notation p18 := (BND r14 i11). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))), [0.125, 0.1875]) *)
Definition f17 := Float2 (11184811) (-26).
Definition i12 := makepairF f17 f17.
Notation p19 := (BND r15 i12). (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f18 := Float2 (384307168202282325) (-61).
Definition f19 := Float2 (48038396025285291) (-58).
Definition i13 := makepairF f18 f19.
Notation p20 := (BND r16 i13). (* BND(1 / 6, [0.166667, 0.166667]) *)
Definition f20 := Float2 (3) (1).
Definition i14 := makepairF f20 f20.
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
Definition f21 := Float2 (89478485) (-29).
Definition i15 := makepairF f21 f17.
Notation p22 := (BND r16 i15). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t7 : p22 -> p19.
 intros h0.
 refine (float_round_ne _ _ r16 i15 i12 h0 _) ; finalize.
Qed.
Lemma l21 : s1 -> p19 (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 apply t7. refine (subset r16 i13 i15 h1 _) ; finalize.
Qed.
Definition f22 := Float2 (1) (-53).
Definition f23 := Float2 (1) (-5).
Definition i16 := makepairF f22 f23.
Notation p23 := (BND r18 i16). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i16). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [1.11022e-16, 0.03125]) *)
Definition f24 := Float2 (1) (-7).
Definition f25 := Float2 (5) (-9).
Definition i17 := makepairF f24 f25.
Notation p25 := (BND r20 i17). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [0.0078125, 0.00976562]) *)
Notation p26 := (BND r21 i17). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))), [0.0078125, 0.00976562]) *)
Definition f26 := Float2 (8947849) (-30).
Definition i18 := makepairF f26 f26.
Notation p27 := (BND r22 i18). (* BND(float<24,-149,ne>(1 / 120), [0.00833333, 0.00833333]) *)
Definition f27 := Float2 (286331153) (-35).
Definition f28 := Float2 (614891469123651721) (-66).
Definition i19 := makepairF f27 f28.
Notation p28 := (BND r23 i19). (* BND(1 / 120, [0.00833333, 0.00833333]) *)
Definition f29 := Float2 (15) (3).
Definition i20 := makepairF f29 f29.
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
Definition i21 := makepairF f27 f26.
Notation p30 := (BND r23 i21). (* BND(1 / 120, [0.00833333, 0.00833333]) *)
Lemma t10 : p30 -> p27.
 intros h0.
 refine (float_round_ne _ _ r23 i21 i18 h0 _) ; finalize.
Qed.
Lemma l28 : s1 -> p27 (* BND(float<24,-149,ne>(1 / 120), [0.00833333, 0.00833333]) *).
 intros h0.
 assert (h1 := l29 h0).
 apply t10. refine (subset r23 i19 i21 h1 _) ; finalize.
Qed.
Definition f30 := Float2 (1) (-59).
Definition f31 := Float2 (1) (-11).
Definition i22 := makepairF f30 f31.
Notation p31 := (BND r25 i22). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))), [1.73472e-18, 0.000488281]) *)
Notation p32 := (BND r26 i22). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [1.73472e-18, 0.000488281]) *)
Definition f32 := Float2 (1) (-13).
Definition f33 := Float2 (7) (-15).
Definition i23 := makepairF f32 f33.
Notation p33 := (BND r27 i23). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [0.00012207, 0.000213623]) *)
Notation p34 := (BND r28 i23). (* BND(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880), [0.00012207, 0.000213623]) *)
Definition f34 := Float2 (13634817) (-36).
Definition i24 := makepairF f34 f34.
Notation p35 := (BND r29 i24). (* BND(float<24,-149,ne>(1 / 5040), [0.000198413, 0.000198413]) *)
Definition f35 := Float2 (3660068268593165) (-64).
Definition f36 := Float2 (228754266787073) (-60).
Definition i25 := makepairF f35 f36.
Notation p36 := (BND r30 i25). (* BND(1 / 5040, [0.000198413, 0.000198413]) *)
Definition f37 := Float2 (315) (4).
Definition i26 := makepairF f37 f37.
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
Definition f38 := Float2 (54539267) (-38).
Definition i27 := makepairF f38 f34.
Notation p38 := (BND r30 i27). (* BND(1 / 5040, [0.000198413, 0.000198413]) *)
Lemma t13 : p38 -> p35.
 intros h0.
 refine (float_round_ne _ _ r30 i27 i24 h0 _) ; finalize.
Qed.
Lemma l35 : s1 -> p35 (* BND(float<24,-149,ne>(1 / 5040), [0.000198413, 0.000198413]) *).
 intros h0.
 assert (h1 := l36 h0).
 apply t13. refine (subset r30 i25 i27 h1 _) ; finalize.
Qed.
Definition f39 := Float2 (1) (-65).
Definition f40 := Float2 (1) (-14).
Definition i28 := makepairF f39 f40.
Notation p39 := (BND r32 i28). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880), [2.71051e-20, 6.10352e-05]) *)
Notation p40 := (BND r33 i28). (* BND(float<24,-149,ne>(x * x) / 362880, [2.71051e-20, 6.10352e-05]) *)
Definition f41 := Float2 (2835) (7).
Definition f42 := Float2 (1) (19).
Definition i29 := makepairF f41 f42.
Notation p41 := (BND r34 i29). (* BND(362880, [362880, 524288]) *)
Lemma t14 : p41.
 refine (constant1 _ i29 _) ; finalize.
Qed.
Lemma l40 : s1 -> p41 (* BND(362880, [362880, 524288]) *).
 intros h0.
 apply t14.
Qed.
Definition i30 := makepairF f14 f10.
Notation p42 := (BND r11 i30). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 1]) *)
Definition f43 := Float2 (1) (14).
Definition i31 := makepairF f43 f42.
Notation p43 := (BND r34 i31). (* BND(362880, [16384, 524288]) *)
Lemma t15 : p42 -> p43 -> p40.
 intros h0 h1.
 refine (div_pp r11 r34 i30 i31 i28 h0 h1 _) ; finalize.
Qed.
Lemma l39 : s1 -> p40 (* BND(float<24,-149,ne>(x * x) / 362880, [2.71051e-20, 6.10352e-05]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l40 h0).
 apply t15. refine (subset r11 i10 i30 h1 _) ; finalize. refine (subset r34 i29 i31 h2 _) ; finalize.
Qed.
Lemma t16 : p40 -> p39.
 intros h0.
 refine (float_round_ne _ _ r33 i28 i28 h0 _) ; finalize.
Qed.
Lemma l38 : s1 -> p39 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880), [2.71051e-20, 6.10352e-05]) *).
 intros h0.
 assert (h1 := l39 h0).
 apply t16. exact h1.
Qed.
Definition f44 := Float2 (3) (-14).
Definition i32 := makepairF f44 f33.
Notation p44 := (BND r29 i32). (* BND(float<24,-149,ne>(1 / 5040), [0.000183105, 0.000213623]) *)
Lemma t17 : p44 -> p39 -> p34.
 intros h0 h1.
 refine (sub r29 r32 i32 i28 i23 h0 h1 _) ; finalize.
Qed.
Lemma l34 : s1 -> p34 (* BND(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880), [0.00012207, 0.000213623]) *).
 intros h0.
 assert (h1 := l35 h0).
 assert (h2 := l38 h0).
 apply t17. refine (subset r29 i24 i32 h1 _) ; finalize. exact h2.
Qed.
Lemma t18 : p34 -> p33.
 intros h0.
 refine (float_round_ne _ _ r28 i23 i23 h0 _) ; finalize.
Qed.
Lemma l33 : s1 -> p33 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [0.00012207, 0.000213623]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t18. exact h1.
Qed.
Definition i33 := makepairF f32 f31.
Notation p45 := (BND r27 i33). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [0.00012207, 0.000488281]) *)
Lemma t19 : p42 -> p45 -> p32.
 intros h0 h1.
 refine (mul_pp r11 r27 i30 i33 i22 h0 h1 _) ; finalize.
Qed.
Lemma l32 : s1 -> p32 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [1.73472e-18, 0.000488281]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l33 h0).
 apply t19. refine (subset r11 i10 i30 h1 _) ; finalize. refine (subset r27 i23 i33 h2 _) ; finalize.
Qed.
Lemma t20 : p32 -> p31.
 intros h0.
 refine (float_round_ne _ _ r26 i22 i22 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p31 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))), [1.73472e-18, 0.000488281]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t20. exact h1.
Qed.
Definition f45 := Float2 (17) (-11).
Definition i34 := makepairF f45 f25.
Notation p46 := (BND r22 i34). (* BND(float<24,-149,ne>(1 / 120), [0.00830078, 0.00976562]) *)
Lemma t21 : p46 -> p31 -> p26.
 intros h0 h1.
 refine (sub r22 r25 i34 i22 i17 h0 h1 _) ; finalize.
Qed.
Lemma l27 : s1 -> p26 (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l28 h0).
 assert (h2 := l31 h0).
 apply t21. refine (subset r22 i18 i34 h1 _) ; finalize. exact h2.
Qed.
Lemma t22 : p26 -> p25.
 intros h0.
 refine (float_round_ne _ _ r21 i17 i17 h0 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t22. exact h1.
Qed.
Definition i35 := makepairF f24 f23.
Notation p47 := (BND r20 i35). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [0.0078125, 0.03125]) *)
Lemma t23 : p42 -> p47 -> p24.
 intros h0 h1.
 refine (mul_pp r11 r20 i30 i35 i16 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t23. refine (subset r11 i10 i30 h1 _) ; finalize. refine (subset r20 i17 i35 h2 _) ; finalize.
Qed.
Lemma t24 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i16 i16 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t24. exact h1.
Qed.
Definition f46 := Float2 (5) (-5).
Definition i36 := makepairF f46 f16.
Notation p48 := (BND r15 i36). (* BND(float<24,-149,ne>(1 / 6), [0.15625, 0.1875]) *)
Lemma t25 : p48 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i36 i16 i11 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t25. refine (subset r15 i12 i36 h1 _) ; finalize. exact h2.
Qed.
Lemma t26 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i11 i11 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t26. exact h1.
Qed.
Definition f47 := Float2 (5) (-3).
Definition i37 := makepairF f14 f47.
Notation p49 := (BND r11 i37). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Lemma t27 : p49 -> p17 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i37 i11 i9 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t27. refine (subset r11 i10 i37 h1 _) ; finalize. exact h2.
Qed.
Notation p50 := (BND r10 i8). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [1.77636e-15, 0.5]) *)
Lemma t28 : p50 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t28. refine (subset r10 i9 i8 h1 _) ; finalize.
Qed.
Lemma t29 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t29. exact h1. exact h2.
Qed.
Lemma t30 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t30. exact h1.
Qed.
Lemma t31 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t31. exact h1.
Qed.
Definition i38 := makepairF f1 f10.
Notation p51 := (ABS _x i38). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t32 : p51 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i38 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t32. refine (abs_subset _x i1 i38 h1 _) ; finalize. exact h2.
Qed.
Lemma t33 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t33. exact h1.
Qed.
Definition f48 := Float2 (-165979110368446155) (-82).
Definition f49 := Float2 (9) (-28).
Definition i39 := makepairF f48 f49.
Notation p52 := (BND r46 i39). (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - Mts, [-3.43237e-08, 3.35276e-08]) *)
Notation r48 := ((r6 - r36)%R).
Notation r47 := ((_x * r48)%R).
Notation p53 := (BND r47 i39). (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))))), [-3.43237e-08, 3.35276e-08]) *)
Definition f50 := Float2 (-55326370122815385) (-80).
Definition f51 := Float2 (3) (-26).
Definition i40 := makepairF f50 f51.
Notation p54 := (BND r48 i40). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-4.57649e-08, 4.47035e-08]) *)
Notation r50 := ((r6 - r7)%R).
Notation r51 := ((r7 - r36)%R).
Notation r49 := ((r50 + r51)%R).
Notation p55 := (BND r49 i40). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))))), [-4.57649e-08, 4.47035e-08]) *)
Notation p56 := (BND r50 i4). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [-2.98023e-08, 2.98023e-08]) *)
Notation p57 := (ABS r7 i6). (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))), [0.5, 1]) *)
Lemma t34 : p11 -> p57.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p57 (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t34. exact h1.
Qed.
Lemma t35 : p57 -> p56.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l45 : s1 -> p56 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l46 h0).
 apply t35. exact h1.
Qed.
Definition f52 := Float2 (-19297573103851417) (-80).
Definition f53 := Float2 (1) (-26).
Definition i41 := makepairF f52 f53.
Notation p58 := (BND r51 i41). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-1.59626e-08, 1.49012e-08]) *)
Notation r53 := ((r9 - r37)%R).
Notation r52 := ((- r53)%R).
Notation p59 := (BND r52 i41). (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-1.59626e-08, 1.49012e-08]) *)
Definition f54 := Float2 (-1) (-26).
Definition f55 := Float2 (19297573103851417) (-80).
Definition i42 := makepairF f54 f55.
Notation p60 := (BND r53 i42). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.49012e-08, 1.59626e-08]) *)
Notation r55 := ((r9 - r10)%R).
Notation r56 := ((r10 - r37)%R).
Notation r54 := ((r55 + r56)%R).
Notation p61 := (BND r54 i42). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-1.49012e-08, 1.59626e-08]) *)
Definition f56 := Float2 (-1) (-27).
Definition f57 := Float2 (1) (-28).
Definition i43 := makepairF f56 f57.
Notation p62 := (BND r55 i43). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [-7.45058e-09, 3.72529e-09]) *)
Notation p63 := (ABS r10 i9). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [1.77636e-15, 0.125]) *)
Lemma t36 : p14 -> p63.
 intros h0.
 refine (abs_of_bnd_p r10 i9 i9 h0 _) ; finalize.
Qed.
Lemma l52 : s1 -> p63 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t36. exact h1.
Qed.
Lemma t37 : p63 -> p62.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i9 i43 h0 _) ; finalize.
Qed.
Lemma l51 : s1 -> p62 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [-7.45058e-09, 3.72529e-09]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t37. exact h1.
Qed.
Definition f58 := Float2 (14793973476480921) (-80).
Definition i44 := makepairF f56 f58.
Notation p64 := (BND r56 i44). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-7.45058e-09, 1.22373e-08]) *)
Notation r59 := ((r13 - r38)%R).
Notation r58 := ((r11 * r59)%R).
Notation r61 := ((r11 - r12)%R).
Notation r60 := ((r61 * r38)%R).
Notation r57 := ((r58 + r60)%R).
Notation p65 := (BND r57 i44). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-7.45058e-09, 1.22373e-08]) *)
Definition f59 := Float2 (-5) (-31).
Definition f60 := Float2 (35156695893281055) (-82).
Definition i45 := makepairF f59 f60.
Notation p66 := (BND r58 i45). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.32831e-09, 7.27023e-09]) *)
Definition f61 := Float2 (-1) (-28).
Definition f62 := Float2 (3906299543697895) (-78).
Definition i46 := makepairF f61 f62.
Notation p67 := (BND r59 i46). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-3.72529e-09, 1.29249e-08]) *)
Notation r63 := ((r13 - r14)%R).
Notation r64 := ((r14 - r38)%R).
Notation r62 := ((r63 + r64)%R).
Notation p68 := (BND r62 i46). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-3.72529e-09, 1.29249e-08]) *)
Definition f63 := Float2 (1) (-27).
Definition i47 := makepairF f56 f63.
Notation p69 := (BND r63 i47). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [-7.45058e-09, 7.45058e-09]) *)
Definition f64 := Float2 (1) (-2).
Definition i48 := makepairF f13 f64.
Notation p70 := (ABS r14 i48). (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))), [0.125, 0.25]) *)
Notation p71 := (BND r14 i48). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))), [0.125, 0.25]) *)
Lemma t38 : p71 -> p70.
 intros h0.
 refine (abs_of_bnd_p r14 i48 i48 h0 _) ; finalize.
Qed.
Lemma l59 : s1 -> p70 (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t38. refine (subset r14 i11 i48 h1 _) ; finalize.
Qed.
Lemma t39 : p70 -> p69.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i48 i47 h0 _) ; finalize.
Qed.
Lemma l58 : s1 -> p69 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))), [-7.45058e-09, 7.45058e-09]) *).
 intros h0.
 assert (h1 := l59 h0).
 apply t39. exact h1.
Qed.
Definition f65 := Float2 (1654499730012647) (-78).
Definition i49 := makepairF f57 f65.
Notation p72 := (BND r64 i49). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [3.72529e-09, 5.47428e-09]) *)
Notation r66 := ((r15 - r16)%R).
Notation r67 := ((r18 - r39)%R).
Notation r65 := ((r66 - r67)%R).
Notation p73 := (BND r65 i49). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [3.72529e-09, 5.47428e-09]) *)
Definition f66 := Float2 (21) (-32).
Definition f67 := Float2 (11453246123) (-61).
Definition i50 := makepairF f66 f67.
Notation p74 := (BND r66 i50). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *)
Definition f68 := Float2 (715827883) (-32).
Definition i51 := makepairF f18 f68.
Notation p75 := (BND r16 i51). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t40 : p19 -> p75 -> p74.
 intros h0 h1.
 refine (sub r15 r16 i12 i51 i50 h0 h1 _) ; finalize.
Qed.
Lemma l62 : s1 -> p74 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t40. exact h1. refine (subset r16 i13 i51 h2 _) ; finalize.
Qed.
Definition f69 := Float2 (-153299854178791) (-78).
Definition f70 := Float2 (5) (-32).
Definition i52 := makepairF f69 f70.
Notation p76 := (BND r67 i52). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-5.07227e-10, 1.16415e-09]) *)
Notation r69 := ((r18 - r19)%R).
Notation r70 := ((r19 - r39)%R).
Notation r68 := ((r69 + r70)%R).
Notation p77 := (BND r68 i52). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-5.07227e-10, 1.16415e-09]) *)
Definition f71 := Float2 (-1) (-32).
Definition f72 := Float2 (1) (-32).
Definition i53 := makepairF f71 f72.
Notation p78 := (BND r69 i53). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [-2.32831e-10, 2.32831e-10]) *)
Definition i54 := makepairF f22 f24.
Notation p79 := (ABS r19 i54). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [1.11022e-16, 0.0078125]) *)
Notation p80 := (ABS r11 i10). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *)
Lemma t41 : p15 -> p80.
 intros h0.
 refine (abs_of_bnd_p r11 i10 i10 h0 _) ; finalize.
Qed.
Lemma l67 : s1 -> p80 (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t41. exact h1.
Qed.
Notation p81 := (ABS r20 i17). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [0.0078125, 0.00976562]) *)
Lemma t42 : p25 -> p81.
 intros h0.
 refine (abs_of_bnd_p r20 i17 i17 h0 _) ; finalize.
Qed.
Lemma l68 : s1 -> p81 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t42. exact h1.
Qed.
Definition i55 := makepairF f14 f2.
Notation p82 := (ABS r11 i55). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t43 : p82 -> p81 -> p79.
 intros h0 h1.
 refine (mul_aa r11 r20 i55 i17 i54 h0 h1 _) ; finalize.
Qed.
Lemma l66 : s1 -> p79 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l67 h0).
 assert (h2 := l68 h0).
 apply t43. refine (abs_subset r11 i10 i55 h1 _) ; finalize. exact h2.
Qed.
Lemma t44 : p79 -> p78.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i54 i53 h0 _) ; finalize.
Qed.
Lemma l65 : s1 -> p78 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [-2.32831e-10, 2.32831e-10]) *).
 intros h0.
 assert (h1 := l66 h0).
 apply t44. exact h1.
Qed.
Definition f73 := Float2 (-82931110001127) (-78).
Definition f74 := Float2 (1) (-30).
Definition i56 := makepairF f73 f74.
Notation p83 := (BND r70 i56). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-2.74396e-10, 9.31323e-10]) *)
Notation r73 := ((r20 - r40)%R).
Notation r72 := ((r11 * r73)%R).
Notation r74 := ((r61 * r40)%R).
Notation r71 := ((r72 + r74)%R).
Notation p84 := (BND r71 i56). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))) + (float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-2.74396e-10, 9.31323e-10]) *)
Definition f75 := Float2 (-31484464846475) (-80).
Definition f76 := Float2 (5) (-33).
Definition i57 := makepairF f75 f76.
Notation p85 := (BND r72 i57). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.60433e-11, 5.82077e-10]) *)
Definition f77 := Float2 (-447779055594311) (-83).
Definition i58 := makepairF f77 f74.
Notation p86 := (BND r73 i58). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-4.62993e-11, 9.31323e-10]) *)
Notation r76 := ((r20 - r21)%R).
Notation r77 := ((r21 - r40)%R).
Notation r75 := ((r76 + r77)%R).
Notation p87 := (BND r75 i58). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) + (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-4.62993e-11, 9.31323e-10]) *)
Definition f78 := Float2 (-1) (-31).
Definition f79 := Float2 (1) (-31).
Definition i59 := makepairF f78 f79.
Notation p88 := (BND r76 i59). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [-4.65661e-10, 4.65661e-10]) *)
Definition f80 := Float2 (1) (-6).
Definition i60 := makepairF f24 f80.
Notation p89 := (ABS r21 i60). (* ABS(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))), [0.0078125, 0.015625]) *)
Notation p90 := (BND r21 i60). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))), [0.0078125, 0.015625]) *)
Lemma t45 : p90 -> p89.
 intros h0.
 refine (abs_of_bnd_p r21 i60 i60 h0 _) ; finalize.
Qed.
Lemma l75 : s1 -> p89 (* ABS(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))), [0.0078125, 0.015625]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t45. refine (subset r21 i17 i60 h1 _) ; finalize.
Qed.
Lemma t46 : p89 -> p88.
 intros h0.
 refine (float_absolute_wide_ne _ _ r21 i60 i59 h0 _) ; finalize.
Qed.
Lemma l74 : s1 -> p88 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))), [-4.65661e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l75 h0).
 apply t46. exact h1.
Qed.
Definition f81 := Float2 (4055820571776185) (-83).
Definition i61 := makepairF f81 f79.
Notation p91 := (BND r77 i61). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [4.19362e-10, 4.65661e-10]) *)
Notation r79 := ((r22 - r23)%R).
Notation r80 := ((r25 - r41)%R).
Notation r78 := ((r79 - r80)%R).
Notation p92 := (BND r78 i61). (* BND(float<24,-149,ne>(1 / 120) - 1 / 120 - (float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - x * x * (1 / 5040 - x * x / 362880)), [4.19362e-10, 4.65661e-10]) *)
Definition f82 := Float2 (32069089143) (-66).
Definition f83 := Float2 (15) (-35).
Definition i62 := makepairF f82 f83.
Notation p93 := (BND r79 i62). (* BND(float<24,-149,ne>(1 / 120) - 1 / 120, [4.34617e-10, 4.36557e-10]) *)
Lemma t47 : p27 -> p28 -> p93.
 intros h0 h1.
 refine (sub r22 r23 i18 i19 i62 h0 h1 _) ; finalize.
Qed.
Lemma l78 : s1 -> p93 (* BND(float<24,-149,ne>(1 / 120) - 1 / 120, [4.34617e-10, 4.36557e-10]) *).
 intros h0.
 assert (h1 := l28 h0).
 assert (h2 := l29 h0).
 apply t47. exact h1. exact h2.
Qed.
Definition f84 := Float2 (-1) (-35).
Definition f85 := Float2 (147539080375111) (-83).
Definition i63 := makepairF f84 f85.
Notation p94 := (BND r80 i63). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - x * x * (1 / 5040 - x * x / 362880), [-2.91038e-11, 1.52552e-11]) *)
Notation r82 := ((r25 - r26)%R).
Notation r83 := ((r26 - r41)%R).
Notation r81 := ((r82 + r83)%R).
Notation p95 := (BND r81 i63). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - x * x * (1 / 5040 - x * x / 362880)), [-2.91038e-11, 1.52552e-11]) *)
Definition f86 := Float2 (-1) (-36).
Definition f87 := Float2 (1) (-38).
Definition i64 := makepairF f86 f87.
Notation p96 := (BND r82 i64). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [-1.45519e-11, 3.63798e-12]) *)
Definition i65 := makepairF f30 f32.
Notation p97 := (ABS r26 i65). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [1.73472e-18, 0.00012207]) *)
Notation p98 := (ABS r27 i23). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [0.00012207, 0.000213623]) *)
Lemma t48 : p33 -> p98.
 intros h0.
 refine (abs_of_bnd_p r27 i23 i23 h0 _) ; finalize.
Qed.
Lemma l83 : s1 -> p98 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [0.00012207, 0.000213623]) *).
 intros h0.
 assert (h1 := l33 h0).
 apply t48. exact h1.
Qed.
Lemma t49 : p80 -> p98 -> p97.
 intros h0 h1.
 refine (mul_aa r11 r27 i10 i23 i65 h0 h1 _) ; finalize.
Qed.
Lemma l82 : s1 -> p97 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [1.73472e-18, 0.00012207]) *).
 intros h0.
 assert (h1 := l67 h0).
 assert (h2 := l83 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p97 -> p96.
 intros h0.
 refine (float_absolute_wide_ne _ _ r26 i65 i64 h0 _) ; finalize.
Qed.
Lemma l81 : s1 -> p96 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [-1.45519e-11, 3.63798e-12]) *).
 intros h0.
 assert (h1 := l82 h0).
 apply t50. exact h1.
Qed.
Definition f88 := Float2 (112354708286279) (-83).
Definition i66 := makepairF f86 f88.
Notation p99 := (BND r83 i66). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - x * x * (1 / 5040 - x * x / 362880), [-1.45519e-11, 1.16172e-11]) *)
Notation r86 := ((r27 - r42)%R).
Notation r85 := ((r11 * r86)%R).
Notation r87 := ((r61 * r42)%R).
Notation r84 := ((r85 + r87)%R).
Notation p100 := (BND r84 i66). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 5040 - x * x / 362880), [-1.45519e-11, 1.16172e-11]) *)
Definition f89 := Float2 (-1) (-37).
Definition f90 := Float2 (220664566358043) (-85).
Definition i67 := makepairF f89 f90.
Notation p101 := (BND r85 i67). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880)), [-7.27596e-12, 5.70405e-12]) *)
Definition f91 := Float2 (196146281207149) (-84).
Definition i68 := makepairF f89 f91.
Notation p102 := (BND r86 i68). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880), [-7.27596e-12, 1.01405e-11]) *)
Notation r89 := ((r27 - r28)%R).
Notation r90 := ((r28 - r42)%R).
Notation r88 := ((r89 + r90)%R).
Notation p103 := (BND r88 i68). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) + (float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - (1 / 5040 - x * x / 362880)), [-7.27596e-12, 1.01405e-11]) *)
Definition f92 := Float2 (1) (-37).
Definition i69 := makepairF f89 f92.
Notation p104 := (BND r89 i69). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [-7.27596e-12, 7.27596e-12]) *)
Definition f93 := Float2 (1) (-12).
Definition i70 := makepairF f32 f93.
Notation p105 := (ABS r28 i70). (* ABS(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880), [0.00012207, 0.000244141]) *)
Notation p106 := (BND r28 i70). (* BND(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880), [0.00012207, 0.000244141]) *)
Lemma t51 : p106 -> p105.
 intros h0.
 refine (abs_of_bnd_p r28 i70 i70 h0 _) ; finalize.
Qed.
Lemma l90 : s1 -> p105 (* ABS(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880), [0.00012207, 0.000244141]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t51. refine (subset r28 i23 i70 h1 _) ; finalize.
Qed.
Lemma t52 : p105 -> p104.
 intros h0.
 refine (float_absolute_wide_ne _ _ r28 i70 i69 h0 _) ; finalize.
Qed.
Lemma l89 : s1 -> p104 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)), [-7.27596e-12, 7.27596e-12]) *).
 intros h0.
 assert (h1 := l90 h0).
 apply t52. exact h1.
Qed.
Definition f94 := Float2 (1) (-39).
Definition f95 := Float2 (55408792851821) (-84).
Definition i71 := makepairF f94 f95.
Notation p107 := (BND r90 i71). (* BND(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - (1 / 5040 - x * x / 362880), [1.81899e-12, 2.86457e-12]) *)
Notation r92 := ((r29 - r30)%R).
Notation r93 := ((r32 - r43)%R).
Notation r91 := ((r92 - r93)%R).
Notation p108 := (BND r91 i71). (* BND(float<24,-149,ne>(1 / 5040) - 1 / 5040 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - x * x / 362880), [1.81899e-12, 2.86457e-12]) *)
Definition f96 := Float2 (5) (-41).
Definition f97 := Float2 (50278387) (-64).
Definition i72 := makepairF f96 f97.
Notation p109 := (BND r92 i72). (* BND(float<24,-149,ne>(1 / 5040) - 1 / 5040, [2.27374e-12, 2.7256e-12]) *)
Definition f98 := Float2 (436314139) (-41).
Definition i73 := makepairF f35 f98.
Notation p110 := (BND r30 i73). (* BND(1 / 5040, [0.000198413, 0.000198413]) *)
Lemma t53 : p35 -> p110 -> p109.
 intros h0 h1.
 refine (sub r29 r30 i24 i73 i72 h0 h1 _) ; finalize.
Qed.
Lemma l93 : s1 -> p109 (* BND(float<24,-149,ne>(1 / 5040) - 1 / 5040, [2.27374e-12, 2.7256e-12]) *).
 intros h0.
 assert (h1 := l35 h0).
 assert (h2 := l36 h0).
 apply t53. exact h1. refine (subset r30 i25 i73 h2 _) ; finalize.
Qed.
Definition f99 := Float2 (-2688082924909) (-84).
Definition f100 := Float2 (1) (-41).
Definition i74 := makepairF f99 f100.
Notation p111 := (BND r93 i74). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - x * x / 362880, [-1.38971e-13, 4.54747e-13]) *)
Notation r95 := ((r32 - r33)%R).
Notation r96 := ((r33 - r43)%R).
Notation r94 := ((r95 + r96)%R).
Notation p112 := (BND r94 i74). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - float<24,-149,ne>(x * x) / 362880 + (float<24,-149,ne>(x * x) / 362880 - x * x / 362880), [-1.38971e-13, 4.54747e-13]) *)
Definition f101 := Float2 (-1) (-44).
Definition f102 := Float2 (1) (-42).
Definition i75 := makepairF f101 f102.
Notation p113 := (BND r95 i75). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - float<24,-149,ne>(x * x) / 362880, [-5.68434e-14, 2.27374e-13]) *)
Definition f103 := Float2 (1) (-19).
Definition i76 := makepairF f39 f103.
Notation p114 := (ABS r33 i76). (* ABS(float<24,-149,ne>(x * x) / 362880, [2.71051e-20, 1.90735e-06]) *)
Definition f104 := Float2 (5) (16).
Definition i77 := makepairF f104 f42.
Notation p115 := (ABS r34 i77). (* ABS(362880, [327680, 524288]) *)
Notation p116 := (BND r34 i77). (* BND(362880, [327680, 524288]) *)
Lemma t54 : p116 -> p115.
 intros h0.
 refine (abs_of_bnd_p r34 i77 i77 h0 _) ; finalize.
Qed.
Lemma l98 : s1 -> p115 (* ABS(362880, [327680, 524288]) *).
 intros h0.
 assert (h1 := l40 h0).
 apply t54. refine (subset r34 i29 i77 h1 _) ; finalize.
Qed.
Notation p117 := (ABS r11 i37). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Lemma t55 : p117 -> p115 -> p114.
 intros h0 h1.
 refine (div_aa r11 r34 i37 i77 i76 h0 h1 _) ; finalize.
Qed.
Lemma l97 : s1 -> p114 (* ABS(float<24,-149,ne>(x * x) / 362880, [2.71051e-20, 1.90735e-06]) *).
 intros h0.
 assert (h1 := l67 h0).
 assert (h2 := l98 h0).
 apply t55. refine (abs_subset r11 i10 i37 h1 _) ; finalize. exact h2.
Qed.
Lemma t56 : p114 -> p113.
 intros h0.
 refine (float_absolute_wide_ne _ _ r33 i76 i75 h0 _) ; finalize.
Qed.
Lemma l96 : s1 -> p113 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - float<24,-149,ne>(x * x) / 362880, [-5.68434e-14, 2.27374e-13]) *).
 intros h0.
 assert (h1 := l97 h0).
 apply t56. exact h1.
Qed.
Definition f105 := Float2 (-1588571297133) (-84).
Definition i78 := makepairF f105 f102.
Notation p118 := (BND r96 i78). (* BND(float<24,-149,ne>(x * x) / 362880 - x * x / 362880, [-8.21272e-14, 2.27374e-13]) *)
Notation p119 := (NZR r34). (* NZR(362880) *)
Definition i79 := makepairF f10 f42.
Notation p120 := (ABS r34 i79). (* ABS(362880, [1, 524288]) *)
Lemma t57 : p120 -> p119.
 intros h0.
 refine (nzr_of_abs r34 i79 h0 _) ; finalize.
Qed.
Lemma l100 : s1 -> p119 (* NZR(362880) *).
 intros h0.
 assert (h1 := l98 h0).
 apply t57. refine (abs_subset r34 i77 i79 h1 _) ; finalize.
Qed.
Notation r97 := ((r61 / r34)%R).
Notation p121 := (BND r97 i78). (* BND((float<24,-149,ne>(x * x) - x * x) / 362880, [-8.21272e-14, 2.27374e-13]) *)
Notation p122 := (BND r61 i4). (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *)
Notation p123 := (ABS r12 i30). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t58 : p51 -> p51 -> p123.
 intros h0 h1.
 refine (mul_aa _x _x i38 i38 i30 h0 h1 _) ; finalize.
Qed.
Lemma l103 : s1 -> p123 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t58. refine (abs_subset _x i1 i38 h1 _) ; finalize. refine (abs_subset _x i1 i38 h1 _) ; finalize.
Qed.
Lemma t59 : p123 -> p122.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i30 i4 h0 _) ; finalize.
Qed.
Lemma l102 : s1 -> p122 (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l103 h0).
 apply t59. exact h1.
Qed.
Definition i80 := makepairF f7 f9.
Notation p124 := (BND r61 i80). (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 5.96046e-08]) *)
Lemma t60 : p124 -> p41 -> p121.
 intros h0 h1.
 refine (div_op r61 r34 i80 i29 i78 h0 h1 _) ; finalize.
Qed.
Lemma l101 : s1 -> p121 (* BND((float<24,-149,ne>(x * x) - x * x) / 362880, [-8.21272e-14, 2.27374e-13]) *).
 intros h0.
 assert (h1 := l102 h0).
 assert (h2 := l40 h0).
 apply t60. refine (subset r61 i4 i80 h1 _) ; finalize. exact h2.
Qed.
Lemma t61 : p119 -> p121 -> p118.
 intros h0 h1.
 refine (div_firs _ r34 _ i78 h0 h1) ; finalize.
Qed.
Lemma l99 : s1 -> p118 (* BND(float<24,-149,ne>(x * x) / 362880 - x * x / 362880, [-8.21272e-14, 2.27374e-13]) *).
 intros h0.
 assert (h1 := l100 h0).
 assert (h2 := l101 h0).
 apply t61. exact h1. exact h2.
Qed.
Lemma t62 : p113 -> p118 -> p112.
 intros h0 h1.
 refine (add r95 r96 i75 i78 i74 h0 h1 _) ; finalize.
Qed.
Lemma l95 : s1 -> p112 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - float<24,-149,ne>(x * x) / 362880 + (float<24,-149,ne>(x * x) / 362880 - x * x / 362880), [-1.38971e-13, 4.54747e-13]) *).
 intros h0.
 assert (h1 := l96 h0).
 assert (h2 := l99 h0).
 apply t62. exact h1. exact h2.
Qed.
Lemma t63 : p112 -> p111.
 intros h0.
 refine (sub_xals _ _ _ i74 h0) ; finalize.
Qed.
Lemma l94 : s1 -> p111 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - x * x / 362880, [-1.38971e-13, 4.54747e-13]) *).
 intros h0.
 assert (h1 := l95 h0).
 apply t63. exact h1.
Qed.
Lemma t64 : p109 -> p111 -> p108.
 intros h0 h1.
 refine (sub r92 r93 i72 i74 i71 h0 h1 _) ; finalize.
Qed.
Lemma l92 : s1 -> p108 (* BND(float<24,-149,ne>(1 / 5040) - 1 / 5040 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - x * x / 362880), [1.81899e-12, 2.86457e-12]) *).
 intros h0.
 assert (h1 := l93 h0).
 assert (h2 := l94 h0).
 apply t64. exact h1. exact h2.
Qed.
Lemma t65 : p108 -> p107.
 intros h0.
 refine (sub_mibs _ _ _ _ i71 h0) ; finalize.
Qed.
Lemma l91 : s1 -> p107 (* BND(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - (1 / 5040 - x * x / 362880), [1.81899e-12, 2.86457e-12]) *).
 intros h0.
 assert (h1 := l92 h0).
 apply t65. exact h1.
Qed.
Lemma t66 : p104 -> p107 -> p103.
 intros h0 h1.
 refine (add r89 r90 i69 i71 i68 h0 h1 _) ; finalize.
Qed.
Lemma l88 : s1 -> p103 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) + (float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880) - (1 / 5040 - x * x / 362880)), [-7.27596e-12, 1.01405e-11]) *).
 intros h0.
 assert (h1 := l89 h0).
 assert (h2 := l91 h0).
 apply t66. exact h1. exact h2.
Qed.
Lemma t67 : p103 -> p102.
 intros h0.
 refine (sub_xals _ _ _ i68 h0) ; finalize.
Qed.
Lemma l87 : s1 -> p102 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880), [-7.27596e-12, 1.01405e-11]) *).
 intros h0.
 assert (h1 := l88 h0).
 apply t67. exact h1.
Qed.
Lemma t68 : p15 -> p102 -> p101.
 intros h0 h1.
 refine (mul_po r11 r86 i10 i68 i67 h0 h1 _) ; finalize.
Qed.
Lemma l86 : s1 -> p101 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880)), [-7.27596e-12, 5.70405e-12]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l87 h0).
 apply t68. exact h1. exact h2.
Qed.
Definition f106 := Float2 (228754266787073) (-85).
Definition i81 := makepairF f89 f106.
Notation p125 := (BND r87 i81). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 5040 - x * x / 362880), [-7.27596e-12, 5.91316e-12]) *)
Definition i82 := makepairF f44 f36.
Notation p126 := (BND r42 i82). (* BND(1 / 5040 - x * x / 362880, [0.000183105, 0.000198413]) *)
Definition f107 := Float2 (1) (-16).
Definition i83 := makepairF f39 f107.
Notation p127 := (BND r43 i83). (* BND(x * x / 362880, [2.71051e-20, 1.52588e-05]) *)
Notation p128 := (BND r12 i30). (* BND(x * x, [1.42109e-14, 1]) *)
Definition f108 := Float2 (1) (16).
Definition i84 := makepairF f108 f42.
Notation p129 := (BND r34 i84). (* BND(362880, [65536, 524288]) *)
Lemma t69 : p128 -> p129 -> p127.
 intros h0 h1.
 refine (div_pp r12 r34 i30 i84 i83 h0 h1 _) ; finalize.
Qed.
Lemma l106 : s1 -> p127 (* BND(x * x / 362880, [2.71051e-20, 1.52588e-05]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l40 h0).
 apply t69. refine (subset r12 i10 i30 h1 _) ; finalize. refine (subset r34 i29 i84 h2 _) ; finalize.
Qed.
Definition f109 := Float2 (13) (-16).
Definition i85 := makepairF f109 f36.
Notation p130 := (BND r30 i85). (* BND(1 / 5040, [0.000198364, 0.000198413]) *)
Lemma t70 : p130 -> p127 -> p126.
 intros h0 h1.
 refine (sub r30 r43 i85 i83 i82 h0 h1 _) ; finalize.
Qed.
Lemma l105 : s1 -> p126 (* BND(1 / 5040 - x * x / 362880, [0.000183105, 0.000198413]) *).
 intros h0.
 assert (h1 := l36 h0).
 assert (h2 := l106 h0).
 apply t70. refine (subset r30 i25 i85 h1 _) ; finalize. exact h2.
Qed.
Definition i86 := makepairF f32 f36.
Notation p131 := (BND r42 i86). (* BND(1 / 5040 - x * x / 362880, [0.00012207, 0.000198413]) *)
Lemma t71 : p122 -> p131 -> p125.
 intros h0 h1.
 refine (mul_op r61 r42 i4 i86 i81 h0 h1 _) ; finalize.
Qed.
Lemma l104 : s1 -> p125 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 5040 - x * x / 362880), [-7.27596e-12, 5.91316e-12]) *).
 intros h0.
 assert (h1 := l102 h0).
 assert (h2 := l105 h0).
 apply t71. exact h1. refine (subset r42 i82 i86 h2 _) ; finalize.
Qed.
Lemma t72 : p101 -> p125 -> p100.
 intros h0 h1.
 refine (add r85 r87 i67 i81 i66 h0 h1 _) ; finalize.
Qed.
Lemma l85 : s1 -> p100 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - (1 / 5040 - x * x / 362880)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 5040 - x * x / 362880), [-1.45519e-11, 1.16172e-11]) *).
 intros h0.
 assert (h1 := l86 h0).
 assert (h2 := l104 h0).
 apply t72. exact h1. exact h2.
Qed.
Lemma t73 : p100 -> p99.
 intros h0.
 refine (mul_mars _ _ _ _ i66 h0) ; finalize.
Qed.
Lemma l84 : s1 -> p99 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - x * x * (1 / 5040 - x * x / 362880), [-1.45519e-11, 1.16172e-11]) *).
 intros h0.
 assert (h1 := l85 h0).
 apply t73. exact h1.
Qed.
Lemma t74 : p96 -> p99 -> p95.
 intros h0 h1.
 refine (add r82 r83 i64 i66 i63 h0 h1 _) ; finalize.
Qed.
Lemma l80 : s1 -> p95 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)) - x * x * (1 / 5040 - x * x / 362880)), [-2.91038e-11, 1.52552e-11]) *).
 intros h0.
 assert (h1 := l81 h0).
 assert (h2 := l84 h0).
 apply t74. exact h1. exact h2.
Qed.
Lemma t75 : p95 -> p94.
 intros h0.
 refine (sub_xals _ _ _ i63 h0) ; finalize.
Qed.
Lemma l79 : s1 -> p94 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - x * x * (1 / 5040 - x * x / 362880), [-2.91038e-11, 1.52552e-11]) *).
 intros h0.
 assert (h1 := l80 h0).
 apply t75. exact h1.
Qed.
Lemma t76 : p93 -> p94 -> p92.
 intros h0 h1.
 refine (sub r79 r80 i62 i63 i61 h0 h1 _) ; finalize.
Qed.
Lemma l77 : s1 -> p92 (* BND(float<24,-149,ne>(1 / 120) - 1 / 120 - (float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - x * x * (1 / 5040 - x * x / 362880)), [4.19362e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l78 h0).
 assert (h2 := l79 h0).
 apply t76. exact h1. exact h2.
Qed.
Lemma t77 : p92 -> p91.
 intros h0.
 refine (sub_mibs _ _ _ _ i61 h0) ; finalize.
Qed.
Lemma l76 : s1 -> p91 (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [4.19362e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l77 h0).
 apply t77. exact h1.
Qed.
Lemma t78 : p88 -> p91 -> p87.
 intros h0 h1.
 refine (add r76 r77 i59 i61 i58 h0 h1 _) ; finalize.
Qed.
Lemma l73 : s1 -> p87 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) + (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-4.62993e-11, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l74 h0).
 assert (h2 := l76 h0).
 apply t78. exact h1. exact h2.
Qed.
Lemma t79 : p87 -> p86.
 intros h0.
 refine (sub_xals _ _ _ i58 h0) ; finalize.
Qed.
Lemma l72 : s1 -> p86 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-4.62993e-11, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l73 h0).
 apply t79. exact h1.
Qed.
Lemma t80 : p15 -> p86 -> p85.
 intros h0 h1.
 refine (mul_po r11 r73 i10 i58 i57 h0 h1 _) ; finalize.
Qed.
Lemma l71 : s1 -> p85 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-2.60433e-11, 5.82077e-10]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l72 h0).
 apply t80. exact h1. exact h2.
Qed.
Definition f110 := Float2 (-300239975158033) (-80).
Definition f111 := Float2 (3) (-33).
Definition i87 := makepairF f110 f111.
Notation p132 := (BND r74 i87). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-2.48353e-10, 3.49246e-10]) *)
Definition f112 := Float2 (33) (-12).
Definition f113 := Float2 (300239975158033) (-55).
Definition i88 := makepairF f112 f113.
Notation p133 := (BND r40 i88). (* BND(1 / 120 - x * x * (1 / 5040 - x * x / 362880), [0.00805664, 0.00833333]) *)
Definition f114 := Float2 (3) (-60).
Definition i89 := makepairF f114 f93.
Notation p134 := (BND r41 i89). (* BND(x * x * (1 / 5040 - x * x / 362880), [2.60209e-18, 0.000244141]) *)
Definition i90 := makepairF f44 f93.
Notation p135 := (BND r42 i90). (* BND(1 / 5040 - x * x / 362880, [0.000183105, 0.000244141]) *)
Lemma t81 : p128 -> p135 -> p134.
 intros h0 h1.
 refine (mul_pp r12 r42 i30 i90 i89 h0 h1 _) ; finalize.
Qed.
Lemma l109 : s1 -> p134 (* BND(x * x * (1 / 5040 - x * x / 362880), [2.60209e-18, 0.000244141]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l105 h0).
 apply t81. refine (subset r12 i10 i30 h1 _) ; finalize. refine (subset r42 i82 i90 h2 _) ; finalize.
Qed.
Definition f115 := Float2 (9607679205057059) (-60).
Definition i91 := makepairF f45 f115.
Notation p136 := (BND r23 i91). (* BND(1 / 120, [0.00830078, 0.00833333]) *)
Lemma t82 : p136 -> p134 -> p133.
 intros h0 h1.
 refine (sub r23 r41 i91 i89 i88 h0 h1 _) ; finalize.
Qed.
Lemma l108 : s1 -> p133 (* BND(1 / 120 - x * x * (1 / 5040 - x * x / 362880), [0.00805664, 0.00833333]) *).
 intros h0.
 assert (h1 := l29 h0).
 assert (h2 := l109 h0).
 apply t82. refine (subset r23 i19 i91 h1 _) ; finalize. exact h2.
Qed.
Definition i92 := makepairF f24 f113.
Notation p137 := (BND r40 i92). (* BND(1 / 120 - x * x * (1 / 5040 - x * x / 362880), [0.0078125, 0.00833333]) *)
Lemma t83 : p122 -> p137 -> p132.
 intros h0 h1.
 refine (mul_op r61 r40 i4 i92 i87 h0 h1 _) ; finalize.
Qed.
Lemma l107 : s1 -> p132 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-2.48353e-10, 3.49246e-10]) *).
 intros h0.
 assert (h1 := l102 h0).
 assert (h2 := l108 h0).
 apply t83. exact h1. refine (subset r40 i88 i92 h2 _) ; finalize.
Qed.
Lemma t84 : p85 -> p132 -> p84.
 intros h0 h1.
 refine (add r72 r74 i57 i87 i56 h0 h1 _) ; finalize.
Qed.
Lemma l70 : s1 -> p84 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - (1 / 120 - x * x * (1 / 5040 - x * x / 362880))) + (float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-2.74396e-10, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l71 h0).
 assert (h2 := l107 h0).
 apply t84. exact h1. exact h2.
Qed.
Lemma t85 : p84 -> p83.
 intros h0.
 refine (mul_mars _ _ _ _ i56 h0) ; finalize.
Qed.
Lemma l69 : s1 -> p83 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-2.74396e-10, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l70 h0).
 apply t85. exact h1.
Qed.
Lemma t86 : p78 -> p83 -> p77.
 intros h0 h1.
 refine (add r69 r70 i53 i56 i52 h0 h1 _) ; finalize.
Qed.
Lemma l64 : s1 -> p77 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-5.07227e-10, 1.16415e-09]) *).
 intros h0.
 assert (h1 := l65 h0).
 assert (h2 := l69 h0).
 apply t86. exact h1. exact h2.
Qed.
Lemma t87 : p77 -> p76.
 intros h0.
 refine (sub_xals _ _ _ i52 h0) ; finalize.
Qed.
Lemma l63 : s1 -> p76 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [-5.07227e-10, 1.16415e-09]) *).
 intros h0.
 assert (h1 := l64 h0).
 apply t87. exact h1.
Qed.
Lemma t88 : p74 -> p76 -> p73.
 intros h0 h1.
 refine (sub r66 r67 i50 i52 i49 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p73 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [3.72529e-09, 5.47428e-09]) *).
 intros h0.
 assert (h1 := l62 h0).
 assert (h2 := l63 h0).
 apply t88. exact h1. exact h2.
Qed.
Lemma t89 : p73 -> p72.
 intros h0.
 refine (sub_mibs _ _ _ _ i49 h0) ; finalize.
Qed.
Lemma l60 : s1 -> p72 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [3.72529e-09, 5.47428e-09]) *).
 intros h0.
 assert (h1 := l61 h0).
 apply t89. exact h1.
Qed.
Lemma t90 : p69 -> p72 -> p68.
 intros h0 h1.
 refine (add r63 r64 i47 i49 i46 h0 h1 _) ; finalize.
Qed.
Lemma l57 : s1 -> p68 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-3.72529e-09, 1.29249e-08]) *).
 intros h0.
 assert (h1 := l58 h0).
 assert (h2 := l60 h0).
 apply t90. exact h1. exact h2.
Qed.
Lemma t91 : p68 -> p67.
 intros h0.
 refine (sub_xals _ _ _ i46 h0) ; finalize.
Qed.
Lemma l56 : s1 -> p67 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-3.72529e-09, 1.29249e-08]) *).
 intros h0.
 assert (h1 := l57 h0).
 apply t91. exact h1.
Qed.
Lemma t92 : p15 -> p67 -> p66.
 intros h0 h1.
 refine (mul_po r11 r59 i10 i46 i45 h0 h1 _) ; finalize.
Qed.
Lemma l55 : s1 -> p66 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-2.32831e-09, 7.27023e-09]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l56 h0).
 apply t92. exact h1. exact h2.
Qed.
Definition f116 := Float2 (-11) (-31).
Definition f117 := Float2 (24019198012642629) (-82).
Definition i93 := makepairF f116 f117.
Notation p138 := (BND r60 i93). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-5.12227e-09, 4.96705e-09]) *)
Definition f118 := Float2 (24019198012642629) (-57).
Definition i94 := makepairF f13 f118.
Notation p139 := (BND r38 i94). (* BND(1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [0.125, 0.166667]) *)
Definition f119 := Float2 (33) (-58).
Definition i95 := makepairF f119 f23.
Notation p140 := (BND r39 i95). (* BND(x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [1.14492e-16, 0.03125]) *)
Definition i96 := makepairF f112 f23.
Notation p141 := (BND r40 i96). (* BND(1 / 120 - x * x * (1 / 5040 - x * x / 362880), [0.00805664, 0.03125]) *)
Lemma t93 : p128 -> p141 -> p140.
 intros h0 h1.
 refine (mul_pp r12 r40 i30 i96 i95 h0 h1 _) ; finalize.
Qed.
Lemma l112 : s1 -> p140 (* BND(x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [1.14492e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l108 h0).
 apply t93. refine (subset r12 i10 i30 h1 _) ; finalize. refine (subset r40 i88 i96 h2 _) ; finalize.
Qed.
Definition i97 := makepairF f46 f19.
Notation p142 := (BND r16 i97). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t94 : p142 -> p140 -> p139.
 intros h0 h1.
 refine (sub r16 r39 i97 i95 i94 h0 h1 _) ; finalize.
Qed.
Lemma l111 : s1 -> p139 (* BND(1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l112 h0).
 apply t94. refine (subset r16 i13 i97 h1 _) ; finalize. exact h2.
Qed.
Lemma t95 : p122 -> p139 -> p138.
 intros h0 h1.
 refine (mul_op r61 r38 i4 i94 i93 h0 h1 _) ; finalize.
Qed.
Lemma l110 : s1 -> p138 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-5.12227e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l102 h0).
 assert (h2 := l111 h0).
 apply t95. exact h1. exact h2.
Qed.
Lemma t96 : p66 -> p138 -> p65.
 intros h0 h1.
 refine (add r58 r60 i45 i93 i44 h0 h1 _) ; finalize.
Qed.
Lemma l54 : s1 -> p65 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-7.45058e-09, 1.22373e-08]) *).
 intros h0.
 assert (h1 := l55 h0).
 assert (h2 := l110 h0).
 apply t96. exact h1. exact h2.
Qed.
Lemma t97 : p65 -> p64.
 intros h0.
 refine (mul_mars _ _ _ _ i44 h0) ; finalize.
Qed.
Lemma l53 : s1 -> p64 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-7.45058e-09, 1.22373e-08]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t97. exact h1.
Qed.
Lemma t98 : p62 -> p64 -> p61.
 intros h0 h1.
 refine (add r55 r56 i43 i44 i42 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p61 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-1.49012e-08, 1.59626e-08]) *).
 intros h0.
 assert (h1 := l51 h0).
 assert (h2 := l53 h0).
 apply t98. exact h1. exact h2.
Qed.
Lemma t99 : p61 -> p60.
 intros h0.
 refine (sub_xals _ _ _ i42 h0) ; finalize.
Qed.
Lemma l49 : s1 -> p60 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))), [-1.49012e-08, 1.59626e-08]) *).
 intros h0.
 assert (h1 := l50 h0).
 apply t99. exact h1.
Qed.
Lemma t100 : p60 -> p59.
 intros h0.
 refine (neg r53 i42 i41 h0 _) ; finalize.
Qed.
Lemma l48 : s1 -> p59 (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-1.59626e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t100. exact h1.
Qed.
Lemma t101 : p59 -> p58.
 intros h0.
 refine (sub_fils _ _ _ i41 h0) ; finalize.
Qed.
Lemma l47 : s1 -> p58 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-1.59626e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l48 h0).
 apply t101. exact h1.
Qed.
Lemma t102 : p56 -> p58 -> p55.
 intros h0 h1.
 refine (add r50 r51 i4 i41 i40 h0 h1 _) ; finalize.
Qed.
Lemma l44 : s1 -> p55 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))))), [-4.57649e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l45 h0).
 assert (h2 := l47 h0).
 apply t102. exact h1. exact h2.
Qed.
Lemma t103 : p55 -> p54.
 intros h0.
 refine (sub_xals _ _ _ i40 h0) ; finalize.
Qed.
Lemma l43 : s1 -> p54 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880)))), [-4.57649e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l44 h0).
 apply t103. exact h1.
Qed.
Lemma t104 : p1 -> p54 -> p53.
 intros h0 h1.
 refine (mul_po _x r48 i1 i40 i39 h0 h1 _) ; finalize.
Qed.
Lemma l42 : s1 -> p53 (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x * (1 / 5040 - x * x / 362880))))), [-3.43237e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l43 h0).
 apply t104. exact h1. exact h2.
Qed.
Lemma t105 : p53 -> p52.
 intros h0.
 refine (mul_fils _ _ _ i39 h0) ; finalize.
Qed.
Lemma l41 : s1 -> p52 (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - Mts, [-3.43237e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t105. exact h1.
Qed.
Lemma t106 : p6 -> p52 -> p5.
 intros h0 h1.
 refine (add r45 r46 i4 i39 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 5040) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 362880)))))))) - Mts), [-6.4126e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l41 h0).
 apply t106. exact h1. exact h2.
Qed.
Lemma t107 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-6.4126e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t107. exact h1.
Qed.
Lemma t108 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 6.4126e-08]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t108. exact h1.
Qed.
Lemma t109 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 6.4126e-08]) *).
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
