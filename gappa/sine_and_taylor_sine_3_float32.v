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
Notation r13 := (Float1 (6)).
Notation r10 := ((r11 / r13)%R).
Notation r9 := ((rounding_float rndNE (24)%positive (-149)%Z) r10).
Notation r7 := ((r8 - r9)%R).
Notation r6 := ((rounding_float rndNE (24)%positive (-149)%Z) r7).
Notation r5 := ((_x * r6)%R).
Notation _ts := ((rounding_float rndNE (24)%positive (-149)%Z) r5).
Notation r16 := ((r12 / r13)%R).
Notation r15 := ((r8 - r16)%R).
Notation _Mts := ((_x * r15)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (1134907106097364993) (-84).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 5.86733e-08]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 5.86733e-08]) *)
Definition f5 := Float2 (-1134907106097364993) (-84).
Definition i3 := makepairF f5 f4.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-5.86733e-08, 5.86733e-08]) *)
Notation r18 := ((_ts - r5)%R).
Notation r19 := ((r5 - _Mts)%R).
Notation r17 := ((r18 + r19)%R).
Notation p5 := (BND r17 i3). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - Mts), [-5.86733e-08, 5.86733e-08]) *)
Definition f6 := Float2 (-1) (-25).
Definition f7 := Float2 (1) (-25).
Definition i4 := makepairF f6 f7.
Notation p6 := (BND r18 i4). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [-2.98023e-08, 2.98023e-08]) *)
Definition f8 := Float2 (1) (-24).
Definition f9 := Float2 (1) (0).
Definition i5 := makepairF f8 f9.
Notation p7 := (ABS r5 i5). (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [5.96046e-08, 1]) *)
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
Notation p9 := (ABS r6 i6). (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6), [0.5, 1]) *)
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
Notation p13 := (BND r9 i8). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6), [1.77636e-15, 0.5]) *)
Notation p14 := (BND r10 i8). (* BND(float<24,-149,ne>(x * x) / 6, [1.77636e-15, 0.5]) *)
Definition f12 := Float2 (1) (-46).
Definition i9 := makepairF f12 f2.
Notation p15 := (BND r11 i9). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *)
Notation p16 := (BND r12 i9). (* BND(x * x, [1.42109e-14, 0.75]) *)
Lemma t3 : p8 -> p16.
 intros h0.
 refine (square _x i1 i9 h0 _) ; finalize.
