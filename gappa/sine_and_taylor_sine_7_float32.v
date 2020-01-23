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
Notation r27 := (Float1 (5040)).
Notation r26 := ((r11 / r27)%R).
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
Notation r34 := ((r12 / r27)%R).
Notation r33 := ((r23 - r34)%R).
Notation r32 := ((r12 * r33)%R).
Notation r31 := ((r16 - r32)%R).
Notation r30 := ((r12 * r31)%R).
Notation r29 := ((r8 - r30)%R).
Notation _Mts := ((_x * r29)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (310087752852306787) (-82).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 6.41246e-08]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 6.41246e-08]) *)
Definition f5 := Float2 (-310087752852306787) (-82).
Definition f6 := Float2 (17) (-28).
Definition i3 := makepairF f5 f6.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-6.41246e-08, 6.33299e-08]) *)
Notation r36 := ((_ts - r5)%R).
Notation r37 := ((r5 - _Mts)%R).
Notation r35 := ((r36 + r37)%R).
Notation p5 := (BND r35 i3). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - Mts), [-6.41246e-08, 6.33299e-08]) *)
Definition f7 := Float2 (-1) (-25).
Definition f8 := Float2 (1) (-25).
Definition i4 := makepairF f7 f8.
Notation p6 := (BND r36 i4). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [-2.98023e-08, 2.98023e-08]) *)
Definition f9 := Float2 (1) (-24).
Definition f10 := Float2 (1) (0).
Definition i5 := makepairF f9 f10.
Notation p7 := (ABS r5 i5). (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [5.96046e-08, 1]) *)
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
Notation p9 := (ABS r6 i6). (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [0.5, 1]) *)
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
Notation p13 := (BND r9 i8). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [1.77636e-15, 0.5]) *)
Notation p14 := (BND r10 i8). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [1.77636e-15, 0.5]) *)
Definition f13 := Float2 (1) (-46).
Definition f14 := Float2 (9) (-4).
Definition i9 := makepairF f13 f14.
Notation p15 := (BND r11 i9). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *)
Notation p16 := (BND r12 i9). (* BND(x * x, [1.42109e-14, 0.5625]) *)
Lemma t3 : p8 -> p16.
 intros h0.
 refine (square _x i1 i9 h0 _) ; finalize.
Qed.
Lemma l18 : s1 -> p16 (* BND(x * x, [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t3. exact h1.
Qed.
Lemma t4 : p16 -> p15.
 intros h0.
 refine (float_round_ne _ _ r12 i9 i9 h0 _) ; finalize.
Qed.
Lemma l17 : s1 -> p15 (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l18 h0).
 apply t4. exact h1.
Qed.
Definition f15 := Float2 (1) (-3).
Definition f16 := Float2 (3) (-4).
Definition i10 := makepairF f15 f16.
Notation p17 := (BND r13 i10). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.1875]) *)
Notation p18 := (BND r14 i10). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.1875]) *)
Definition f17 := Float2 (11184811) (-26).
Definition i11 := makepairF f17 f17.
Notation p19 := (BND r15 i11). (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f18 := Float2 (384307168202282325) (-61).
Definition f19 := Float2 (192153584101141163) (-60).
Definition i12 := makepairF f18 f19.
Notation p20 := (BND r16 i12). (* BND(1 / 6, [0.166667, 0.166667]) *)
Definition f20 := Float2 (3) (1).
Definition i13 := makepairF f20 f20.
Notation p21 := (BND r17 i13). (* BND(6, [6, 6]) *)
Lemma t5 : p21.
 refine (constant1 _ i13 _) ; finalize.
Qed.
Lemma l23 : s1 -> p21 (* BND(6, [6, 6]) *).
 intros h0.
 apply t5.
Qed.
Lemma t6 : p12 -> p21 -> p20.
 intros h0 h1.
 refine (div_pp r8 r17 i7 i13 i12 h0 h1 _) ; finalize.
Qed.
Lemma l22 : s1 -> p20 (* BND(1 / 6, [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l23 h0).
 apply t6. exact h1. exact h2.
Qed.
Definition f21 := Float2 (89478485) (-29).
Definition i14 := makepairF f21 f17.
Notation p22 := (BND r16 i14). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t7 : p22 -> p19.
 intros h0.
 refine (float_round_ne _ _ r16 i14 i11 h0 _) ; finalize.
Qed.
Lemma l21 : s1 -> p19 (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 apply t7. refine (subset r16 i12 i14 h1 _) ; finalize.
Qed.
Definition f22 := Float2 (1) (-53).
Definition f23 := Float2 (1) (-5).
Definition i15 := makepairF f22 f23.
Notation p23 := (BND r18 i15). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i15). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [1.11022e-16, 0.03125]) *)
Definition f24 := Float2 (1) (-7).
Definition f25 := Float2 (5) (-9).
Definition i16 := makepairF f24 f25.
Notation p25 := (BND r20 i16). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.00976562]) *)
Notation p26 := (BND r21 i16). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.00976562]) *)
Definition f26 := Float2 (8947849) (-30).
Definition i17 := makepairF f26 f26.
Notation p27 := (BND r22 i17). (* BND(float<24,-149,ne>(1 / 120), [0.00833333, 0.00833333]) *)
Definition f27 := Float2 (286331153) (-35).
Definition f28 := Float2 (614891469123651721) (-66).
Definition i18 := makepairF f27 f28.
Notation p28 := (BND r23 i18). (* BND(1 / 120, [0.00833333, 0.00833333]) *)
Definition f29 := Float2 (15) (3).
Definition i19 := makepairF f29 f29.
Notation p29 := (BND r24 i19). (* BND(120, [120, 120]) *)
Lemma t8 : p29.
 refine (constant1 _ i19 _) ; finalize.
Qed.
Lemma l30 : s1 -> p29 (* BND(120, [120, 120]) *).
 intros h0.
 apply t8.
Qed.
Lemma t9 : p12 -> p29 -> p28.
 intros h0 h1.
 refine (div_pp r8 r24 i7 i19 i18 h0 h1 _) ; finalize.
Qed.
Lemma l29 : s1 -> p28 (* BND(1 / 120, [0.00833333, 0.00833333]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l30 h0).
 apply t9. exact h1. exact h2.
Qed.
Definition i20 := makepairF f27 f26.
Notation p30 := (BND r23 i20). (* BND(1 / 120, [0.00833333, 0.00833333]) *)
Lemma t10 : p30 -> p27.
 intros h0.
 refine (float_round_ne _ _ r23 i20 i17 h0 _) ; finalize.
Qed.
Lemma l28 : s1 -> p27 (* BND(float<24,-149,ne>(1 / 120), [0.00833333, 0.00833333]) *).
 intros h0.
 assert (h1 := l29 h0).
 apply t10. refine (subset r23 i18 i20 h1 _) ; finalize.
Qed.
Definition f30 := Float2 (1) (-59).
Definition f31 := Float2 (1) (-11).
Definition i21 := makepairF f30 f31.
Notation p31 := (BND r25 i21). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [1.73472e-18, 0.000488281]) *)
Notation p32 := (BND r26 i21). (* BND(float<24,-149,ne>(x * x) / 5040, [1.73472e-18, 0.000488281]) *)
Definition f32 := Float2 (315) (4).
Definition i22 := makepairF f32 f32.
Notation p33 := (BND r27 i22). (* BND(5040, [5040, 5040]) *)
Lemma t11 : p33.
 refine (constant1 _ i22 _) ; finalize.
Qed.
Lemma l33 : s1 -> p33 (* BND(5040, [5040, 5040]) *).
 intros h0.
 apply t11.
Qed.
Definition i23 := makepairF f13 f10.
Notation p34 := (BND r11 i23). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 1]) *)
Definition f33 := Float2 (1) (11).
Definition f34 := Float2 (1) (13).
Definition i24 := makepairF f33 f34.
Notation p35 := (BND r27 i24). (* BND(5040, [2048, 8192]) *)
Lemma t12 : p34 -> p35 -> p32.
 intros h0 h1.
 refine (div_pp r11 r27 i23 i24 i21 h0 h1 _) ; finalize.
Qed.
Lemma l32 : s1 -> p32 (* BND(float<24,-149,ne>(x * x) / 5040, [1.73472e-18, 0.000488281]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l33 h0).
 apply t12. refine (subset r11 i9 i23 h1 _) ; finalize. refine (subset r27 i22 i24 h2 _) ; finalize.
Qed.
Lemma t13 : p32 -> p31.
 intros h0.
 refine (float_round_ne _ _ r26 i21 i21 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p31 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [1.73472e-18, 0.000488281]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t13. exact h1.
Qed.
Definition f35 := Float2 (17) (-11).
Definition i25 := makepairF f35 f25.
Notation p36 := (BND r22 i25). (* BND(float<24,-149,ne>(1 / 120), [0.00830078, 0.00976562]) *)
Lemma t14 : p36 -> p31 -> p26.
 intros h0 h1.
 refine (sub r22 r25 i25 i21 i16 h0 h1 _) ; finalize.
Qed.
Lemma l27 : s1 -> p26 (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l28 h0).
 assert (h2 := l31 h0).
 apply t14. refine (subset r22 i17 i25 h1 _) ; finalize. exact h2.
Qed.
Lemma t15 : p26 -> p25.
 intros h0.
 refine (float_round_ne _ _ r21 i16 i16 h0 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t15. exact h1.
Qed.
Definition i26 := makepairF f24 f23.
Notation p37 := (BND r20 i26). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.03125]) *)
Lemma t16 : p34 -> p37 -> p24.
 intros h0 h1.
 refine (mul_pp r11 r20 i23 i26 i15 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t16. refine (subset r11 i9 i23 h1 _) ; finalize. refine (subset r20 i16 i26 h2 _) ; finalize.
Qed.
Lemma t17 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i15 i15 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t17. exact h1.
Qed.
Definition f36 := Float2 (5) (-5).
Definition i27 := makepairF f36 f16.
Notation p38 := (BND r15 i27). (* BND(float<24,-149,ne>(1 / 6), [0.15625, 0.1875]) *)
Lemma t18 : p38 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i27 i15 i10 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t18. refine (subset r15 i11 i27 h1 _) ; finalize. exact h2.
Qed.
Lemma t19 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i10 i10 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t19. exact h1.
Qed.
Definition i28 := makepairF f15 f11.
Notation p39 := (BND r13 i28). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.5]) *)
Lemma t20 : p34 -> p39 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i23 i28 i8 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t20. refine (subset r11 i9 i23 h1 _) ; finalize. refine (subset r13 i10 i28 h2 _) ; finalize.
Qed.
Lemma t21 : p14 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t21. exact h1.
Qed.
Lemma t22 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t22. exact h1. exact h2.
Qed.
Lemma t23 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t23. exact h1.
Qed.
Lemma t24 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t24. exact h1.
Qed.
Definition i29 := makepairF f1 f10.
Notation p40 := (ABS _x i29). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t25 : p40 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i29 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t25. refine (abs_subset _x i1 i29 h1 _) ; finalize. exact h2.
Qed.
Lemma t26 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t26. exact h1.
Qed.
Definition f37 := Float2 (-165972564776450915) (-82).
Definition f38 := Float2 (9) (-28).
Definition i30 := makepairF f37 f38.
Notation p41 := (BND r37 i30). (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - Mts, [-3.43223e-08, 3.35276e-08]) *)
Notation r39 := ((r6 - r29)%R).
Notation r38 := ((_x * r39)%R).
Notation p42 := (BND r38 i30). (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)))), [-3.43223e-08, 3.35276e-08]) *)
Definition f39 := Float2 (-442593506070535773) (-83).
Definition f40 := Float2 (3) (-26).
Definition i31 := makepairF f39 f40.
Notation p43 := (BND r39 i31). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-4.57631e-08, 4.47035e-08]) *)
Notation r41 := ((r6 - r7)%R).
Notation r42 := ((r7 - r29)%R).
Notation r40 := ((r41 + r42)%R).
Notation p44 := (BND r40 i31). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)))), [-4.57631e-08, 4.47035e-08]) *)
Notation p45 := (BND r41 i4). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [-2.98023e-08, 2.98023e-08]) *)
Notation p46 := (ABS r7 i6). (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [0.5, 1]) *)
Lemma t27 : p11 -> p46.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l39 : s1 -> p46 (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t27. exact h1.
Qed.
Lemma t28 : p46 -> p45.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l38 : s1 -> p45 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l39 h0).
 apply t28. exact h1.