Qed.
Lemma l18 : s1 -> p16 (* BND(x * x, [1.42109e-14, 0.75]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t3. exact h1.
Qed.
Lemma t4 : p16 -> p15.
 intros h0.
 refine (float_round_ne _ _ r12 i9 i9 h0 _) ; finalize.
Qed.
Lemma l17 : s1 -> p15 (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *).
 intros h0.
 assert (h1 := l18 h0).
 apply t4. exact h1.
Qed.
Definition f13 := Float2 (3) (1).
Definition f14 := Float2 (1) (3).
Definition i10 := makepairF f13 f14.
Notation p17 := (BND r13 i10). (* BND(6, [6, 8]) *)
Lemma t5 : p17.
 refine (constant1 _ i10 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(6, [6, 8]) *).
 intros h0.
 apply t5.
Qed.
Definition i11 := makepairF f12 f9.
Notation p18 := (BND r11 i11). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 1]) *)
Definition f15 := Float2 (1) (1).
Definition i12 := makepairF f15 f14.
Notation p19 := (BND r13 i12). (* BND(6, [2, 8]) *)
Lemma t6 : p18 -> p19 -> p14.
 intros h0 h1.
 refine (div_pp r11 r13 i11 i12 i8 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<24,-149,ne>(x * x) / 6, [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t6. refine (subset r11 i9 i11 h1 _) ; finalize. refine (subset r13 i10 i12 h2 _) ; finalize.
Qed.
Lemma t7 : p14 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t7. exact h1.
Qed.
Lemma t8 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t8. exact h1. exact h2.
Qed.
Lemma t9 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t9. exact h1.
Qed.
Lemma t10 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t10. exact h1.
Qed.
Definition i13 := makepairF f1 f9.
Notation p20 := (ABS _x i13). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t11 : p20 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i13 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t11. refine (abs_subset _x i1 i13 h1 _) ; finalize. exact h2.
Qed.
Lemma t12 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t12. exact h1.
Qed.
Definition f16 := Float2 (-558446353793941505) (-84).
Definition f17 := Float2 (558446353793941505) (-84).
Definition i14 := makepairF f16 f17.
Notation p21 := (BND r19 i14). (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - Mts, [-2.8871e-08, 2.8871e-08]) *)
Notation r21 := ((r6 - r15)%R).
Notation r20 := ((_x * r21)%R).
Notation p22 := (BND r20 i14). (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - (1 - x * x / 6)), [-2.8871e-08, 2.8871e-08]) *)
Definition f18 := Float2 (-372297569195961003) (-83).
Definition f19 := Float2 (372297569195961003) (-83).
Definition i15 := makepairF f18 f19.
Notation p23 := (BND r21 i15). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - (1 - x * x / 6), [-3.84947e-08, 3.84947e-08]) *)
Notation r23 := ((r6 - r7)%R).
Notation r24 := ((r7 - r15)%R).
Notation r22 := ((r23 + r24)%R).
Notation p24 := (BND r22 i15). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - (1 - x * x / 6)), [-3.84947e-08, 3.84947e-08]) *)
Notation p25 := (BND r23 i4). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [-2.98023e-08, 2.98023e-08]) *)
Notation p26 := (ABS r7 i6). (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6), [0.5, 1]) *)
Lemma t13 : p11 -> p26.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l25 : s1 -> p26 (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t13. exact h1.
Qed.
Lemma t14 : p26 -> p25.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p25 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t14. exact h1.
Qed.
Definition f20 := Float2 (-84067193044249259) (-83).
Definition f21 := Float2 (84067193044249259) (-83).
Definition i16 := makepairF f20 f21.
Notation p27 := (BND r24 i16). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - (1 - x * x / 6), [-8.69234e-09, 8.69234e-09]) *)
Notation r26 := ((r9 - r16)%R).
Notation r25 := ((- r26)%R).
Notation p28 := (BND r25 i16). (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - x * x / 6), [-8.69234e-09, 8.69234e-09]) *)
Notation p29 := (BND r26 i16). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - x * x / 6, [-8.69234e-09, 8.69234e-09]) *)
Notation r28 := ((r9 - r10)%R).
Notation r29 := ((r10 - r16)%R).
Notation r27 := ((r28 + r29)%R).
Notation p30 := (BND r27 i16). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - float<24,-149,ne>(x * x) / 6 + (float<24,-149,ne>(x * x) / 6 - x * x / 6), [-8.69234e-09, 8.69234e-09]) *)
Definition f22 := Float2 (-1) (-28).
Definition f23 := Float2 (1) (-28).
Definition i17 := makepairF f22 f23.
Notation p31 := (BND r28 i17). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - float<24,-149,ne>(x * x) / 6, [-3.72529e-09, 3.72529e-09]) *)
Definition f24 := Float2 (1) (-3).
Definition i18 := makepairF f11 f24.
Notation p32 := (ABS r10 i18). (* ABS(float<24,-149,ne>(x * x) / 6, [1.77636e-15, 0.125]) *)
Notation p33 := (ABS r11 i9). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t15 : p15 -> p33.
 intros h0.
 refine (abs_of_bnd_p r11 i9 i9 h0 _) ; finalize.