Qed.
Definition f41 := Float2 (-154363129918824029) (-83).
Definition f42 := Float2 (1) (-26).
Definition i32 := makepairF f41 f42.
Notation p47 := (BND r42 i32). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.59608e-08, 1.49012e-08]) *)
Notation r44 := ((r9 - r30)%R).
Notation r43 := ((- r44)%R).
Notation p48 := (BND r43 i32). (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.59608e-08, 1.49012e-08]) *)
Definition f43 := Float2 (-1) (-26).
Definition f44 := Float2 (154363129918824029) (-83).
Definition i33 := makepairF f43 f44.
Notation p49 := (BND r44 i33). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-1.49012e-08, 1.59608e-08]) *)
Notation r46 := ((r9 - r10)%R).
Notation r47 := ((r10 - r30)%R).
Notation r45 := ((r46 + r47)%R).
Notation p50 := (BND r45 i33). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.49012e-08, 1.59608e-08]) *)
Definition f45 := Float2 (-1) (-27).
Definition f46 := Float2 (1) (-28).
Definition i34 := makepairF f45 f46.
Notation p51 := (BND r46 i34). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [-7.45058e-09, 3.72529e-09]) *)
Definition i35 := makepairF f12 f15.
Notation p52 := (ABS r10 i35). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [1.77636e-15, 0.125]) *)
Notation p53 := (ABS r11 i9). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *)
Lemma t29 : p15 -> p53.
 intros h0.
 refine (abs_of_bnd_p r11 i9 i9 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p53 (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t29. exact h1.
Qed.
Notation p54 := (ABS r13 i10). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.1875]) *)
Lemma t30 : p17 -> p54.
 intros h0.
 refine (abs_of_bnd_p r13 i10 i10 h0 _) ; finalize.
Qed.
Lemma l47 : s1 -> p54 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l19 h0).
 apply t30. exact h1.
Qed.
Definition f47 := Float2 (5) (-3).
Definition i36 := makepairF f13 f47.
Notation p55 := (ABS r11 i36). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Lemma t31 : p55 -> p54 -> p52.
 intros h0 h1.
 refine (mul_aa r11 r13 i36 i10 i35 h0 h1 _) ; finalize.
Qed.
Lemma l45 : s1 -> p52 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l47 h0).
 apply t31. refine (abs_subset r11 i9 i36 h1 _) ; finalize. exact h2.
Qed.
Lemma t32 : p52 -> p51.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i35 i34 h0 _) ; finalize.
Qed.
Lemma l44 : s1 -> p51 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [-7.45058e-09, 3.72529e-09]) *).
 intros h0.
 assert (h1 := l45 h0).
 apply t32. exact h1.
Qed.
Definition f48 := Float2 (118334332899860061) (-83).
Definition i37 := makepairF f45 f48.
Notation p56 := (BND r47 i37). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-7.45058e-09, 1.22355e-08]) *)
Notation r50 := ((r13 - r31)%R).
Notation r49 := ((r11 * r50)%R).
Notation r52 := ((r11 - r12)%R).
Notation r51 := ((r52 * r31)%R).
Notation r48 := ((r49 + r51)%R).
Notation p57 := (BND r48 i37). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-7.45058e-09, 1.22355e-08]) *)
Definition f49 := Float2 (-5) (-31).
Definition f50 := Float2 (281183747498299215) (-85).
Definition i38 := makepairF f49 f50.
Notation p58 := (BND r49 i38). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-2.32831e-09, 7.26843e-09]) *)
Definition f51 := Float2 (-1) (-28).
Definition f52 := Float2 (31242638610922135) (-81).
Definition i39 := makepairF f51 f52.
Notation p59 := (BND r50 i39). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-3.72529e-09, 1.29217e-08]) *)
Notation r54 := ((r13 - r14)%R).
Notation r55 := ((r14 - r31)%R).
Notation r53 := ((r54 + r55)%R).
Notation p60 := (BND r53 i39). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-3.72529e-09, 1.29217e-08]) *)
Definition f53 := Float2 (1) (-27).
Definition i40 := makepairF f45 f53.
Notation p61 := (BND r54 i40). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [-7.45058e-09, 7.45058e-09]) *)
Definition f54 := Float2 (1) (-2).
Definition i41 := makepairF f15 f54.
Notation p62 := (ABS r14 i41). (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.25]) *)
Notation p63 := (BND r14 i41). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.25]) *)
Lemma t33 : p63 -> p62.
 intros h0.
 refine (abs_of_bnd_p r14 i41 i41 h0 _) ; finalize.
Qed.
Lemma l54 : s1 -> p62 (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t33. refine (subset r14 i10 i41 h1 _) ; finalize.
Qed.
Lemma t34 : p62 -> p61.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i41 i40 h0 _) ; finalize.
Qed.
Lemma l53 : s1 -> p61 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [-7.45058e-09, 7.45058e-09]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t34. exact h1.
Qed.
Definition f55 := Float2 (13228240101440151) (-81).
Definition i42 := makepairF f46 f55.
Notation p64 := (BND r55 i42). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [3.72529e-09, 5.47107e-09]) *)
Notation r57 := ((r15 - r16)%R).
Notation r58 := ((r18 - r32)%R).
Notation r56 := ((r57 - r58)%R).
Notation p65 := (BND r56 i42). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - x * x * (1 / 120 - x * x / 5040)), [3.72529e-09, 5.47107e-09]) *)
Definition f56 := Float2 (21) (-32).
Definition f57 := Float2 (11453246123) (-61).
Definition i43 := makepairF f56 f57.
Notation p66 := (BND r57 i43). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *)
Definition f58 := Float2 (715827883) (-32).
Definition i44 := makepairF f18 f58.
Notation p67 := (BND r16 i44). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t35 : p19 -> p67 -> p66.
 intros h0 h1.
 refine (sub r15 r16 i11 i44 i43 h0 h1 _) ; finalize.
Qed.
Lemma l57 : s1 -> p66 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t35. exact h1. refine (subset r16 i12 i44 h2 _) ; finalize.
Qed.
Definition f59 := Float2 (-1218641094769303) (-81).
Definition f60 := Float2 (5) (-32).
Definition i45 := makepairF f59 f60.
Notation p68 := (BND r58 i45). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - x * x * (1 / 120 - x * x / 5040), [-5.04018e-10, 1.16415e-09]) *)
Notation r60 := ((r18 - r19)%R).
Notation r61 := ((r19 - r32)%R).
Notation r59 := ((r60 + r61)%R).
Notation p69 := (BND r59 i45). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - x * x * (1 / 120 - x * x / 5040)), [-5.04018e-10, 1.16415e-09]) *)
Definition f61 := Float2 (-1) (-32).
Definition f62 := Float2 (1) (-32).
Definition i46 := makepairF f61 f62.
Notation p70 := (BND r60 i46). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [-2.32831e-10, 2.32831e-10]) *)
Definition i47 := makepairF f22 f24.
Notation p71 := (ABS r19 i47). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [1.11022e-16, 0.0078125]) *)
Notation p72 := (ABS r20 i16). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.00976562]) *)
Lemma t36 : p25 -> p72.
 intros h0.
 refine (abs_of_bnd_p r20 i16 i16 h0 _) ; finalize.
Qed.
Lemma l62 : s1 -> p72 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t36. exact h1.
Qed.
Definition i48 := makepairF f13 f2.
Notation p73 := (ABS r11 i48). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t37 : p73 -> p72 -> p71.
 intros h0 h1.
 refine (mul_aa r11 r20 i48 i16 i47 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p71 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l62 h0).
 apply t37. refine (abs_subset r11 i9 i48 h1 _) ; finalize. exact h2.
Qed.
Lemma t38 : p71 -> p70.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i47 i46 h0 _) ; finalize.
Qed.
Lemma l60 : s1 -> p70 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [-2.32831e-10, 2.32831e-10]) *).
 intros h0.
 assert (h1 := l61 h0).
 apply t38. exact h1.
Qed.
Definition f63 := Float2 (-655691141347991) (-81).
Definition f64 := Float2 (1) (-30).
Definition i49 := makepairF f63 f64.
Notation p74 := (BND r61 i49). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - x * x * (1 / 120 - x * x / 5040), [-2.71187e-10, 9.31323e-10]) *)
Notation r64 := ((r20 - r33)%R).
Notation r63 := ((r11 * r64)%R).
Notation r65 := ((r52 * r33)%R).
Notation r62 := ((r63 + r65)%R).
Notation p75 := (BND r62 i49). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x / 5040), [-2.71187e-10, 9.31323e-10]) *)
Definition f65 := Float2 (-883379056510801) (-85).
Definition f66 := Float2 (5) (-33).
Definition i50 := makepairF f65 f66.
Notation p76 := (BND r63 i50). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040)), [-2.28348e-11, 5.82077e-10]) *)
Definition f67 := Float2 (-1570451656019201) (-85).
Definition i51 := makepairF f67 f64.
Notation p77 := (BND r64 i51). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040), [-4.05952e-11, 9.31323e-10]) *)
Notation r67 := ((r20 - r21)%R).
Notation r68 := ((r21 - r33)%R).
Notation r66 := ((r67 + r68)%R).
Notation p78 := (BND r66 i51). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) + (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - (1 / 120 - x * x / 5040)), [-4.05952e-11, 9.31323e-10]) *)
Definition f68 := Float2 (-1) (-31).
Definition f69 := Float2 (1) (-31).
Definition i52 := makepairF f68 f69.
Notation p79 := (BND r67 i52). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [-4.65661e-10, 4.65661e-10]) *)
Definition f70 := Float2 (1) (-6).
Definition i53 := makepairF f24 f70.
Notation p80 := (ABS r21 i53). (* ABS(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.015625]) *)
Notation p81 := (BND r21 i53). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.015625]) *)
Lemma t39 : p81 -> p80.
 intros h0.
 refine (abs_of_bnd_p r21 i53 i53 h0 _) ; finalize.