Qed.
Lemma l32 : s1 -> p33 (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t15. exact h1.
Qed.
Notation p34 := (ABS r13 i10). (* ABS(6, [6, 8]) *)
Lemma t16 : p17 -> p34.
 intros h0.
 refine (abs_of_bnd_p r13 i10 i10 h0 _) ; finalize.
Qed.
Lemma l33 : s1 -> p34 (* ABS(6, [6, 8]) *).
 intros h0.
 assert (h1 := l19 h0).
 apply t16. exact h1.
Qed.
Lemma t17 : p33 -> p34 -> p32.
 intros h0 h1.
 refine (div_aa r11 r13 i9 i10 i18 h0 h1 _) ; finalize.
Qed.
Lemma l31 : s1 -> p32 (* ABS(float<24,-149,ne>(x * x) / 6, [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l32 h0).
 assert (h2 := l33 h0).
 apply t17. exact h1. exact h2.
Qed.
Lemma t18 : p32 -> p31.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i18 i17 h0 _) ; finalize.
Qed.
Lemma l30 : s1 -> p31 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - float<24,-149,ne>(x * x) / 6, [-3.72529e-09, 3.72529e-09]) *).
 intros h0.
 assert (h1 := l31 h0).
 apply t18. exact h1.
Qed.
Definition f25 := Float2 (-48038396025285291) (-83).
Definition f26 := Float2 (48038396025285291) (-83).
Definition i19 := makepairF f25 f26.
Notation p35 := (BND r29 i19). (* BND(float<24,-149,ne>(x * x) / 6 - x * x / 6, [-4.96705e-09, 4.96705e-09]) *)
Notation p36 := (NZR r13). (* NZR(6) *)
Definition i20 := makepairF f9 f14.
Notation p37 := (ABS r13 i20). (* ABS(6, [1, 8]) *)
Lemma t19 : p37 -> p36.
 intros h0.
 refine (nzr_of_abs r13 i20 h0 _) ; finalize.
Qed.
Lemma l35 : s1 -> p36 (* NZR(6) *).
 intros h0.
 assert (h1 := l33 h0).
 apply t19. refine (abs_subset r13 i10 i20 h1 _) ; finalize.
Qed.
Notation r31 := ((r11 - r12)%R).
Notation r30 := ((r31 / r13)%R).
Notation p38 := (BND r30 i19). (* BND((float<24,-149,ne>(x * x) - x * x) / 6, [-4.96705e-09, 4.96705e-09]) *)
Notation p39 := (BND r31 i4). (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *)
Notation p40 := (ABS r12 i11). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t20 : p20 -> p20 -> p40.
 intros h0 h1.
 refine (mul_aa _x _x i13 i13 i11 h0 h1 _) ; finalize.
Qed.
Lemma l38 : s1 -> p40 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t20. refine (abs_subset _x i1 i13 h1 _) ; finalize. refine (abs_subset _x i1 i13 h1 _) ; finalize.
Qed.
Lemma t21 : p40 -> p39.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i11 i4 h0 _) ; finalize.
Qed.
Lemma l37 : s1 -> p39 (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l38 h0).
 apply t21. exact h1.
Qed.
Lemma t22 : p39 -> p17 -> p38.
 intros h0 h1.
 refine (div_op r31 r13 i4 i10 i19 h0 h1 _) ; finalize.
Qed.
Lemma l36 : s1 -> p38 (* BND((float<24,-149,ne>(x * x) - x * x) / 6, [-4.96705e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l37 h0).
 assert (h2 := l19 h0).
 apply t22. exact h1. exact h2.
Qed.
Lemma t23 : p36 -> p38 -> p35.
 intros h0 h1.
 refine (div_firs _ r13 _ i19 h0 h1) ; finalize.
Qed.
Lemma l34 : s1 -> p35 (* BND(float<24,-149,ne>(x * x) / 6 - x * x / 6, [-4.96705e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l35 h0).
 assert (h2 := l36 h0).
 apply t23. exact h1. exact h2.
Qed.
Lemma t24 : p31 -> p35 -> p30.
 intros h0 h1.
 refine (add r28 r29 i17 i19 i16 h0 h1 _) ; finalize.
Qed.
Lemma l29 : s1 -> p30 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - float<24,-149,ne>(x * x) / 6 + (float<24,-149,ne>(x * x) / 6 - x * x / 6), [-8.69234e-09, 8.69234e-09]) *).
 intros h0.
 assert (h1 := l30 h0).
 assert (h2 := l34 h0).
 apply t24. exact h1. exact h2.
Qed.
Lemma t25 : p30 -> p29.
 intros h0.
 refine (sub_xals _ _ _ i16 h0) ; finalize.
Qed.
Lemma l28 : s1 -> p29 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - x * x / 6, [-8.69234e-09, 8.69234e-09]) *).
 intros h0.
 assert (h1 := l29 h0).
 apply t25. exact h1.