Qed.
Lemma l69 : s1 -> p80 (* ABS(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.015625]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t39. refine (subset r21 i16 i53 h1 _) ; finalize.
Qed.
Lemma t40 : p80 -> p79.
 intros h0.
 refine (float_absolute_wide_ne _ _ r21 i53 i52 h0 _) ; finalize.
Qed.
Lemma l68 : s1 -> p79 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [-4.65661e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l69 h0).
 apply t40. exact h1.
Qed.
Definition f71 := Float2 (16443946853462783) (-85).
Definition i54 := makepairF f71 f69.
Notation p82 := (BND r68 i54). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - (1 / 120 - x * x / 5040), [4.25066e-10, 4.65661e-10]) *)
Notation r70 := ((r22 - r23)%R).
Notation r71 := ((r25 - r34)%R).
Notation r69 := ((r70 - r71)%R).
Notation p83 := (BND r69 i54). (* BND(float<24,-149,ne>(1 / 120) - 1 / 120 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - x * x / 5040), [4.25066e-10, 4.65661e-10]) *)
Definition f72 := Float2 (32069089143) (-66).
Definition f73 := Float2 (15) (-35).
Definition i55 := makepairF f72 f73.
Notation p84 := (BND r70 i55). (* BND(float<24,-149,ne>(1 / 120) - 1 / 120, [4.34617e-10, 4.36557e-10]) *)
Lemma t41 : p27 -> p28 -> p84.
 intros h0 h1.
 refine (sub r22 r23 i17 i18 i55 h0 h1 _) ; finalize.
Qed.
Lemma l72 : s1 -> p84 (* BND(float<24,-149,ne>(1 / 120) - 1 / 120, [4.34617e-10, 4.36557e-10]) *).
 intros h0.
 assert (h1 := l28 h0).
 assert (h2 := l29 h0).
 apply t41. exact h1. exact h2.
Qed.
Definition f74 := Float2 (-1) (-35).
Definition f75 := Float2 (369491755142401) (-85).
Definition i56 := makepairF f74 f75.
Notation p85 := (BND r71 i56). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - x * x / 5040, [-2.91038e-11, 9.55114e-12]) *)
Notation r73 := ((r25 - r26)%R).
Notation r74 := ((r26 - r34)%R).
Notation r72 := ((r73 + r74)%R).
Notation p86 := (BND r72 i56). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - float<24,-149,ne>(x * x) / 5040 + (float<24,-149,ne>(x * x) / 5040 - x * x / 5040), [-2.91038e-11, 9.55114e-12]) *)
Definition f76 := Float2 (-1) (-36).
Definition f77 := Float2 (1) (-38).
Definition i57 := makepairF f76 f77.
Notation p87 := (BND r73 i57). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - float<24,-149,ne>(x * x) / 5040, [-1.45519e-11, 3.63798e-12]) *)
Definition f78 := Float2 (1) (-13).
Definition i58 := makepairF f30 f78.
Notation p88 := (ABS r26 i58). (* ABS(float<24,-149,ne>(x * x) / 5040, [1.73472e-18, 0.00012207]) *)
Definition f79 := Float2 (9) (9).
Definition i59 := makepairF f79 f34.
Notation p89 := (ABS r27 i59). (* ABS(5040, [4608, 8192]) *)
Notation p90 := (BND r27 i59). (* BND(5040, [4608, 8192]) *)
Lemma t42 : p90 -> p89.
 intros h0.
 refine (abs_of_bnd_p r27 i59 i59 h0 _) ; finalize.
Qed.
Lemma l77 : s1 -> p89 (* ABS(5040, [4608, 8192]) *).
 intros h0.
 assert (h1 := l33 h0).
 apply t42. refine (subset r27 i22 i59 h1 _) ; finalize.
Qed.
Lemma t43 : p53 -> p89 -> p88.
 intros h0 h1.
 refine (div_aa r11 r27 i9 i59 i58 h0 h1 _) ; finalize.
Qed.
Lemma l76 : s1 -> p88 (* ABS(float<24,-149,ne>(x * x) / 5040, [1.73472e-18, 0.00012207]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l77 h0).
 apply t43. exact h1. exact h2.
Qed.
Lemma t44 : p88 -> p87.
 intros h0.
 refine (float_absolute_wide_ne _ _ r26 i58 i57 h0 _) ; finalize.
Qed.
Lemma l75 : s1 -> p87 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - float<24,-149,ne>(x * x) / 5040, [-1.45519e-11, 3.63798e-12]) *).
 intros h0.
 assert (h1 := l76 h0).
 apply t44. exact h1.
Qed.
Definition f80 := Float2 (228754266787073) (-85).
Definition i60 := makepairF f76 f80.
Notation p91 := (BND r74 i60). (* BND(float<24,-149,ne>(x * x) / 5040 - x * x / 5040, [-1.45519e-11, 5.91316e-12]) *)
Notation p92 := (NZR r27). (* NZR(5040) *)
Definition i61 := makepairF f10 f34.
Notation p93 := (ABS r27 i61). (* ABS(5040, [1, 8192]) *)
Lemma t45 : p93 -> p92.
 intros h0.
 refine (nzr_of_abs r27 i61 h0 _) ; finalize.
Qed.
Lemma l79 : s1 -> p92 (* NZR(5040) *).
 intros h0.
 assert (h1 := l77 h0).
 apply t45. refine (abs_subset r27 i59 i61 h1 _) ; finalize.
Qed.
Notation r75 := ((r52 / r27)%R).
Notation p94 := (BND r75 i60). (* BND((float<24,-149,ne>(x * x) - x * x) / 5040, [-1.45519e-11, 5.91316e-12]) *)
Notation p95 := (BND r52 i4). (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *)
Notation p96 := (ABS r12 i23). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t46 : p40 -> p40 -> p96.
 intros h0 h1.
 refine (mul_aa _x _x i29 i29 i23 h0 h1 _) ; finalize.
Qed.
Lemma l82 : s1 -> p96 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t46. refine (abs_subset _x i1 i29 h1 _) ; finalize. refine (abs_subset _x i1 i29 h1 _) ; finalize.
Qed.
Lemma t47 : p96 -> p95.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i23 i4 h0 _) ; finalize.
Qed.
Lemma l81 : s1 -> p95 (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l82 h0).
 apply t47. exact h1.
Qed.
Definition f81 := Float2 (-1) (-24).
Definition i62 := makepairF f81 f8.
Notation p97 := (BND r52 i62). (* BND(float<24,-149,ne>(x * x) - x * x, [-5.96046e-08, 2.98023e-08]) *)
Definition i63 := makepairF f32 f34.
Notation p98 := (BND r27 i63). (* BND(5040, [5040, 8192]) *)
Lemma t48 : p97 -> p98 -> p94.
 intros h0 h1.
 refine (div_op r52 r27 i62 i63 i60 h0 h1 _) ; finalize.
Qed.
Lemma l80 : s1 -> p94 (* BND((float<24,-149,ne>(x * x) - x * x) / 5040, [-1.45519e-11, 5.91316e-12]) *).
 intros h0.
 assert (h1 := l81 h0).
 assert (h2 := l33 h0).
 apply t48. refine (subset r52 i4 i62 h1 _) ; finalize. refine (subset r27 i22 i63 h2 _) ; finalize.
Qed.
Lemma t49 : p92 -> p94 -> p91.
 intros h0 h1.
 refine (div_firs _ r27 _ i60 h0 h1) ; finalize.
Qed.
Lemma l78 : s1 -> p91 (* BND(float<24,-149,ne>(x * x) / 5040 - x * x / 5040, [-1.45519e-11, 5.91316e-12]) *).
 intros h0.
 assert (h1 := l79 h0).
 assert (h2 := l80 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p87 -> p91 -> p86.
 intros h0 h1.
 refine (add r73 r74 i57 i60 i56 h0 h1 _) ; finalize.
Qed.
Lemma l74 : s1 -> p86 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - float<24,-149,ne>(x * x) / 5040 + (float<24,-149,ne>(x * x) / 5040 - x * x / 5040), [-2.91038e-11, 9.55114e-12]) *).
 intros h0.
 assert (h1 := l75 h0).
 assert (h2 := l78 h0).
 apply t50. exact h1. exact h2.
Qed.
Lemma t51 : p86 -> p85.
 intros h0.
 refine (sub_xals _ _ _ i56 h0) ; finalize.
Qed.
Lemma l73 : s1 -> p85 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - x * x / 5040, [-2.91038e-11, 9.55114e-12]) *).
 intros h0.
 assert (h1 := l74 h0).
 apply t51. exact h1.
Qed.
Lemma t52 : p84 -> p85 -> p83.
 intros h0 h1.
 refine (sub r70 r71 i55 i56 i54 h0 h1 _) ; finalize.
Qed.
Lemma l71 : s1 -> p83 (* BND(float<24,-149,ne>(1 / 120) - 1 / 120 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - x * x / 5040), [4.25066e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l72 h0).
 assert (h2 := l73 h0).
 apply t52. exact h1. exact h2.
Qed.
Lemma t53 : p83 -> p82.
 intros h0.
 refine (sub_mibs _ _ _ _ i54 h0) ; finalize.
Qed.
Lemma l70 : s1 -> p82 (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - (1 / 120 - x * x / 5040), [4.25066e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l71 h0).
 apply t53. exact h1.
Qed.
Lemma t54 : p79 -> p82 -> p78.
 intros h0 h1.
 refine (add r67 r68 i52 i54 i51 h0 h1 _) ; finalize.
Qed.
Lemma l67 : s1 -> p78 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) + (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - (1 / 120 - x * x / 5040)), [-4.05952e-11, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l68 h0).
 assert (h2 := l70 h0).
 apply t54. exact h1. exact h2.
Qed.
Lemma t55 : p78 -> p77.
 intros h0.
 refine (sub_xals _ _ _ i51 h0) ; finalize.
Qed.
Lemma l66 : s1 -> p77 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040), [-4.05952e-11, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l67 h0).
 apply t55. exact h1.
Qed.
Lemma t56 : p15 -> p77 -> p76.
 intros h0 h1.
 refine (mul_po r11 r64 i9 i51 i50 h0 h1 _) ; finalize.
Qed.
Lemma l65 : s1 -> p76 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040)), [-2.28348e-11, 5.82077e-10]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l66 h0).
 apply t56. exact h1. exact h2.
Qed.
Definition f82 := Float2 (-9607679205057055) (-85).
Definition f83 := Float2 (3) (-33).
Definition i64 := makepairF f82 f83.
Notation p99 := (BND r65 i64). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x / 5040), [-2.48353e-10, 3.49246e-10]) *)
Definition f84 := Float2 (67) (-13).
Definition f85 := Float2 (9607679205057055) (-60).
Definition i65 := makepairF f84 f85.
Notation p100 := (BND r33 i65). (* BND(1 / 120 - x * x / 5040, [0.00817871, 0.00833333]) *)
Definition f86 := Float2 (13) (-62).
Definition i66 := makepairF f86 f78.
Notation p101 := (BND r34 i66). (* BND(x * x / 5040, [2.81893e-18, 0.00012207]) *)
Definition i67 := makepairF f79 f32.
Notation p102 := (BND r27 i67). (* BND(5040, [4608, 5040]) *)
Lemma t57 : p16 -> p102 -> p101.
 intros h0 h1.
 refine (div_pp r12 r27 i9 i67 i66 h0 h1 _) ; finalize.
Qed.
Lemma l85 : s1 -> p101 (* BND(x * x / 5040, [2.81893e-18, 0.00012207]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l33 h0).
 apply t57. exact h1. refine (subset r27 i22 i67 h2 _) ; finalize.
Qed.
Definition f87 := Float2 (38430716820228233) (-62).
Definition i68 := makepairF f35 f87.
Notation p103 := (BND r23 i68). (* BND(1 / 120, [0.00830078, 0.00833333]) *)
Lemma t58 : p103 -> p101 -> p100.
 intros h0 h1.
 refine (sub r23 r34 i68 i66 i65 h0 h1 _) ; finalize.
Qed.
Lemma l84 : s1 -> p100 (* BND(1 / 120 - x * x / 5040, [0.00817871, 0.00833333]) *).
 intros h0.
 assert (h1 := l29 h0).
 assert (h2 := l85 h0).
 apply t58. refine (subset r23 i18 i68 h1 _) ; finalize. exact h2.
Qed.
Definition i69 := makepairF f24 f85.
Notation p104 := (BND r33 i69). (* BND(1 / 120 - x * x / 5040, [0.0078125, 0.00833333]) *)
Lemma t59 : p95 -> p104 -> p99.
 intros h0 h1.
 refine (mul_op r52 r33 i4 i69 i64 h0 h1 _) ; finalize.
Qed.
Lemma l83 : s1 -> p99 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x / 5040), [-2.48353e-10, 3.49246e-10]) *).
 intros h0.
 assert (h1 := l81 h0).
 assert (h2 := l84 h0).
 apply t59. exact h1. refine (subset r33 i65 i69 h2 _) ; finalize.
Qed.
Lemma t60 : p76 -> p99 -> p75.
 intros h0 h1.
 refine (add r63 r65 i50 i64 i49 h0 h1 _) ; finalize.
Qed.
Lemma l64 : s1 -> p75 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x / 5040), [-2.71187e-10, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l65 h0).
 assert (h2 := l83 h0).
 apply t60. exact h1. exact h2.
Qed.
Lemma t61 : p75 -> p74.
 intros h0.
 refine (mul_mars _ _ _ _ i49 h0) ; finalize.
Qed.
Lemma l63 : s1 -> p74 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - x * x * (1 / 120 - x * x / 5040), [-2.71187e-10, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l64 h0).
 apply t61. exact h1.
Qed.
Lemma t62 : p70 -> p74 -> p69.
 intros h0 h1.
 refine (add r60 r61 i46 i49 i45 h0 h1 _) ; finalize.
Qed.
Lemma l59 : s1 -> p69 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - x * x * (1 / 120 - x * x / 5040)), [-5.04018e-10, 1.16415e-09]) *).
 intros h0.
 assert (h1 := l60 h0).
 assert (h2 := l63 h0).
 apply t62. exact h1. exact h2.
Qed.
Lemma t63 : p69 -> p68.
 intros h0.
 refine (sub_xals _ _ _ i45 h0) ; finalize.
Qed.
Lemma l58 : s1 -> p68 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - x * x * (1 / 120 - x * x / 5040), [-5.04018e-10, 1.16415e-09]) *).
 intros h0.
 assert (h1 := l59 h0).
 apply t63. exact h1.
Qed.
Lemma t64 : p66 -> p68 -> p65.
 intros h0 h1.
 refine (sub r57 r58 i43 i45 i42 h0 h1 _) ; finalize.
Qed.
Lemma l56 : s1 -> p65 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - x * x * (1 / 120 - x * x / 5040)), [3.72529e-09, 5.47107e-09]) *).
 intros h0.
 assert (h1 := l57 h0).
 assert (h2 := l58 h0).
 apply t64. exact h1. exact h2.
Qed.
Lemma t65 : p65 -> p64.
 intros h0.
 refine (sub_mibs _ _ _ _ i42 h0) ; finalize.
Qed.
Lemma l55 : s1 -> p64 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [3.72529e-09, 5.47107e-09]) *).
 intros h0.
 assert (h1 := l56 h0).
 apply t65. exact h1.
Qed.
Lemma t66 : p61 -> p64 -> p60.
 intros h0 h1.
 refine (add r54 r55 i40 i42 i39 h0 h1 _) ; finalize.
Qed.
Lemma l52 : s1 -> p60 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-3.72529e-09, 1.29217e-08]) *).
 intros h0.
 assert (h1 := l53 h0).
 assert (h2 := l55 h0).
 apply t66. exact h1. exact h2.
Qed.
Lemma t67 : p60 -> p59.
 intros h0.
 refine (sub_xals _ _ _ i39 h0) ; finalize.
Qed.
Lemma l51 : s1 -> p59 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-3.72529e-09, 1.29217e-08]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t67. exact h1.
Qed.
Lemma t68 : p15 -> p59 -> p58.
 intros h0 h1.
 refine (mul_po r11 r50 i9 i39 i38 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p58 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-2.32831e-09, 7.26843e-09]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l51 h0).
 apply t68. exact h1. exact h2.
Qed.
Definition f88 := Float2 (-11) (-31).
Definition f89 := Float2 (192153584101141029) (-85).
Definition i70 := makepairF f88 f89.
Notation p105 := (BND r51 i70). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-5.12227e-09, 4.96705e-09]) *)
Definition f90 := Float2 (192153584101141029) (-60).
Definition i71 := makepairF f15 f90.
Notation p106 := (BND r31 i71). (* BND(1 / 6 - x * x * (1 / 120 - x * x / 5040), [0.125, 0.166667]) *)
Definition f91 := Float2 (67) (-59).
Definition i72 := makepairF f91 f23.
Notation p107 := (BND r32 i72). (* BND(x * x * (1 / 120 - x * x / 5040), [1.16226e-16, 0.03125]) *)
Notation p108 := (BND r12 i23). (* BND(x * x, [1.42109e-14, 1]) *)
Definition i73 := makepairF f84 f23.
Notation p109 := (BND r33 i73). (* BND(1 / 120 - x * x / 5040, [0.00817871, 0.03125]) *)
Lemma t69 : p108 -> p109 -> p107.
 intros h0 h1.
 refine (mul_pp r12 r33 i23 i73 i72 h0 h1 _) ; finalize.
Qed.
Lemma l88 : s1 -> p107 (* BND(x * x * (1 / 120 - x * x / 5040), [1.16226e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l84 h0).
 apply t69. refine (subset r12 i9 i23 h1 _) ; finalize. refine (subset r33 i65 i73 h2 _) ; finalize.
Qed.
Definition i74 := makepairF f36 f19.
Notation p110 := (BND r16 i74). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t70 : p110 -> p107 -> p106.
 intros h0 h1.
 refine (sub r16 r32 i74 i72 i71 h0 h1 _) ; finalize.
Qed.
Lemma l87 : s1 -> p106 (* BND(1 / 6 - x * x * (1 / 120 - x * x / 5040), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l88 h0).
 apply t70. refine (subset r16 i12 i74 h1 _) ; finalize. exact h2.
Qed.
Lemma t71 : p95 -> p106 -> p105.
 intros h0 h1.
 refine (mul_op r52 r31 i4 i71 i70 h0 h1 _) ; finalize.
Qed.
Lemma l86 : s1 -> p105 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-5.12227e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l81 h0).
 assert (h2 := l87 h0).
 apply t71. exact h1. exact h2.
Qed.
Lemma t72 : p58 -> p105 -> p57.
 intros h0 h1.
 refine (add r49 r51 i38 i70 i37 h0 h1 _) ; finalize.
Qed.
Lemma l49 : s1 -> p57 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-7.45058e-09, 1.22355e-08]) *).
 intros h0.
 assert (h1 := l50 h0).
 assert (h2 := l86 h0).
 apply t72. exact h1. exact h2.
Qed.
Lemma t73 : p57 -> p56.
 intros h0.
 refine (mul_mars _ _ _ _ i37 h0) ; finalize.
Qed.
Lemma l48 : s1 -> p56 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-7.45058e-09, 1.22355e-08]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t73. exact h1.
Qed.
Lemma t74 : p51 -> p56 -> p50.
 intros h0 h1.
 refine (add r46 r47 i34 i37 i33 h0 h1 _) ; finalize.
Qed.
Lemma l43 : s1 -> p50 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.49012e-08, 1.59608e-08]) *).
 intros h0.
 assert (h1 := l44 h0).
 assert (h2 := l48 h0).
 apply t74. exact h1. exact h2.
Qed.
Lemma t75 : p50 -> p49.
 intros h0.
 refine (sub_xals _ _ _ i33 h0) ; finalize.
Qed.
Lemma l42 : s1 -> p49 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-1.49012e-08, 1.59608e-08]) *).
 intros h0.
 assert (h1 := l43 h0).
 apply t75. exact h1.
Qed.
Lemma t76 : p49 -> p48.
 intros h0.
 refine (neg r44 i33 i32 h0 _) ; finalize.
Qed.
Lemma l41 : s1 -> p48 (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.59608e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t76. exact h1.
Qed.
Lemma t77 : p48 -> p47.
 intros h0.
 refine (sub_fils _ _ _ i32 h0) ; finalize.
Qed.
Lemma l40 : s1 -> p47 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.59608e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l41 h0).
 apply t77. exact h1.
Qed.
Lemma t78 : p45 -> p47 -> p44.
 intros h0 h1.
 refine (add r41 r42 i4 i32 i31 h0 h1 _) ; finalize.
Qed.
Lemma l37 : s1 -> p44 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)))), [-4.57631e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l38 h0).
 assert (h2 := l40 h0).
 apply t78. exact h1. exact h2.
Qed.
Lemma t79 : p44 -> p43.
 intros h0.
 refine (sub_xals _ _ _ i31 h0) ; finalize.
Qed.
Lemma l36 : s1 -> p43 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-4.57631e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l37 h0).
 apply t79. exact h1.
Qed.
Lemma t80 : p1 -> p43 -> p42.
 intros h0 h1.
 refine (mul_po _x r39 i1 i31 i30 h0 h1 _) ; finalize.
Qed.
Lemma l35 : s1 -> p42 (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)))), [-3.43223e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l36 h0).
 apply t80. exact h1. exact h2.
Qed.
Lemma t81 : p42 -> p41.
 intros h0.
 refine (mul_fils _ _ _ i30 h0) ; finalize.
Qed.
Lemma l34 : s1 -> p41 (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - Mts, [-3.43223e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l35 h0).
 apply t81. exact h1.
Qed.
Lemma t82 : p6 -> p41 -> p5.
 intros h0 h1.
 refine (add r36 r37 i4 i30 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - Mts), [-6.41246e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l34 h0).
 apply t82. exact h1. exact h2.
Qed.
Lemma t83 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-6.41246e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t83. exact h1.
Qed.
Lemma t84 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 6.41246e-08]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t84. exact h1.
Qed.
Lemma t85 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 6.41246e-08]) *).
 intros h0.
 assert (h1 := l4 h0).
 apply t85. exact h1.
Qed.
Lemma l1 : s1 -> False.
 intros h0.
 assert (h1 := l2 h0).
 assert (h2 := l3 h0).
 refine (simplify (Tatom false (Abnd 0%nat i2)) Tfalse (Abnd 0%nat i2) (List.cons r2 List.nil) h2 h1 _) ; finalize.