Qed.
Lemma t26 : p29 -> p28.
 intros h0.
 refine (neg r26 i16 i16 h0 _) ; finalize.
Qed.
Lemma l27 : s1 -> p28 (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - x * x / 6), [-8.69234e-09, 8.69234e-09]) *).
 intros h0.
 assert (h1 := l28 h0).
 apply t26. exact h1.
Qed.
Lemma t27 : p28 -> p27.
 intros h0.
 refine (sub_fils _ _ _ i16 h0) ; finalize.
Qed.
Lemma l26 : s1 -> p27 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - (1 - x * x / 6), [-8.69234e-09, 8.69234e-09]) *).
 intros h0.
 assert (h1 := l27 h0).
 apply t27. exact h1.
Qed.
Lemma t28 : p25 -> p27 -> p24.
 intros h0 h1.
 refine (add r23 r24 i4 i16 i15 h0 h1 _) ; finalize.
Qed.
Lemma l23 : s1 -> p24 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6) - (1 - x * x / 6)), [-3.84947e-08, 3.84947e-08]) *).
 intros h0.
 assert (h1 := l24 h0).
 assert (h2 := l26 h0).
 apply t28. exact h1. exact h2.
Qed.
Lemma t29 : p24 -> p23.
 intros h0.
 refine (sub_xals _ _ _ i15 h0) ; finalize.
Qed.
Lemma l22 : s1 -> p23 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - (1 - x * x / 6), [-3.84947e-08, 3.84947e-08]) *).
 intros h0.
 assert (h1 := l23 h0).
 apply t29. exact h1.
Qed.
Lemma t30 : p1 -> p23 -> p22.
 intros h0 h1.
 refine (mul_po _x r21 i1 i15 i14 h0 h1 _) ; finalize.
Qed.
Lemma l21 : s1 -> p22 (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - (1 - x * x / 6)), [-2.8871e-08, 2.8871e-08]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l22 h0).
 apply t30. exact h1. exact h2.
Qed.
Lemma t31 : p22 -> p21.
 intros h0.
 refine (mul_fils _ _ _ i14 h0) ; finalize.
Qed.
Lemma l20 : s1 -> p21 (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - Mts, [-2.8871e-08, 2.8871e-08]) *).
 intros h0.
 assert (h1 := l21 h0).
 apply t31. exact h1.
Qed.
Lemma t32 : p6 -> p21 -> p5.
 intros h0 h1.
 refine (add r18 r19 i4 i14 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) / 6)) - Mts), [-5.86733e-08, 5.86733e-08]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l20 h0).
 apply t32. exact h1. exact h2.
Qed.
Lemma t33 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-5.86733e-08, 5.86733e-08]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t33. exact h1.
Qed.
Lemma t34 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 5.86733e-08]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t34. exact h1.
Qed.
Lemma t35 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 5.86733e-08]) *).
 intros h0.
 assert (h1 := l4 h0).
 apply t35. exact h1.
Qed.
Lemma l1 : s1 -> False.
 intros h0.
 assert (h1 := l2 h0).
 assert (h2 := l3 h0).
 refine (simplify (Tatom false (Abnd 0%nat i2)) Tfalse (Abnd 0%nat i2) (List.cons r2 List.nil) h2 h1 _) ; finalize.
Qed.
End Generated_by_Gappa.