Qed.
End Generated_by_Gappa.
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
Notation r27 := (Float1 (5040)).
Notation r26 := ((r11 / r27)%R).
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
Notation r34 := ((r12 / r27)%R).
Notation r33 := ((r23 - r34)%R).
Notation r32 := ((r12 * r33)%R).
Notation r31 := ((r16 - r32)%R).
Notation r30 := ((r12 * r31)%R).
Notation r29 := ((r8 - r30)%R).
Notation _Mts := ((_x * r29)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (310087752852306787) (-82).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 6.41246e-08]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 6.41246e-08]) *)
Definition f5 := Float2 (-310087752852306787) (-82).
Definition f6 := Float2 (17) (-28).
Definition i3 := makepairF f5 f6.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-6.41246e-08, 6.33299e-08]) *)
Notation r36 := ((_ts - r5)%R).
Notation r37 := ((r5 - _Mts)%R).
Notation r35 := ((r36 + r37)%R).
Notation p5 := (BND r35 i3). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - Mts), [-6.41246e-08, 6.33299e-08]) *)
Definition f7 := Float2 (-1) (-25).
Definition f8 := Float2 (1) (-25).
Definition i4 := makepairF f7 f8.
Notation p6 := (BND r36 i4). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [-2.98023e-08, 2.98023e-08]) *)
Definition f9 := Float2 (1) (-24).
Definition f10 := Float2 (1) (0).
Definition i5 := makepairF f9 f10.
Notation p7 := (ABS r5 i5). (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [5.96046e-08, 1]) *)
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
Notation p9 := (ABS r6 i6). (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [0.5, 1]) *)
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
Notation p13 := (BND r9 i8). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [1.77636e-15, 0.5]) *)
Notation p14 := (BND r10 i8). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [1.77636e-15, 0.5]) *)
Definition f13 := Float2 (1) (-46).
Definition f14 := Float2 (9) (-4).
Definition i9 := makepairF f13 f14.
Notation p15 := (BND r11 i9). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *)
Notation p16 := (BND r12 i9). (* BND(x * x, [1.42109e-14, 0.5625]) *)
Lemma t3 : p8 -> p16.
 intros h0.
 refine (square _x i1 i9 h0 _) ; finalize.
Qed.
Lemma l18 : s1 -> p16 (* BND(x * x, [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t3. exact h1.
Qed.
Lemma t4 : p16 -> p15.
 intros h0.
 refine (float_round_ne _ _ r12 i9 i9 h0 _) ; finalize.
Qed.
Lemma l17 : s1 -> p15 (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l18 h0).
 apply t4. exact h1.
Qed.
Definition f15 := Float2 (1) (-3).
Definition f16 := Float2 (3) (-4).
Definition i10 := makepairF f15 f16.
Notation p17 := (BND r13 i10). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.1875]) *)
Notation p18 := (BND r14 i10). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.1875]) *)
Definition f17 := Float2 (11184811) (-26).
Definition i11 := makepairF f17 f17.
Notation p19 := (BND r15 i11). (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f18 := Float2 (384307168202282325) (-61).
Definition f19 := Float2 (192153584101141163) (-60).
Definition i12 := makepairF f18 f19.
Notation p20 := (BND r16 i12). (* BND(1 / 6, [0.166667, 0.166667]) *)
Definition f20 := Float2 (3) (1).
Definition i13 := makepairF f20 f20.
Notation p21 := (BND r17 i13). (* BND(6, [6, 6]) *)
Lemma t5 : p21.
 refine (constant1 _ i13 _) ; finalize.
Qed.
Lemma l23 : s1 -> p21 (* BND(6, [6, 6]) *).
 intros h0.
 apply t5.
Qed.
Lemma t6 : p12 -> p21 -> p20.
 intros h0 h1.
 refine (div_pp r8 r17 i7 i13 i12 h0 h1 _) ; finalize.
Qed.
Lemma l22 : s1 -> p20 (* BND(1 / 6, [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l23 h0).
 apply t6. exact h1. exact h2.
Qed.
Definition f21 := Float2 (89478485) (-29).
Definition i14 := makepairF f21 f17.
Notation p22 := (BND r16 i14). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t7 : p22 -> p19.
 intros h0.
 refine (float_round_ne _ _ r16 i14 i11 h0 _) ; finalize.
Qed.
Lemma l21 : s1 -> p19 (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 apply t7. refine (subset r16 i12 i14 h1 _) ; finalize.
Qed.
Definition f22 := Float2 (1) (-53).
Definition f23 := Float2 (1) (-5).
Definition i15 := makepairF f22 f23.
Notation p23 := (BND r18 i15). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i15). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [1.11022e-16, 0.03125]) *)
Definition f24 := Float2 (1) (-7).
Definition f25 := Float2 (5) (-9).
Definition i16 := makepairF f24 f25.
Notation p25 := (BND r20 i16). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.00976562]) *)
Notation p26 := (BND r21 i16). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.00976562]) *)
Definition f26 := Float2 (8947849) (-30).
Definition i17 := makepairF f26 f26.
Notation p27 := (BND r22 i17). (* BND(float<24,-149,ne>(1 / 120), [0.00833333, 0.00833333]) *)
Definition f27 := Float2 (286331153) (-35).
Definition f28 := Float2 (614891469123651721) (-66).
Definition i18 := makepairF f27 f28.
Notation p28 := (BND r23 i18). (* BND(1 / 120, [0.00833333, 0.00833333]) *)
Definition f29 := Float2 (15) (3).
Definition i19 := makepairF f29 f29.
Notation p29 := (BND r24 i19). (* BND(120, [120, 120]) *)
Lemma t8 : p29.
 refine (constant1 _ i19 _) ; finalize.
Qed.
Lemma l30 : s1 -> p29 (* BND(120, [120, 120]) *).
 intros h0.
 apply t8.
Qed.
Lemma t9 : p12 -> p29 -> p28.
 intros h0 h1.
 refine (div_pp r8 r24 i7 i19 i18 h0 h1 _) ; finalize.
Qed.
Lemma l29 : s1 -> p28 (* BND(1 / 120, [0.00833333, 0.00833333]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l30 h0).
 apply t9. exact h1. exact h2.
Qed.
Definition i20 := makepairF f27 f26.
Notation p30 := (BND r23 i20). (* BND(1 / 120, [0.00833333, 0.00833333]) *)
Lemma t10 : p30 -> p27.
 intros h0.
 refine (float_round_ne _ _ r23 i20 i17 h0 _) ; finalize.
Qed.
Lemma l28 : s1 -> p27 (* BND(float<24,-149,ne>(1 / 120), [0.00833333, 0.00833333]) *).
 intros h0.
 assert (h1 := l29 h0).
 apply t10. refine (subset r23 i18 i20 h1 _) ; finalize.
Qed.
Definition f30 := Float2 (1) (-59).
Definition f31 := Float2 (1) (-11).
Definition i21 := makepairF f30 f31.
Notation p31 := (BND r25 i21). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [1.73472e-18, 0.000488281]) *)
Notation p32 := (BND r26 i21). (* BND(float<24,-149,ne>(x * x) / 5040, [1.73472e-18, 0.000488281]) *)
Definition f32 := Float2 (315) (4).
Definition i22 := makepairF f32 f32.
Notation p33 := (BND r27 i22). (* BND(5040, [5040, 5040]) *)
Lemma t11 : p33.
 refine (constant1 _ i22 _) ; finalize.
Qed.
Lemma l33 : s1 -> p33 (* BND(5040, [5040, 5040]) *).
 intros h0.
 apply t11.
Qed.
Definition i23 := makepairF f13 f10.
Notation p34 := (BND r11 i23). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 1]) *)
Definition f33 := Float2 (1) (11).
Definition f34 := Float2 (1) (13).
Definition i24 := makepairF f33 f34.
Notation p35 := (BND r27 i24). (* BND(5040, [2048, 8192]) *)
Lemma t12 : p34 -> p35 -> p32.
 intros h0 h1.
 refine (div_pp r11 r27 i23 i24 i21 h0 h1 _) ; finalize.
Qed.
Lemma l32 : s1 -> p32 (* BND(float<24,-149,ne>(x * x) / 5040, [1.73472e-18, 0.000488281]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l33 h0).
 apply t12. refine (subset r11 i9 i23 h1 _) ; finalize. refine (subset r27 i22 i24 h2 _) ; finalize.
Qed.
Lemma t13 : p32 -> p31.
 intros h0.
 refine (float_round_ne _ _ r26 i21 i21 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p31 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [1.73472e-18, 0.000488281]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t13. exact h1.
Qed.
Definition f35 := Float2 (17) (-11).
Definition i25 := makepairF f35 f25.
Notation p36 := (BND r22 i25). (* BND(float<24,-149,ne>(1 / 120), [0.00830078, 0.00976562]) *)
Lemma t14 : p36 -> p31 -> p26.
 intros h0 h1.
 refine (sub r22 r25 i25 i21 i16 h0 h1 _) ; finalize.
Qed.
Lemma l27 : s1 -> p26 (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l28 h0).
 assert (h2 := l31 h0).
 apply t14. refine (subset r22 i17 i25 h1 _) ; finalize. exact h2.
Qed.
Lemma t15 : p26 -> p25.
 intros h0.
 refine (float_round_ne _ _ r21 i16 i16 h0 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t15. exact h1.
Qed.
Definition i26 := makepairF f24 f23.
Notation p37 := (BND r20 i26). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.03125]) *)
Lemma t16 : p34 -> p37 -> p24.
 intros h0 h1.
 refine (mul_pp r11 r20 i23 i26 i15 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t16. refine (subset r11 i9 i23 h1 _) ; finalize. refine (subset r20 i16 i26 h2 _) ; finalize.
Qed.
Lemma t17 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i15 i15 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t17. exact h1.
Qed.
Definition f36 := Float2 (5) (-5).
Definition i27 := makepairF f36 f16.
Notation p38 := (BND r15 i27). (* BND(float<24,-149,ne>(1 / 6), [0.15625, 0.1875]) *)
Lemma t18 : p38 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i27 i15 i10 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t18. refine (subset r15 i11 i27 h1 _) ; finalize. exact h2.
Qed.
Lemma t19 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i10 i10 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t19. exact h1.
Qed.
Definition i28 := makepairF f15 f11.
Notation p39 := (BND r13 i28). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.5]) *)
Lemma t20 : p34 -> p39 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i23 i28 i8 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t20. refine (subset r11 i9 i23 h1 _) ; finalize. refine (subset r13 i10 i28 h2 _) ; finalize.
Qed.
Lemma t21 : p14 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t21. exact h1.
Qed.
Lemma t22 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t22. exact h1. exact h2.
Qed.
Lemma t23 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t23. exact h1.
Qed.
Lemma t24 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t24. exact h1.
Qed.
Definition i29 := makepairF f1 f10.
Notation p40 := (ABS _x i29). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t25 : p40 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i29 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t25. refine (abs_subset _x i1 i29 h1 _) ; finalize. exact h2.
Qed.
Lemma t26 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t26. exact h1.
Qed.
Definition f37 := Float2 (-165972564776450915) (-82).
Definition f38 := Float2 (9) (-28).
Definition i30 := makepairF f37 f38.
Notation p41 := (BND r37 i30). (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - Mts, [-3.43223e-08, 3.35276e-08]) *)
Notation r39 := ((r6 - r29)%R).
Notation r38 := ((_x * r39)%R).
Notation p42 := (BND r38 i30). (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)))), [-3.43223e-08, 3.35276e-08]) *)
Definition f39 := Float2 (-442593506070535773) (-83).
Definition f40 := Float2 (3) (-26).
Definition i31 := makepairF f39 f40.
Notation p43 := (BND r39 i31). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-4.57631e-08, 4.47035e-08]) *)
Notation r41 := ((r6 - r7)%R).
Notation r42 := ((r7 - r29)%R).
Notation r40 := ((r41 + r42)%R).
Notation p44 := (BND r40 i31). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)))), [-4.57631e-08, 4.47035e-08]) *)
Notation p45 := (BND r41 i4). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [-2.98023e-08, 2.98023e-08]) *)
Notation p46 := (ABS r7 i6). (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [0.5, 1]) *)
Lemma t27 : p11 -> p46.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l39 : s1 -> p46 (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t27. exact h1.
Qed.
Lemma t28 : p46 -> p45.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l38 : s1 -> p45 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l39 h0).
 apply t28. exact h1.
Qed.
Definition f41 := Float2 (-154363129918824029) (-83).
Definition f42 := Float2 (1) (-26).
Definition i32 := makepairF f41 f42.
Notation p47 := (BND r42 i32). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.59608e-08, 1.49012e-08]) *)
Notation r44 := ((r9 - r30)%R).
Notation r43 := ((- r44)%R).
Notation p48 := (BND r43 i32). (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.59608e-08, 1.49012e-08]) *)
Definition f43 := Float2 (-1) (-26).
Definition f44 := Float2 (154363129918824029) (-83).
Definition i33 := makepairF f43 f44.
Notation p49 := (BND r44 i33). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-1.49012e-08, 1.59608e-08]) *)
Notation r46 := ((r9 - r10)%R).
Notation r47 := ((r10 - r30)%R).
Notation r45 := ((r46 + r47)%R).
Notation p50 := (BND r45 i33). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.49012e-08, 1.59608e-08]) *)
Definition f45 := Float2 (-1) (-27).
Definition f46 := Float2 (1) (-28).
Definition i34 := makepairF f45 f46.
Notation p51 := (BND r46 i34). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [-7.45058e-09, 3.72529e-09]) *)
Definition i35 := makepairF f12 f15.
Notation p52 := (ABS r10 i35). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [1.77636e-15, 0.125]) *)
Notation p53 := (ABS r11 i9). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *)
Lemma t29 : p15 -> p53.
 intros h0.
 refine (abs_of_bnd_p r11 i9 i9 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p53 (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t29. exact h1.
Qed.
Notation p54 := (ABS r13 i10). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.1875]) *)
Lemma t30 : p17 -> p54.
 intros h0.
 refine (abs_of_bnd_p r13 i10 i10 h0 _) ; finalize.
Qed.
Lemma l47 : s1 -> p54 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l19 h0).
 apply t30. exact h1.
Qed.
Definition f47 := Float2 (5) (-3).
Definition i36 := makepairF f13 f47.
Notation p55 := (ABS r11 i36). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Lemma t31 : p55 -> p54 -> p52.
 intros h0 h1.
 refine (mul_aa r11 r13 i36 i10 i35 h0 h1 _) ; finalize.
Qed.
Lemma l45 : s1 -> p52 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l47 h0).
 apply t31. refine (abs_subset r11 i9 i36 h1 _) ; finalize. exact h2.
Qed.
Lemma t32 : p52 -> p51.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i35 i34 h0 _) ; finalize.
Qed.
Lemma l44 : s1 -> p51 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [-7.45058e-09, 3.72529e-09]) *).
 intros h0.
 assert (h1 := l45 h0).
 apply t32. exact h1.
Qed.
Definition f48 := Float2 (118334332899860061) (-83).
Definition i37 := makepairF f45 f48.
Notation p56 := (BND r47 i37). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-7.45058e-09, 1.22355e-08]) *)
Notation r50 := ((r13 - r31)%R).
Notation r49 := ((r11 * r50)%R).
Notation r52 := ((r11 - r12)%R).
Notation r51 := ((r52 * r31)%R).
Notation r48 := ((r49 + r51)%R).
Notation p57 := (BND r48 i37). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-7.45058e-09, 1.22355e-08]) *)
Definition f49 := Float2 (-5) (-31).
Definition f50 := Float2 (281183747498299215) (-85).
Definition i38 := makepairF f49 f50.
Notation p58 := (BND r49 i38). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-2.32831e-09, 7.26843e-09]) *)
Definition f51 := Float2 (-1) (-28).
Definition f52 := Float2 (31242638610922135) (-81).
Definition i39 := makepairF f51 f52.
Notation p59 := (BND r50 i39). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-3.72529e-09, 1.29217e-08]) *)
Notation r54 := ((r13 - r14)%R).
Notation r55 := ((r14 - r31)%R).
Notation r53 := ((r54 + r55)%R).
Notation p60 := (BND r53 i39). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-3.72529e-09, 1.29217e-08]) *)
Definition f53 := Float2 (1) (-27).
Definition i40 := makepairF f45 f53.
Notation p61 := (BND r54 i40). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [-7.45058e-09, 7.45058e-09]) *)
Definition f54 := Float2 (1) (-2).
Definition i41 := makepairF f15 f54.
Notation p62 := (ABS r14 i41). (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.25]) *)
Notation p63 := (BND r14 i41). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.25]) *)
Lemma t33 : p63 -> p62.
 intros h0.
 refine (abs_of_bnd_p r14 i41 i41 h0 _) ; finalize.
Qed.
Lemma l54 : s1 -> p62 (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t33. refine (subset r14 i10 i41 h1 _) ; finalize.
Qed.
Lemma t34 : p62 -> p61.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i41 i40 h0 _) ; finalize.
Qed.
Lemma l53 : s1 -> p61 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))), [-7.45058e-09, 7.45058e-09]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t34. exact h1.
Qed.
Definition f55 := Float2 (13228240101440151) (-81).
Definition i42 := makepairF f46 f55.
Notation p64 := (BND r55 i42). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [3.72529e-09, 5.47107e-09]) *)
Notation r57 := ((r15 - r16)%R).
Notation r58 := ((r18 - r32)%R).
Notation r56 := ((r57 - r58)%R).
Notation p65 := (BND r56 i42). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - x * x * (1 / 120 - x * x / 5040)), [3.72529e-09, 5.47107e-09]) *)
Definition f56 := Float2 (21) (-32).
Definition f57 := Float2 (11453246123) (-61).
Definition i43 := makepairF f56 f57.
Notation p66 := (BND r57 i43). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *)
Definition f58 := Float2 (715827883) (-32).
Definition i44 := makepairF f18 f58.
Notation p67 := (BND r16 i44). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t35 : p19 -> p67 -> p66.
 intros h0 h1.
 refine (sub r15 r16 i11 i44 i43 h0 h1 _) ; finalize.
Qed.
Lemma l57 : s1 -> p66 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t35. exact h1. refine (subset r16 i12 i44 h2 _) ; finalize.
Qed.
Definition f59 := Float2 (-1218641094769303) (-81).
Definition f60 := Float2 (5) (-32).
Definition i45 := makepairF f59 f60.
Notation p68 := (BND r58 i45). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - x * x * (1 / 120 - x * x / 5040), [-5.04018e-10, 1.16415e-09]) *)
Notation r60 := ((r18 - r19)%R).
Notation r61 := ((r19 - r32)%R).
Notation r59 := ((r60 + r61)%R).
Notation p69 := (BND r59 i45). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - x * x * (1 / 120 - x * x / 5040)), [-5.04018e-10, 1.16415e-09]) *)
Definition f61 := Float2 (-1) (-32).
Definition f62 := Float2 (1) (-32).
Definition i46 := makepairF f61 f62.
Notation p70 := (BND r60 i46). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [-2.32831e-10, 2.32831e-10]) *)
Definition i47 := makepairF f22 f24.
Notation p71 := (ABS r19 i47). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [1.11022e-16, 0.0078125]) *)
Notation p72 := (ABS r20 i16). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.00976562]) *)
Lemma t36 : p25 -> p72.
 intros h0.
 refine (abs_of_bnd_p r20 i16 i16 h0 _) ; finalize.
Qed.
Lemma l62 : s1 -> p72 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [0.0078125, 0.00976562]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t36. exact h1.
Qed.
Definition i48 := makepairF f13 f2.
Notation p73 := (ABS r11 i48). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t37 : p73 -> p72 -> p71.
 intros h0 h1.
 refine (mul_aa r11 r20 i48 i16 i47 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p71 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l62 h0).
 apply t37. refine (abs_subset r11 i9 i48 h1 _) ; finalize. exact h2.
Qed.
Lemma t38 : p71 -> p70.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i47 i46 h0 _) ; finalize.
Qed.
Lemma l60 : s1 -> p70 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [-2.32831e-10, 2.32831e-10]) *).
 intros h0.
 assert (h1 := l61 h0).
 apply t38. exact h1.
Qed.
Definition f63 := Float2 (-655691141347991) (-81).
Definition f64 := Float2 (1) (-30).
Definition i49 := makepairF f63 f64.
Notation p74 := (BND r61 i49). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - x * x * (1 / 120 - x * x / 5040), [-2.71187e-10, 9.31323e-10]) *)
Notation r64 := ((r20 - r33)%R).
Notation r63 := ((r11 * r64)%R).
Notation r65 := ((r52 * r33)%R).
Notation r62 := ((r63 + r65)%R).
Notation p75 := (BND r62 i49). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x / 5040), [-2.71187e-10, 9.31323e-10]) *)
Definition f65 := Float2 (-883379056510801) (-85).
Definition f66 := Float2 (5) (-33).
Definition i50 := makepairF f65 f66.
Notation p76 := (BND r63 i50). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040)), [-2.28348e-11, 5.82077e-10]) *)
Definition f67 := Float2 (-1570451656019201) (-85).
Definition i51 := makepairF f67 f64.
Notation p77 := (BND r64 i51). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040), [-4.05952e-11, 9.31323e-10]) *)
Notation r67 := ((r20 - r21)%R).
Notation r68 := ((r21 - r33)%R).
Notation r66 := ((r67 + r68)%R).
Notation p78 := (BND r66 i51). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) + (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - (1 / 120 - x * x / 5040)), [-4.05952e-11, 9.31323e-10]) *)
Definition f68 := Float2 (-1) (-31).
Definition f69 := Float2 (1) (-31).
Definition i52 := makepairF f68 f69.
Notation p79 := (BND r67 i52). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [-4.65661e-10, 4.65661e-10]) *)
Definition f70 := Float2 (1) (-6).
Definition i53 := makepairF f24 f70.
Notation p80 := (ABS r21 i53). (* ABS(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.015625]) *)
Notation p81 := (BND r21 i53). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.015625]) *)
Lemma t39 : p81 -> p80.
 intros h0.
 refine (abs_of_bnd_p r21 i53 i53 h0 _) ; finalize.
Qed.
Lemma l69 : s1 -> p80 (* ABS(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040), [0.0078125, 0.015625]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t39. refine (subset r21 i16 i53 h1 _) ; finalize.
Qed.
Lemma t40 : p80 -> p79.
 intros h0.
 refine (float_absolute_wide_ne _ _ r21 i53 i52 h0 _) ; finalize.
Qed.
Lemma l68 : s1 -> p79 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)), [-4.65661e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l69 h0).
 apply t40. exact h1.
Qed.
Definition f71 := Float2 (16443946853462783) (-85).
Definition i54 := makepairF f71 f69.
Notation p82 := (BND r68 i54). (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - (1 / 120 - x * x / 5040), [4.25066e-10, 4.65661e-10]) *)
Notation r70 := ((r22 - r23)%R).
Notation r71 := ((r25 - r34)%R).
Notation r69 := ((r70 - r71)%R).
Notation p83 := (BND r69 i54). (* BND(float<24,-149,ne>(1 / 120) - 1 / 120 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - x * x / 5040), [4.25066e-10, 4.65661e-10]) *)
Definition f72 := Float2 (32069089143) (-66).
Definition f73 := Float2 (15) (-35).
Definition i55 := makepairF f72 f73.
Notation p84 := (BND r70 i55). (* BND(float<24,-149,ne>(1 / 120) - 1 / 120, [4.34617e-10, 4.36557e-10]) *)
Lemma t41 : p27 -> p28 -> p84.
 intros h0 h1.
 refine (sub r22 r23 i17 i18 i55 h0 h1 _) ; finalize.
Qed.
Lemma l72 : s1 -> p84 (* BND(float<24,-149,ne>(1 / 120) - 1 / 120, [4.34617e-10, 4.36557e-10]) *).
 intros h0.
 assert (h1 := l28 h0).
 assert (h2 := l29 h0).
 apply t41. exact h1. exact h2.
Qed.
Definition f74 := Float2 (-1) (-35).
Definition f75 := Float2 (369491755142401) (-85).
Definition i56 := makepairF f74 f75.
Notation p85 := (BND r71 i56). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - x * x / 5040, [-2.91038e-11, 9.55114e-12]) *)
Notation r73 := ((r25 - r26)%R).
Notation r74 := ((r26 - r34)%R).
Notation r72 := ((r73 + r74)%R).
Notation p86 := (BND r72 i56). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - float<24,-149,ne>(x * x) / 5040 + (float<24,-149,ne>(x * x) / 5040 - x * x / 5040), [-2.91038e-11, 9.55114e-12]) *)
Definition f76 := Float2 (-1) (-36).
Definition f77 := Float2 (1) (-38).
Definition i57 := makepairF f76 f77.
Notation p87 := (BND r73 i57). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - float<24,-149,ne>(x * x) / 5040, [-1.45519e-11, 3.63798e-12]) *)
Definition f78 := Float2 (1) (-13).
Definition i58 := makepairF f30 f78.
Notation p88 := (ABS r26 i58). (* ABS(float<24,-149,ne>(x * x) / 5040, [1.73472e-18, 0.00012207]) *)
Definition f79 := Float2 (9) (9).
Definition i59 := makepairF f79 f34.
Notation p89 := (ABS r27 i59). (* ABS(5040, [4608, 8192]) *)
Notation p90 := (BND r27 i59). (* BND(5040, [4608, 8192]) *)
Lemma t42 : p90 -> p89.
 intros h0.
 refine (abs_of_bnd_p r27 i59 i59 h0 _) ; finalize.
Qed.
Lemma l77 : s1 -> p89 (* ABS(5040, [4608, 8192]) *).
 intros h0.
 assert (h1 := l33 h0).
 apply t42. refine (subset r27 i22 i59 h1 _) ; finalize.
Qed.
Lemma t43 : p53 -> p89 -> p88.
 intros h0 h1.
 refine (div_aa r11 r27 i9 i59 i58 h0 h1 _) ; finalize.
Qed.
Lemma l76 : s1 -> p88 (* ABS(float<24,-149,ne>(x * x) / 5040, [1.73472e-18, 0.00012207]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l77 h0).
 apply t43. exact h1. exact h2.
Qed.
Lemma t44 : p88 -> p87.
 intros h0.
 refine (float_absolute_wide_ne _ _ r26 i58 i57 h0 _) ; finalize.
Qed.
Lemma l75 : s1 -> p87 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - float<24,-149,ne>(x * x) / 5040, [-1.45519e-11, 3.63798e-12]) *).
 intros h0.
 assert (h1 := l76 h0).
 apply t44. exact h1.
Qed.
Definition f80 := Float2 (228754266787073) (-85).
Definition i60 := makepairF f76 f80.
Notation p91 := (BND r74 i60). (* BND(float<24,-149,ne>(x * x) / 5040 - x * x / 5040, [-1.45519e-11, 5.91316e-12]) *)
Notation p92 := (NZR r27). (* NZR(5040) *)
Definition i61 := makepairF f10 f34.
Notation p93 := (ABS r27 i61). (* ABS(5040, [1, 8192]) *)
Lemma t45 : p93 -> p92.
 intros h0.
 refine (nzr_of_abs r27 i61 h0 _) ; finalize.
Qed.
Lemma l79 : s1 -> p92 (* NZR(5040) *).
 intros h0.
 assert (h1 := l77 h0).
 apply t45. refine (abs_subset r27 i59 i61 h1 _) ; finalize.
Qed.
Notation r75 := ((r52 / r27)%R).
Notation p94 := (BND r75 i60). (* BND((float<24,-149,ne>(x * x) - x * x) / 5040, [-1.45519e-11, 5.91316e-12]) *)
Notation p95 := (BND r52 i4). (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *)
Notation p96 := (ABS r12 i23). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t46 : p40 -> p40 -> p96.
 intros h0 h1.
 refine (mul_aa _x _x i29 i29 i23 h0 h1 _) ; finalize.
Qed.
Lemma l82 : s1 -> p96 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t46. refine (abs_subset _x i1 i29 h1 _) ; finalize. refine (abs_subset _x i1 i29 h1 _) ; finalize.
Qed.
Lemma t47 : p96 -> p95.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i23 i4 h0 _) ; finalize.
Qed.
Lemma l81 : s1 -> p95 (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l82 h0).
 apply t47. exact h1.
Qed.
Definition f81 := Float2 (-1) (-24).
Definition i62 := makepairF f81 f8.
Notation p97 := (BND r52 i62). (* BND(float<24,-149,ne>(x * x) - x * x, [-5.96046e-08, 2.98023e-08]) *)
Definition i63 := makepairF f32 f34.
Notation p98 := (BND r27 i63). (* BND(5040, [5040, 8192]) *)
Lemma t48 : p97 -> p98 -> p94.
 intros h0 h1.
 refine (div_op r52 r27 i62 i63 i60 h0 h1 _) ; finalize.
Qed.
Lemma l80 : s1 -> p94 (* BND((float<24,-149,ne>(x * x) - x * x) / 5040, [-1.45519e-11, 5.91316e-12]) *).
 intros h0.
 assert (h1 := l81 h0).
 assert (h2 := l33 h0).
 apply t48. refine (subset r52 i4 i62 h1 _) ; finalize. refine (subset r27 i22 i63 h2 _) ; finalize.
Qed.
Lemma t49 : p92 -> p94 -> p91.
 intros h0 h1.
 refine (div_firs _ r27 _ i60 h0 h1) ; finalize.
Qed.
Lemma l78 : s1 -> p91 (* BND(float<24,-149,ne>(x * x) / 5040 - x * x / 5040, [-1.45519e-11, 5.91316e-12]) *).
 intros h0.
 assert (h1 := l79 h0).
 assert (h2 := l80 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p87 -> p91 -> p86.
 intros h0 h1.
 refine (add r73 r74 i57 i60 i56 h0 h1 _) ; finalize.
Qed.
Lemma l74 : s1 -> p86 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - float<24,-149,ne>(x * x) / 5040 + (float<24,-149,ne>(x * x) / 5040 - x * x / 5040), [-2.91038e-11, 9.55114e-12]) *).
 intros h0.
 assert (h1 := l75 h0).
 assert (h2 := l78 h0).
 apply t50. exact h1. exact h2.
Qed.
Lemma t51 : p86 -> p85.
 intros h0.
 refine (sub_xals _ _ _ i56 h0) ; finalize.
Qed.
Lemma l73 : s1 -> p85 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - x * x / 5040, [-2.91038e-11, 9.55114e-12]) *).
 intros h0.
 assert (h1 := l74 h0).
 apply t51. exact h1.
Qed.
Lemma t52 : p84 -> p85 -> p83.
 intros h0 h1.
 refine (sub r70 r71 i55 i56 i54 h0 h1 _) ; finalize.
Qed.
Lemma l71 : s1 -> p83 (* BND(float<24,-149,ne>(1 / 120) - 1 / 120 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - x * x / 5040), [4.25066e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l72 h0).
 assert (h2 := l73 h0).
 apply t52. exact h1. exact h2.
Qed.
Lemma t53 : p83 -> p82.
 intros h0.
 refine (sub_mibs _ _ _ _ i54 h0) ; finalize.
Qed.
Lemma l70 : s1 -> p82 (* BND(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - (1 / 120 - x * x / 5040), [4.25066e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l71 h0).
 apply t53. exact h1.
Qed.
Lemma t54 : p79 -> p82 -> p78.
 intros h0 h1.
 refine (add r67 r68 i52 i54 i51 h0 h1 _) ; finalize.
Qed.
Lemma l67 : s1 -> p78 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) + (float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040) - (1 / 120 - x * x / 5040)), [-4.05952e-11, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l68 h0).
 assert (h2 := l70 h0).
 apply t54. exact h1. exact h2.
Qed.
Lemma t55 : p78 -> p77.
 intros h0.
 refine (sub_xals _ _ _ i51 h0) ; finalize.
Qed.
Lemma l66 : s1 -> p77 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040), [-4.05952e-11, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l67 h0).
 apply t55. exact h1.
Qed.
Lemma t56 : p15 -> p77 -> p76.
 intros h0 h1.
 refine (mul_po r11 r64 i9 i51 i50 h0 h1 _) ; finalize.
Qed.
Lemma l65 : s1 -> p76 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040)), [-2.28348e-11, 5.82077e-10]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l66 h0).
 apply t56. exact h1. exact h2.
Qed.
Definition f82 := Float2 (-9607679205057055) (-85).
Definition f83 := Float2 (3) (-33).
Definition i64 := makepairF f82 f83.
Notation p99 := (BND r65 i64). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x / 5040), [-2.48353e-10, 3.49246e-10]) *)
Definition f84 := Float2 (67) (-13).
Definition f85 := Float2 (9607679205057055) (-60).
Definition i65 := makepairF f84 f85.
Notation p100 := (BND r33 i65). (* BND(1 / 120 - x * x / 5040, [0.00817871, 0.00833333]) *)
Definition f86 := Float2 (13) (-62).
Definition i66 := makepairF f86 f78.
Notation p101 := (BND r34 i66). (* BND(x * x / 5040, [2.81893e-18, 0.00012207]) *)
Definition i67 := makepairF f79 f32.
Notation p102 := (BND r27 i67). (* BND(5040, [4608, 5040]) *)
Lemma t57 : p16 -> p102 -> p101.
 intros h0 h1.
 refine (div_pp r12 r27 i9 i67 i66 h0 h1 _) ; finalize.
Qed.
Lemma l85 : s1 -> p101 (* BND(x * x / 5040, [2.81893e-18, 0.00012207]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l33 h0).
 apply t57. exact h1. refine (subset r27 i22 i67 h2 _) ; finalize.
Qed.
Definition f87 := Float2 (38430716820228233) (-62).
Definition i68 := makepairF f35 f87.
Notation p103 := (BND r23 i68). (* BND(1 / 120, [0.00830078, 0.00833333]) *)
Lemma t58 : p103 -> p101 -> p100.
 intros h0 h1.
 refine (sub r23 r34 i68 i66 i65 h0 h1 _) ; finalize.
Qed.
Lemma l84 : s1 -> p100 (* BND(1 / 120 - x * x / 5040, [0.00817871, 0.00833333]) *).
 intros h0.
 assert (h1 := l29 h0).
 assert (h2 := l85 h0).
 apply t58. refine (subset r23 i18 i68 h1 _) ; finalize. exact h2.
Qed.
Definition i69 := makepairF f24 f85.
Notation p104 := (BND r33 i69). (* BND(1 / 120 - x * x / 5040, [0.0078125, 0.00833333]) *)
Lemma t59 : p95 -> p104 -> p99.
 intros h0 h1.
 refine (mul_op r52 r33 i4 i69 i64 h0 h1 _) ; finalize.
Qed.
Lemma l83 : s1 -> p99 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x / 5040), [-2.48353e-10, 3.49246e-10]) *).
 intros h0.
 assert (h1 := l81 h0).
 assert (h2 := l84 h0).
 apply t59. exact h1. refine (subset r33 i65 i69 h2 _) ; finalize.
Qed.
Lemma t60 : p76 -> p99 -> p75.
 intros h0 h1.
 refine (add r63 r65 i50 i64 i49 h0 h1 _) ; finalize.
Qed.
Lemma l64 : s1 -> p75 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - (1 / 120 - x * x / 5040)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 120 - x * x / 5040), [-2.71187e-10, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l65 h0).
 assert (h2 := l83 h0).
 apply t60. exact h1. exact h2.
Qed.
Lemma t61 : p75 -> p74.
 intros h0.
 refine (mul_mars _ _ _ _ i49 h0) ; finalize.
Qed.
Lemma l63 : s1 -> p74 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - x * x * (1 / 120 - x * x / 5040), [-2.71187e-10, 9.31323e-10]) *).
 intros h0.
 assert (h1 := l64 h0).
 apply t61. exact h1.
Qed.
Lemma t62 : p70 -> p74 -> p69.
 intros h0 h1.
 refine (add r60 r61 i46 i49 i45 h0 h1 _) ; finalize.
Qed.
Lemma l59 : s1 -> p69 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)) - x * x * (1 / 120 - x * x / 5040)), [-5.04018e-10, 1.16415e-09]) *).
 intros h0.
 assert (h1 := l60 h0).
 assert (h2 := l63 h0).
 apply t62. exact h1. exact h2.
Qed.
Lemma t63 : p69 -> p68.
 intros h0.
 refine (sub_xals _ _ _ i45 h0) ; finalize.
Qed.
Lemma l58 : s1 -> p68 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - x * x * (1 / 120 - x * x / 5040), [-5.04018e-10, 1.16415e-09]) *).
 intros h0.
 assert (h1 := l59 h0).
 apply t63. exact h1.
Qed.
Lemma t64 : p66 -> p68 -> p65.
 intros h0 h1.
 refine (sub r57 r58 i43 i45 i42 h0 h1 _) ; finalize.
Qed.
Lemma l56 : s1 -> p65 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - x * x * (1 / 120 - x * x / 5040)), [3.72529e-09, 5.47107e-09]) *).
 intros h0.
 assert (h1 := l57 h0).
 assert (h2 := l58 h0).
 apply t64. exact h1. exact h2.
Qed.
Lemma t65 : p65 -> p64.
 intros h0.
 refine (sub_mibs _ _ _ _ i42 h0) ; finalize.
Qed.
Lemma l55 : s1 -> p64 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [3.72529e-09, 5.47107e-09]) *).
 intros h0.
 assert (h1 := l56 h0).
 apply t65. exact h1.
Qed.
Lemma t66 : p61 -> p64 -> p60.
 intros h0 h1.
 refine (add r54 r55 i40 i42 i39 h0 h1 _) ; finalize.
Qed.
Lemma l52 : s1 -> p60 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-3.72529e-09, 1.29217e-08]) *).
 intros h0.
 assert (h1 := l53 h0).
 assert (h2 := l55 h0).
 apply t66. exact h1. exact h2.
Qed.
Lemma t67 : p60 -> p59.
 intros h0.
 refine (sub_xals _ _ _ i39 h0) ; finalize.
Qed.
Lemma l51 : s1 -> p59 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-3.72529e-09, 1.29217e-08]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t67. exact h1.
Qed.
Lemma t68 : p15 -> p59 -> p58.
 intros h0 h1.
 refine (mul_po r11 r50 i9 i39 i38 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p58 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-2.32831e-09, 7.26843e-09]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l51 h0).
 apply t68. exact h1. exact h2.
Qed.
Definition f88 := Float2 (-11) (-31).
Definition f89 := Float2 (192153584101141029) (-85).
Definition i70 := makepairF f88 f89.
Notation p105 := (BND r51 i70). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-5.12227e-09, 4.96705e-09]) *)
Definition f90 := Float2 (192153584101141029) (-60).
Definition i71 := makepairF f15 f90.
Notation p106 := (BND r31 i71). (* BND(1 / 6 - x * x * (1 / 120 - x * x / 5040), [0.125, 0.166667]) *)
Definition f91 := Float2 (67) (-59).
Definition i72 := makepairF f91 f23.
Notation p107 := (BND r32 i72). (* BND(x * x * (1 / 120 - x * x / 5040), [1.16226e-16, 0.03125]) *)
Notation p108 := (BND r12 i23). (* BND(x * x, [1.42109e-14, 1]) *)
Definition i73 := makepairF f84 f23.
Notation p109 := (BND r33 i73). (* BND(1 / 120 - x * x / 5040, [0.00817871, 0.03125]) *)
Lemma t69 : p108 -> p109 -> p107.
 intros h0 h1.
 refine (mul_pp r12 r33 i23 i73 i72 h0 h1 _) ; finalize.
Qed.
Lemma l88 : s1 -> p107 (* BND(x * x * (1 / 120 - x * x / 5040), [1.16226e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l84 h0).
 apply t69. refine (subset r12 i9 i23 h1 _) ; finalize. refine (subset r33 i65 i73 h2 _) ; finalize.
Qed.
Definition i74 := makepairF f36 f19.
Notation p110 := (BND r16 i74). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t70 : p110 -> p107 -> p106.
 intros h0 h1.
 refine (sub r16 r32 i74 i72 i71 h0 h1 _) ; finalize.
Qed.
Lemma l87 : s1 -> p106 (* BND(1 / 6 - x * x * (1 / 120 - x * x / 5040), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l88 h0).
 apply t70. refine (subset r16 i12 i74 h1 _) ; finalize. exact h2.
Qed.
Lemma t71 : p95 -> p106 -> p105.
 intros h0 h1.
 refine (mul_op r52 r31 i4 i71 i70 h0 h1 _) ; finalize.
Qed.
Lemma l86 : s1 -> p105 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-5.12227e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l81 h0).
 assert (h2 := l87 h0).
 apply t71. exact h1. exact h2.
Qed.
Lemma t72 : p58 -> p105 -> p57.
 intros h0 h1.
 refine (add r49 r51 i38 i70 i37 h0 h1 _) ; finalize.
Qed.
Lemma l49 : s1 -> p57 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - (1 / 6 - x * x * (1 / 120 - x * x / 5040))) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-7.45058e-09, 1.22355e-08]) *).
 intros h0.
 assert (h1 := l50 h0).
 assert (h2 := l86 h0).
 apply t72. exact h1. exact h2.
Qed.
Lemma t73 : p57 -> p56.
 intros h0.
 refine (mul_mars _ _ _ _ i37 h0) ; finalize.
Qed.
Lemma l48 : s1 -> p56 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-7.45058e-09, 1.22355e-08]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t73. exact h1.
Qed.
Lemma t74 : p51 -> p56 -> p50.
 intros h0 h1.
 refine (add r46 r47 i34 i37 i33 h0 h1 _) ; finalize.
Qed.
Lemma l43 : s1 -> p50 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.49012e-08, 1.59608e-08]) *).
 intros h0.
 assert (h1 := l44 h0).
 assert (h2 := l48 h0).
 apply t74. exact h1. exact h2.
Qed.
Lemma t75 : p50 -> p49.
 intros h0.
 refine (sub_xals _ _ _ i33 h0) ; finalize.
Qed.
Lemma l42 : s1 -> p49 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)), [-1.49012e-08, 1.59608e-08]) *).
 intros h0.
 assert (h1 := l43 h0).
 apply t75. exact h1.
Qed.
Lemma t76 : p49 -> p48.
 intros h0.
 refine (neg r44 i33 i32 h0 _) ; finalize.
Qed.
Lemma l41 : s1 -> p48 (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.59608e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t76. exact h1.
Qed.
Lemma t77 : p48 -> p47.
 intros h0.
 refine (sub_fils _ _ _ i32 h0) ; finalize.
Qed.
Lemma l40 : s1 -> p47 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-1.59608e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l41 h0).
 apply t77. exact h1.
Qed.
Lemma t78 : p45 -> p47 -> p44.
 intros h0 h1.
 refine (add r41 r42 i4 i32 i31 h0 h1 _) ; finalize.
Qed.
Lemma l37 : s1 -> p44 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)))), [-4.57631e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l38 h0).
 assert (h2 := l40 h0).
 apply t78. exact h1. exact h2.
Qed.
Lemma t79 : p44 -> p43.
 intros h0.
 refine (sub_xals _ _ _ i31 h0) ; finalize.
Qed.
Lemma l36 : s1 -> p43 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040))), [-4.57631e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l37 h0).
 apply t79. exact h1.
Qed.
Lemma t80 : p1 -> p43 -> p42.
 intros h0 h1.
 refine (mul_po _x r39 i1 i31 i30 h0 h1 _) ; finalize.
Qed.
Lemma l35 : s1 -> p42 (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - (1 - x * x * (1 / 6 - x * x * (1 / 120 - x * x / 5040)))), [-3.43223e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l36 h0).
 apply t80. exact h1. exact h2.
Qed.
Lemma t81 : p42 -> p41.
 intros h0.
 refine (mul_fils _ _ _ i30 h0) ; finalize.
Qed.
Lemma l34 : s1 -> p41 (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - Mts, [-3.43223e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l35 h0).
 apply t81. exact h1.
Qed.
Lemma t82 : p6 -> p41 -> p5.
 intros h0 h1.
 refine (add r36 r37 i4 i30 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 120) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 5040)))))) - Mts), [-6.41246e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l34 h0).
 apply t82. exact h1. exact h2.
Qed.
Lemma t83 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-6.41246e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t83. exact h1.
Qed.
Lemma t84 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 6.41246e-08]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t84. exact h1.
Qed.
Lemma t85 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 6.41246e-08]) *).
 intros h0.
 assert (h1 := l4 h0).
 apply t85. exact h1.
Qed.
Lemma l1 : s1 -> False.
 intros h0.
 assert (h1 := l2 h0).
 assert (h2 := l3 h0).
 refine (simplify (Tatom false (Abnd 0%nat i2)) Tfalse (Abnd 0%nat i2) (List.cons r2 List.nil) h2 h1 _) ; finalize.
Qed.
End Generated_by_Gappa.
