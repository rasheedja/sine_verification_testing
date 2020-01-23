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
Notation r20 := (Float1 (120)).
Notation r19 := ((r11 / r20)%R).
Notation r18 := ((rounding_float rndNE (24)%positive (-149)%Z) r19).
Notation r14 := ((r15 - r18)%R).
Notation r13 := ((rounding_float rndNE (24)%positive (-149)%Z) r14).
Notation r10 := ((r11 * r13)%R).
Notation r9 := ((rounding_float rndNE (24)%positive (-149)%Z) r10).
Notation r7 := ((r8 - r9)%R).
Notation r6 := ((rounding_float rndNE (24)%positive (-149)%Z) r7).
Notation r5 := ((_x * r6)%R).
Notation _ts := ((rounding_float rndNE (24)%positive (-149)%Z) r5).
Notation r25 := ((r12 / r20)%R).
Notation r24 := ((r16 - r25)%R).
Notation r23 := ((r12 * r24)%R).
Notation r22 := ((r8 - r23)%R).
Notation _Mts := ((_x * r22)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (620082336819747201) (-83).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 6.4115e-08]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 6.4115e-08]) *)
Definition f5 := Float2 (-620082336819747201) (-83).
Definition f6 := Float2 (17) (-28).
Definition i3 := makepairF f5 f6.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-6.4115e-08, 6.33299e-08]) *)
Notation r27 := ((_ts - r5)%R).
Notation r28 := ((r5 - _Mts)%R).
Notation r26 := ((r27 + r28)%R).
Notation p5 := (BND r26 i3). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts), [-6.4115e-08, 6.33299e-08]) *)
Definition f7 := Float2 (-1) (-25).
Definition f8 := Float2 (1) (-25).
Definition i4 := makepairF f7 f8.
Notation p6 := (BND r27 i4). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *)
Definition f9 := Float2 (1) (-24).
Definition f10 := Float2 (1) (0).
Definition i5 := makepairF f9 f10.
Notation p7 := (ABS r5 i5). (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [5.96046e-08, 1]) *)
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
Notation p9 := (ABS r6 i6). (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *)
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
Notation p13 := (BND r9 i8). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *)
Notation p14 := (BND r10 i8). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *)
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
Notation p17 := (BND r13 i10). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *)
Notation p18 := (BND r14 i10). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.1875]) *)
Definition f17 := Float2 (11184811) (-26).
Definition i11 := makepairF f17 f17.
Notation p19 := (BND r15 i11). (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f18 := Float2 (384307168202282325) (-61).
Definition f19 := Float2 (48038396025285291) (-58).
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
Notation p23 := (BND r18 i15). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i15). (* BND(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *)
Definition f24 := Float2 (15) (3).
Definition i16 := makepairF f24 f24.
Notation p25 := (BND r20 i16). (* BND(120, [120, 120]) *)
Lemma t8 : p25.
 refine (constant1 _ i16 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(120, [120, 120]) *).
 intros h0.
 apply t8.
Qed.
Definition i17 := makepairF f13 f10.
Notation p26 := (BND r11 i17). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 1]) *)
Definition f25 := Float2 (1) (5).
Definition f26 := Float2 (1) (7).
Definition i18 := makepairF f25 f26.
Notation p27 := (BND r20 i18). (* BND(120, [32, 128]) *)
Lemma t9 : p26 -> p27 -> p24.
 intros h0 h1.
 refine (div_pp r11 r20 i17 i18 i15 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t9. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i18 h2 _) ; finalize.
Qed.
Lemma t10 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i15 i15 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t10. exact h1.
Qed.
Definition f27 := Float2 (5) (-5).
Definition i19 := makepairF f27 f16.
Notation p28 := (BND r15 i19). (* BND(float<24,-149,ne>(1 / 6), [0.15625, 0.1875]) *)
Lemma t11 : p28 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i19 i15 i10 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t11. refine (subset r15 i11 i19 h1 _) ; finalize. exact h2.
Qed.
Lemma t12 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i10 i10 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t12. exact h1.
Qed.
Definition i20 := makepairF f15 f11.
Notation p29 := (BND r13 i20). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.5]) *)
Lemma t13 : p26 -> p29 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i17 i20 i8 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t13. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r13 i10 i20 h2 _) ; finalize.
Qed.
Lemma t14 : p14 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t14. exact h1.
Qed.
Lemma t15 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t15. exact h1. exact h2.
Qed.
Lemma t16 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t16. exact h1.
Qed.
Lemma t17 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t17. exact h1.
Qed.
Definition i21 := makepairF f1 f10.
Notation p30 := (ABS _x i21). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t18 : p30 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i21 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t18. refine (abs_subset _x i1 i21 h1 _) ; finalize. exact h2.
Qed.
Lemma t19 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t19. exact h1.
Qed.
Definition f28 := Float2 (-331851960668035457) (-83).
Definition f29 := Float2 (9) (-28).
Definition i22 := makepairF f28 f29.
Notation p31 := (BND r28 i22). (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts, [-3.43127e-08, 3.35276e-08]) *)
Notation r30 := ((r6 - r22)%R).
Notation r29 := ((_x * r30)%R).
Notation p32 := (BND r29 i22). (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-3.43127e-08, 3.35276e-08]) *)
Definition f30 := Float2 (-221234640445356971) (-82).
Definition f31 := Float2 (3) (-26).
Definition i23 := makepairF f30 f31.
Notation p33 := (BND r30 i23). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-4.57503e-08, 4.47035e-08]) *)
Notation r32 := ((r6 - r7)%R).
Notation r33 := ((r7 - r22)%R).
Notation r31 := ((r32 + r33)%R).
Notation p34 := (BND r31 i23). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-4.57503e-08, 4.47035e-08]) *)
Notation p35 := (BND r32 i4). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *)
Notation p36 := (ABS r7 i6). (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *)
Lemma t20 : p11 -> p36.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l32 : s1 -> p36 (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t20. exact h1.
Qed.
Lemma t21 : p36 -> p35.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p35 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t21. exact h1.
Qed.
Definition f32 := Float2 (-77119452369501099) (-82).
Definition f33 := Float2 (1) (-26).
Definition i24 := makepairF f32 f33.
Notation p37 := (BND r33 i24). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *)
Notation r35 := ((r9 - r23)%R).
Notation r34 := ((- r35)%R).
Notation p38 := (BND r34 i24). (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *)
Definition f34 := Float2 (-1) (-26).
Definition f35 := Float2 (77119452369501099) (-82).
Definition i25 := makepairF f34 f35.
Notation p39 := (BND r35 i25). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-1.49012e-08, 1.59479e-08]) *)
Notation r37 := ((r9 - r10)%R).
Notation r38 := ((r10 - r23)%R).
Notation r36 := ((r37 + r38)%R).
Notation p40 := (BND r36 i25). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-1.49012e-08, 1.59479e-08]) *)
Definition f36 := Float2 (-1) (-27).
Definition f37 := Float2 (1) (-28).
Definition i26 := makepairF f36 f37.
Notation p41 := (BND r37 i26). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 3.72529e-09]) *)
Definition i27 := makepairF f12 f15.
Notation p42 := (ABS r10 i27). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *)
Definition f38 := Float2 (5) (-3).
Definition i28 := makepairF f13 f38.
Notation p43 := (ABS r11 i28). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Notation p44 := (BND r11 i28). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Lemma t22 : p44 -> p43.
 intros h0.
 refine (abs_of_bnd_p r11 i28 i28 h0 _) ; finalize.
Qed.
Lemma l39 : s1 -> p43 (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t22. refine (subset r11 i9 i28 h1 _) ; finalize.
Qed.
Notation p45 := (ABS r13 i10). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *)
Lemma t23 : p17 -> p45.
 intros h0.
 refine (abs_of_bnd_p r13 i10 i10 h0 _) ; finalize.
Qed.
Lemma l40 : s1 -> p45 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l19 h0).
 apply t23. exact h1.
Qed.
Lemma t24 : p43 -> p45 -> p42.
 intros h0 h1.
 refine (mul_aa r11 r13 i28 i10 i27 h0 h1 _) ; finalize.
Qed.
Lemma l38 : s1 -> p42 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l40 h0).
 apply t24. exact h1. exact h2.
Qed.
Lemma t25 : p42 -> p41.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i27 i26 h0 _) ; finalize.
Qed.
Lemma l37 : s1 -> p41 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 3.72529e-09]) *).
 intros h0.
 assert (h1 := l38 h0).
 apply t25. exact h1.
Qed.
Definition f39 := Float2 (59105053860019115) (-82).
Definition i29 := makepairF f36 f39.
Notation p46 := (BND r38 i29). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *)
Notation r41 := ((r13 - r24)%R).
Notation r40 := ((r11 * r41)%R).
Notation r43 := ((r11 - r12)%R).
Notation r42 := ((r43 * r24)%R).
Notation r39 := ((r40 + r42)%R).
Notation p47 := (BND r39 i29). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *)
Definition f40 := Float2 (-1) (-29).
Definition f41 := Float2 (70171711694752973) (-83).
Definition i30 := makepairF f40 f41.
Notation p48 := (BND r40 i30). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.86265e-09, 7.25558e-09]) *)
Definition f42 := Float2 (-7) (-31).
Definition f43 := Float2 (498998838718243363) (-85).
Definition i31 := makepairF f42 f43.
Notation p49 := (BND r41 i31). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-3.25963e-09, 1.28988e-08]) *)
Notation r45 := ((r13 - r14)%R).
Notation r46 := ((r14 - r24)%R).
Notation r44 := ((r45 + r46)%R).
Notation p50 := (BND r44 i31). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-3.25963e-09, 1.28988e-08]) *)
Definition f44 := Float2 (1) (-27).
Definition i32 := makepairF f36 f44.
Notation p51 := (BND r45 i32). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 7.45058e-09]) *)
Definition f45 := Float2 (1) (-2).
Definition i33 := makepairF f15 f45.
Notation p52 := (ABS r14 i33). (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *)
Notation p53 := (BND r14 i33). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *)
Lemma t26 : p53 -> p52.
 intros h0.
 refine (abs_of_bnd_p r14 i33 i33 h0 _) ; finalize.
Qed.
Lemma l47 : s1 -> p52 (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t26. refine (subset r14 i10 i33 h1 _) ; finalize.
Qed.
Lemma t27 : p52 -> p51.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i33 i32 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p51 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 7.45058e-09]) *).
 intros h0.
 assert (h1 := l47 h0).
 apply t27. exact h1.
Qed.
Definition f46 := Float2 (9) (-31).
Definition f47 := Float2 (210768462566531619) (-85).
Definition i34 := makepairF f46 f47.
Notation p54 := (BND r46 i34). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [4.19095e-09, 5.44824e-09]) *)
Notation r48 := ((r15 - r16)%R).
Notation r49 := ((r18 - r25)%R).
Notation r47 := ((r48 - r49)%R).
Notation p55 := (BND r47 i34). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120), [4.19095e-09, 5.44824e-09]) *)
Definition f48 := Float2 (21) (-32).
Definition f49 := Float2 (11453246123) (-61).
Definition i35 := makepairF f48 f49.
Notation p56 := (BND r48 i35). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *)
Definition f50 := Float2 (715827883) (-32).
Definition i36 := makepairF f18 f50.
Notation p57 := (BND r16 i36). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t28 : p19 -> p57 -> p56.
 intros h0 h1.
 refine (sub r15 r16 i11 i36 i35 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p56 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t28. exact h1. refine (subset r16 i12 i36 h2 _) ; finalize.
Qed.
Definition f51 := Float2 (-18614878459798051) (-85).
Definition f52 := Float2 (3) (-32).
Definition i37 := makepairF f51 f52.
Notation p58 := (BND r49 i37). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120, [-4.81183e-10, 6.98492e-10]) *)
Notation r51 := ((r18 - r19)%R).
Notation r52 := ((r19 - r25)%R).
Notation r50 := ((r51 + r52)%R).
Notation p59 := (BND r50 i37). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120 + (float<24,-149,ne>(x * x) / 120 - x * x / 120), [-4.81183e-10, 6.98492e-10]) *)
Definition f53 := Float2 (-1) (-32).
Definition f54 := Float2 (1) (-32).
Definition i38 := makepairF f53 f54.
Notation p60 := (BND r51 i38). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120, [-2.32831e-10, 2.32831e-10]) *)
Definition f55 := Float2 (1) (-7).
Definition i39 := makepairF f22 f55.
Notation p61 := (ABS r19 i39). (* ABS(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *)
Definition f56 := Float2 (3) (5).
Definition i40 := makepairF f56 f26.
Notation p62 := (ABS r20 i40). (* ABS(120, [96, 128]) *)
Notation p63 := (BND r20 i40). (* BND(120, [96, 128]) *)
Lemma t29 : p63 -> p62.
 intros h0.
 refine (abs_of_bnd_p r20 i40 i40 h0 _) ; finalize.
Qed.
Lemma l55 : s1 -> p62 (* ABS(120, [96, 128]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t29. refine (subset r20 i16 i40 h1 _) ; finalize.
Qed.
Definition i41 := makepairF f13 f2.
Notation p64 := (ABS r11 i41). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t30 : p64 -> p62 -> p61.
 intros h0 h1.
 refine (div_aa r11 r20 i41 i40 i39 h0 h1 _) ; finalize.
Qed.
Lemma l54 : s1 -> p61 (* ABS(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l55 h0).
 apply t30. refine (abs_subset r11 i28 i41 h1 _) ; finalize. exact h2.
Qed.
Lemma t31 : p61 -> p60.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i39 i38 h0 _) ; finalize.
Qed.
Lemma l53 : s1 -> p60 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120, [-2.32831e-10, 2.32831e-10]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t31. exact h1.
Qed.
Definition f57 := Float2 (-9607679205057059) (-85).
Definition f58 := Float2 (1) (-31).
Definition i42 := makepairF f57 f58.
Notation p65 := (BND r52 i42). (* BND(float<24,-149,ne>(x * x) / 120 - x * x / 120, [-2.48353e-10, 4.65661e-10]) *)
Notation p66 := (NZR r20). (* NZR(120) *)
Definition i43 := makepairF f10 f26.
Notation p67 := (ABS r20 i43). (* ABS(120, [1, 128]) *)
Lemma t32 : p67 -> p66.
 intros h0.
 refine (nzr_of_abs r20 i43 h0 _) ; finalize.
Qed.
Lemma l57 : s1 -> p66 (* NZR(120) *).
 intros h0.
 assert (h1 := l55 h0).
 apply t32. refine (abs_subset r20 i40 i43 h1 _) ; finalize.
Qed.
Notation r53 := ((r43 / r20)%R).
Notation p68 := (BND r53 i42). (* BND((float<24,-149,ne>(x * x) - x * x) / 120, [-2.48353e-10, 4.65661e-10]) *)
Notation p69 := (BND r43 i4). (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *)
Notation p70 := (ABS r12 i17). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t33 : p30 -> p30 -> p70.
 intros h0 h1.
 refine (mul_aa _x _x i21 i21 i17 h0 h1 _) ; finalize.
Qed.
Lemma l60 : s1 -> p70 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t33. refine (abs_subset _x i1 i21 h1 _) ; finalize. refine (abs_subset _x i1 i21 h1 _) ; finalize.
Qed.
Lemma t34 : p70 -> p69.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i17 i4 h0 _) ; finalize.
Qed.
Lemma l59 : s1 -> p69 (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l60 h0).
 apply t34. exact h1.
Qed.
Definition i44 := makepairF f24 f26.
Notation p71 := (BND r20 i44). (* BND(120, [120, 128]) *)
Lemma t35 : p69 -> p71 -> p68.
 intros h0 h1.
 refine (div_op r43 r20 i4 i44 i42 h0 h1 _) ; finalize.
Qed.
Lemma l58 : s1 -> p68 (* BND((float<24,-149,ne>(x * x) - x * x) / 120, [-2.48353e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l26 h0).
 apply t35. exact h1. refine (subset r20 i16 i44 h2 _) ; finalize.
Qed.
Lemma t36 : p66 -> p68 -> p65.
 intros h0 h1.
 refine (div_firs _ r20 _ i42 h0 h1) ; finalize.
Qed.
Lemma l56 : s1 -> p65 (* BND(float<24,-149,ne>(x * x) / 120 - x * x / 120, [-2.48353e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l57 h0).
 assert (h2 := l58 h0).
 apply t36. exact h1. exact h2.
Qed.
Lemma t37 : p60 -> p65 -> p59.
 intros h0 h1.
 refine (add r51 r52 i38 i42 i37 h0 h1 _) ; finalize.
Qed.
Lemma l52 : s1 -> p59 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120 + (float<24,-149,ne>(x * x) / 120 - x * x / 120), [-4.81183e-10, 6.98492e-10]) *).
 intros h0.
 assert (h1 := l53 h0).
 assert (h2 := l56 h0).
 apply t37. exact h1. exact h2.
Qed.
Lemma t38 : p59 -> p58.
 intros h0.
 refine (sub_xals _ _ _ i37 h0) ; finalize.
Qed.
Lemma l51 : s1 -> p58 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120, [-4.81183e-10, 6.98492e-10]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t38. exact h1.
Qed.
Lemma t39 : p56 -> p58 -> p55.
 intros h0 h1.
 refine (sub r48 r49 i35 i37 i34 h0 h1 _) ; finalize.
Qed.
Lemma l49 : s1 -> p55 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120), [4.19095e-09, 5.44824e-09]) *).
 intros h0.
 assert (h1 := l50 h0).
 assert (h2 := l51 h0).
 apply t39. exact h1. exact h2.
Qed.
Lemma t40 : p55 -> p54.
 intros h0.
 refine (sub_mibs _ _ _ _ i34 h0) ; finalize.
Qed.
Lemma l48 : s1 -> p54 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [4.19095e-09, 5.44824e-09]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t40. exact h1.
Qed.
Lemma t41 : p51 -> p54 -> p50.
 intros h0 h1.
 refine (add r45 r46 i32 i34 i31 h0 h1 _) ; finalize.
Qed.
Lemma l45 : s1 -> p50 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-3.25963e-09, 1.28988e-08]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l48 h0).
 apply t41. exact h1. exact h2.
Qed.
Lemma t42 : p50 -> p49.
 intros h0.
 refine (sub_xals _ _ _ i31 h0) ; finalize.
Qed.
Lemma l44 : s1 -> p49 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-3.25963e-09, 1.28988e-08]) *).
 intros h0.
 assert (h1 := l45 h0).
 apply t42. exact h1.
Qed.
Lemma t43 : p15 -> p49 -> p48.
 intros h0 h1.
 refine (mul_po r11 r41 i9 i31 i30 h0 h1 _) ; finalize.
Qed.
Lemma l43 : s1 -> p48 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.86265e-09, 7.25558e-09]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l44 h0).
 apply t43. exact h1. exact h2.
Qed.
Definition f59 := Float2 (-3) (-29).
Definition f60 := Float2 (48038396025285257) (-83).
Definition i45 := makepairF f59 f60.
Notation p72 := (BND r42 i45). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-5.58794e-09, 4.96705e-09]) *)
Definition f61 := Float2 (48038396025285257) (-58).
Definition i46 := makepairF f15 f61.
Notation p73 := (BND r24 i46). (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *)
Definition f62 := Float2 (17) (-57).
Definition i47 := makepairF f62 f23.
Notation p74 := (BND r25 i47). (* BND(x * x / 120, [1.17961e-16, 0.03125]) *)
Notation p75 := (BND r12 i17). (* BND(x * x, [1.42109e-14, 1]) *)
Definition i48 := makepairF f25 f24.
Notation p76 := (BND r20 i48). (* BND(120, [32, 120]) *)
Lemma t44 : p75 -> p76 -> p74.
 intros h0 h1.
 refine (div_pp r12 r20 i17 i48 i47 h0 h1 _) ; finalize.
Qed.
Lemma l63 : s1 -> p74 (* BND(x * x / 120, [1.17961e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l26 h0).
 apply t44. refine (subset r12 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i48 h2 _) ; finalize.
Qed.
Definition i49 := makepairF f27 f19.
Notation p77 := (BND r16 i49). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t45 : p77 -> p74 -> p73.
 intros h0 h1.
 refine (sub r16 r25 i49 i47 i46 h0 h1 _) ; finalize.
Qed.
Lemma l62 : s1 -> p73 (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l63 h0).
 apply t45. refine (subset r16 i12 i49 h1 _) ; finalize. exact h2.
Qed.
Lemma t46 : p69 -> p73 -> p72.
 intros h0 h1.
 refine (mul_op r43 r24 i4 i46 i45 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p72 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-5.58794e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l62 h0).
 apply t46. exact h1. exact h2.
Qed.
Lemma t47 : p48 -> p72 -> p47.
 intros h0 h1.
 refine (add r40 r42 i30 i45 i29 h0 h1 _) ; finalize.
Qed.
Lemma l42 : s1 -> p47 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *).
 intros h0.
 assert (h1 := l43 h0).
 assert (h2 := l61 h0).
 apply t47. exact h1. exact h2.
Qed.
Lemma t48 : p47 -> p46.
 intros h0.
 refine (mul_mars _ _ _ _ i29 h0) ; finalize.
Qed.
Lemma l41 : s1 -> p46 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t48. exact h1.
Qed.
Lemma t49 : p41 -> p46 -> p40.
 intros h0 h1.
 refine (add r37 r38 i26 i29 i25 h0 h1 _) ; finalize.
Qed.
Lemma l36 : s1 -> p40 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-1.49012e-08, 1.59479e-08]) *).
 intros h0.
 assert (h1 := l37 h0).
 assert (h2 := l41 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p40 -> p39.
 intros h0.
 refine (sub_xals _ _ _ i25 h0) ; finalize.
Qed.
Lemma l35 : s1 -> p39 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-1.49012e-08, 1.59479e-08]) *).
 intros h0.
 assert (h1 := l36 h0).
 apply t50. exact h1.
Qed.
Lemma t51 : p39 -> p38.
 intros h0.
 refine (neg r35 i25 i24 h0 _) ; finalize.
Qed.
Lemma l34 : s1 -> p38 (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l35 h0).
 apply t51. exact h1.
Qed.
Lemma t52 : p38 -> p37.
 intros h0.
 refine (sub_fils _ _ _ i24 h0) ; finalize.
Qed.
Lemma l33 : s1 -> p37 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t52. exact h1.
Qed.
Lemma t53 : p35 -> p37 -> p34.
 intros h0 h1.
 refine (add r32 r33 i4 i24 i23 h0 h1 _) ; finalize.
Qed.
Lemma l30 : s1 -> p34 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-4.57503e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l31 h0).
 assert (h2 := l33 h0).
 apply t53. exact h1. exact h2.
Qed.
Lemma t54 : p34 -> p33.
 intros h0.
 refine (sub_xals _ _ _ i23 h0) ; finalize.
Qed.
Lemma l29 : s1 -> p33 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-4.57503e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l30 h0).
 apply t54. exact h1.
Qed.
Lemma t55 : p1 -> p33 -> p32.
 intros h0 h1.
 refine (mul_po _x r30 i1 i23 i22 h0 h1 _) ; finalize.
Qed.
Lemma l28 : s1 -> p32 (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-3.43127e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l29 h0).
 apply t55. exact h1. exact h2.
Qed.
Lemma t56 : p32 -> p31.
 intros h0.
 refine (mul_fils _ _ _ i22 h0) ; finalize.
Qed.
Lemma l27 : s1 -> p31 (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts, [-3.43127e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l28 h0).
 apply t56. exact h1.
Qed.
Lemma t57 : p6 -> p31 -> p5.
 intros h0 h1.
 refine (add r27 r28 i4 i22 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts), [-6.4115e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l27 h0).
 apply t57. exact h1. exact h2.
Qed.
Lemma t58 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-6.4115e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t58. exact h1.
Qed.
Lemma t59 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 6.4115e-08]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t59. exact h1.
Qed.
Lemma t60 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 6.4115e-08]) *).
 intros h0.
 assert (h1 := l4 h0).
 apply t60. exact h1.
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
Notation r20 := (Float1 (120)).
Notation r19 := ((r11 / r20)%R).
Notation r18 := ((rounding_float rndNE (24)%positive (-149)%Z) r19).
Notation r14 := ((r15 - r18)%R).
Notation r13 := ((rounding_float rndNE (24)%positive (-149)%Z) r14).
Notation r10 := ((r11 * r13)%R).
Notation r9 := ((rounding_float rndNE (24)%positive (-149)%Z) r10).
Notation r7 := ((r8 - r9)%R).
Notation r6 := ((rounding_float rndNE (24)%positive (-149)%Z) r7).
Notation r5 := ((_x * r6)%R).
Notation _ts := ((rounding_float rndNE (24)%positive (-149)%Z) r5).
Notation r25 := ((r12 / r20)%R).
Notation r24 := ((r16 - r25)%R).
Notation r23 := ((r12 * r24)%R).
Notation r22 := ((r8 - r23)%R).
Notation _Mts := ((_x * r22)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (620082336819747201) (-83).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 6.4115e-08]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 6.4115e-08]) *)
Definition f5 := Float2 (-620082336819747201) (-83).
Definition f6 := Float2 (17) (-28).
Definition i3 := makepairF f5 f6.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-6.4115e-08, 6.33299e-08]) *)
Notation r27 := ((_ts - r5)%R).
Notation r28 := ((r5 - _Mts)%R).
Notation r26 := ((r27 + r28)%R).
Notation p5 := (BND r26 i3). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts), [-6.4115e-08, 6.33299e-08]) *)
Definition f7 := Float2 (-1) (-25).
Definition f8 := Float2 (1) (-25).
Definition i4 := makepairF f7 f8.
Notation p6 := (BND r27 i4). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *)
Definition f9 := Float2 (1) (-24).
Definition f10 := Float2 (1) (0).
Definition i5 := makepairF f9 f10.
Notation p7 := (ABS r5 i5). (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [5.96046e-08, 1]) *)
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
Notation p9 := (ABS r6 i6). (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *)
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
Notation p13 := (BND r9 i8). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *)
Notation p14 := (BND r10 i8). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *)
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
Notation p17 := (BND r13 i10). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *)
Notation p18 := (BND r14 i10). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.1875]) *)
Definition f17 := Float2 (11184811) (-26).
Definition i11 := makepairF f17 f17.
Notation p19 := (BND r15 i11). (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f18 := Float2 (384307168202282325) (-61).
Definition f19 := Float2 (48038396025285291) (-58).
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
Notation p23 := (BND r18 i15). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i15). (* BND(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *)
Definition f24 := Float2 (15) (3).
Definition i16 := makepairF f24 f24.
Notation p25 := (BND r20 i16). (* BND(120, [120, 120]) *)
Lemma t8 : p25.
 refine (constant1 _ i16 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(120, [120, 120]) *).
 intros h0.
 apply t8.
Qed.
Definition i17 := makepairF f13 f10.
Notation p26 := (BND r11 i17). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 1]) *)
Definition f25 := Float2 (1) (5).
Definition f26 := Float2 (1) (7).
Definition i18 := makepairF f25 f26.
Notation p27 := (BND r20 i18). (* BND(120, [32, 128]) *)
Lemma t9 : p26 -> p27 -> p24.
 intros h0 h1.
 refine (div_pp r11 r20 i17 i18 i15 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t9. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i18 h2 _) ; finalize.
Qed.
Lemma t10 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i15 i15 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t10. exact h1.
Qed.
Definition f27 := Float2 (5) (-5).
Definition i19 := makepairF f27 f16.
Notation p28 := (BND r15 i19). (* BND(float<24,-149,ne>(1 / 6), [0.15625, 0.1875]) *)
Lemma t11 : p28 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i19 i15 i10 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t11. refine (subset r15 i11 i19 h1 _) ; finalize. exact h2.
Qed.
Lemma t12 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i10 i10 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t12. exact h1.
Qed.
Definition i20 := makepairF f15 f11.
Notation p29 := (BND r13 i20). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.5]) *)
Lemma t13 : p26 -> p29 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i17 i20 i8 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t13. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r13 i10 i20 h2 _) ; finalize.
Qed.
Lemma t14 : p14 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t14. exact h1.
Qed.
Lemma t15 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t15. exact h1. exact h2.
Qed.
Lemma t16 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t16. exact h1.
Qed.
Lemma t17 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t17. exact h1.
Qed.
Definition i21 := makepairF f1 f10.
Notation p30 := (ABS _x i21). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t18 : p30 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i21 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t18. refine (abs_subset _x i1 i21 h1 _) ; finalize. exact h2.
Qed.
Lemma t19 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t19. exact h1.
Qed.
Definition f28 := Float2 (-331851960668035457) (-83).
Definition f29 := Float2 (9) (-28).
Definition i22 := makepairF f28 f29.
Notation p31 := (BND r28 i22). (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts, [-3.43127e-08, 3.35276e-08]) *)
Notation r30 := ((r6 - r22)%R).
Notation r29 := ((_x * r30)%R).
Notation p32 := (BND r29 i22). (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-3.43127e-08, 3.35276e-08]) *)
Definition f30 := Float2 (-221234640445356971) (-82).
Definition f31 := Float2 (3) (-26).
Definition i23 := makepairF f30 f31.
Notation p33 := (BND r30 i23). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-4.57503e-08, 4.47035e-08]) *)
Notation r32 := ((r6 - r7)%R).
Notation r33 := ((r7 - r22)%R).
Notation r31 := ((r32 + r33)%R).
Notation p34 := (BND r31 i23). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-4.57503e-08, 4.47035e-08]) *)
Notation p35 := (BND r32 i4). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *)
Notation p36 := (ABS r7 i6). (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *)
Lemma t20 : p11 -> p36.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l32 : s1 -> p36 (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t20. exact h1.
Qed.
Lemma t21 : p36 -> p35.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p35 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t21. exact h1.
Qed.
Definition f32 := Float2 (-77119452369501099) (-82).
Definition f33 := Float2 (1) (-26).
Definition i24 := makepairF f32 f33.
Notation p37 := (BND r33 i24). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *)
Notation r35 := ((r9 - r23)%R).
Notation r34 := ((- r35)%R).
Notation p38 := (BND r34 i24). (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *)
Definition f34 := Float2 (-1) (-26).
Definition f35 := Float2 (77119452369501099) (-82).
Definition i25 := makepairF f34 f35.
Notation p39 := (BND r35 i25). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-1.49012e-08, 1.59479e-08]) *)
Notation r37 := ((r9 - r10)%R).
Notation r38 := ((r10 - r23)%R).
Notation r36 := ((r37 + r38)%R).
Notation p40 := (BND r36 i25). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-1.49012e-08, 1.59479e-08]) *)
Definition f36 := Float2 (-1) (-27).
Definition f37 := Float2 (1) (-28).
Definition i26 := makepairF f36 f37.
Notation p41 := (BND r37 i26). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 3.72529e-09]) *)
Definition i27 := makepairF f12 f15.
Notation p42 := (ABS r10 i27). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *)
Definition f38 := Float2 (5) (-3).
Definition i28 := makepairF f13 f38.
Notation p43 := (ABS r11 i28). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Notation p44 := (BND r11 i28). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Lemma t22 : p44 -> p43.
 intros h0.
 refine (abs_of_bnd_p r11 i28 i28 h0 _) ; finalize.
Qed.
Lemma l39 : s1 -> p43 (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t22. refine (subset r11 i9 i28 h1 _) ; finalize.
Qed.
Notation p45 := (ABS r13 i10). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *)
Lemma t23 : p17 -> p45.
 intros h0.
 refine (abs_of_bnd_p r13 i10 i10 h0 _) ; finalize.
Qed.
Lemma l40 : s1 -> p45 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l19 h0).
 apply t23. exact h1.
Qed.
Lemma t24 : p43 -> p45 -> p42.
 intros h0 h1.
 refine (mul_aa r11 r13 i28 i10 i27 h0 h1 _) ; finalize.
Qed.
Lemma l38 : s1 -> p42 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l40 h0).
 apply t24. exact h1. exact h2.
Qed.
Lemma t25 : p42 -> p41.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i27 i26 h0 _) ; finalize.
Qed.
Lemma l37 : s1 -> p41 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 3.72529e-09]) *).
 intros h0.
 assert (h1 := l38 h0).
 apply t25. exact h1.
Qed.
Definition f39 := Float2 (59105053860019115) (-82).
Definition i29 := makepairF f36 f39.
Notation p46 := (BND r38 i29). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *)
Notation r41 := ((r13 - r24)%R).
Notation r40 := ((r11 * r41)%R).
Notation r43 := ((r11 - r12)%R).
Notation r42 := ((r43 * r24)%R).
Notation r39 := ((r40 + r42)%R).
Notation p47 := (BND r39 i29). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *)
Definition f40 := Float2 (-1) (-29).
Definition f41 := Float2 (70171711694752973) (-83).
Definition i30 := makepairF f40 f41.
Notation p48 := (BND r40 i30). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.86265e-09, 7.25558e-09]) *)
Definition f42 := Float2 (-7) (-31).
Definition f43 := Float2 (498998838718243363) (-85).
Definition i31 := makepairF f42 f43.
Notation p49 := (BND r41 i31). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-3.25963e-09, 1.28988e-08]) *)
Notation r45 := ((r13 - r14)%R).
Notation r46 := ((r14 - r24)%R).
Notation r44 := ((r45 + r46)%R).
Notation p50 := (BND r44 i31). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-3.25963e-09, 1.28988e-08]) *)
Definition f44 := Float2 (1) (-27).
Definition i32 := makepairF f36 f44.
Notation p51 := (BND r45 i32). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 7.45058e-09]) *)
Definition f45 := Float2 (1) (-2).
Definition i33 := makepairF f15 f45.
Notation p52 := (ABS r14 i33). (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *)
Notation p53 := (BND r14 i33). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *)
Lemma t26 : p53 -> p52.
 intros h0.
 refine (abs_of_bnd_p r14 i33 i33 h0 _) ; finalize.
Qed.
Lemma l47 : s1 -> p52 (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t26. refine (subset r14 i10 i33 h1 _) ; finalize.
Qed.
Lemma t27 : p52 -> p51.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i33 i32 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p51 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 7.45058e-09]) *).
 intros h0.
 assert (h1 := l47 h0).
 apply t27. exact h1.
Qed.
Definition f46 := Float2 (9) (-31).
Definition f47 := Float2 (210768462566531619) (-85).
Definition i34 := makepairF f46 f47.
Notation p54 := (BND r46 i34). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [4.19095e-09, 5.44824e-09]) *)
Notation r48 := ((r15 - r16)%R).
Notation r49 := ((r18 - r25)%R).
Notation r47 := ((r48 - r49)%R).
Notation p55 := (BND r47 i34). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120), [4.19095e-09, 5.44824e-09]) *)
Definition f48 := Float2 (21) (-32).
Definition f49 := Float2 (11453246123) (-61).
Definition i35 := makepairF f48 f49.
Notation p56 := (BND r48 i35). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *)
Definition f50 := Float2 (715827883) (-32).
Definition i36 := makepairF f18 f50.
Notation p57 := (BND r16 i36). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t28 : p19 -> p57 -> p56.
 intros h0 h1.
 refine (sub r15 r16 i11 i36 i35 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p56 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t28. exact h1. refine (subset r16 i12 i36 h2 _) ; finalize.
Qed.
Definition f51 := Float2 (-18614878459798051) (-85).
Definition f52 := Float2 (3) (-32).
Definition i37 := makepairF f51 f52.
Notation p58 := (BND r49 i37). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120, [-4.81183e-10, 6.98492e-10]) *)
Notation r51 := ((r18 - r19)%R).
Notation r52 := ((r19 - r25)%R).
Notation r50 := ((r51 + r52)%R).
Notation p59 := (BND r50 i37). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120 + (float<24,-149,ne>(x * x) / 120 - x * x / 120), [-4.81183e-10, 6.98492e-10]) *)
Definition f53 := Float2 (-1) (-32).
Definition f54 := Float2 (1) (-32).
Definition i38 := makepairF f53 f54.
Notation p60 := (BND r51 i38). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120, [-2.32831e-10, 2.32831e-10]) *)
Definition f55 := Float2 (1) (-7).
Definition i39 := makepairF f22 f55.
Notation p61 := (ABS r19 i39). (* ABS(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *)
Definition f56 := Float2 (3) (5).
Definition i40 := makepairF f56 f26.
Notation p62 := (ABS r20 i40). (* ABS(120, [96, 128]) *)
Notation p63 := (BND r20 i40). (* BND(120, [96, 128]) *)
Lemma t29 : p63 -> p62.
 intros h0.
 refine (abs_of_bnd_p r20 i40 i40 h0 _) ; finalize.
Qed.
Lemma l55 : s1 -> p62 (* ABS(120, [96, 128]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t29. refine (subset r20 i16 i40 h1 _) ; finalize.
Qed.
Definition i41 := makepairF f13 f2.
Notation p64 := (ABS r11 i41). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t30 : p64 -> p62 -> p61.
 intros h0 h1.
 refine (div_aa r11 r20 i41 i40 i39 h0 h1 _) ; finalize.
Qed.
Lemma l54 : s1 -> p61 (* ABS(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l55 h0).
 apply t30. refine (abs_subset r11 i28 i41 h1 _) ; finalize. exact h2.
Qed.
Lemma t31 : p61 -> p60.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i39 i38 h0 _) ; finalize.
Qed.
Lemma l53 : s1 -> p60 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120, [-2.32831e-10, 2.32831e-10]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t31. exact h1.
Qed.
Definition f57 := Float2 (-9607679205057059) (-85).
Definition f58 := Float2 (1) (-31).
Definition i42 := makepairF f57 f58.
Notation p65 := (BND r52 i42). (* BND(float<24,-149,ne>(x * x) / 120 - x * x / 120, [-2.48353e-10, 4.65661e-10]) *)
Notation p66 := (NZR r20). (* NZR(120) *)
Definition i43 := makepairF f10 f26.
Notation p67 := (ABS r20 i43). (* ABS(120, [1, 128]) *)
Lemma t32 : p67 -> p66.
 intros h0.
 refine (nzr_of_abs r20 i43 h0 _) ; finalize.
Qed.
Lemma l57 : s1 -> p66 (* NZR(120) *).
 intros h0.
 assert (h1 := l55 h0).
 apply t32. refine (abs_subset r20 i40 i43 h1 _) ; finalize.
Qed.
Notation r53 := ((r43 / r20)%R).
Notation p68 := (BND r53 i42). (* BND((float<24,-149,ne>(x * x) - x * x) / 120, [-2.48353e-10, 4.65661e-10]) *)
Notation p69 := (BND r43 i4). (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *)
Notation p70 := (ABS r12 i17). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t33 : p30 -> p30 -> p70.
 intros h0 h1.
 refine (mul_aa _x _x i21 i21 i17 h0 h1 _) ; finalize.
Qed.
Lemma l60 : s1 -> p70 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t33. refine (abs_subset _x i1 i21 h1 _) ; finalize. refine (abs_subset _x i1 i21 h1 _) ; finalize.
Qed.
Lemma t34 : p70 -> p69.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i17 i4 h0 _) ; finalize.
Qed.
Lemma l59 : s1 -> p69 (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l60 h0).
 apply t34. exact h1.
Qed.
Definition i44 := makepairF f24 f26.
Notation p71 := (BND r20 i44). (* BND(120, [120, 128]) *)
Lemma t35 : p69 -> p71 -> p68.
 intros h0 h1.
 refine (div_op r43 r20 i4 i44 i42 h0 h1 _) ; finalize.
Qed.
Lemma l58 : s1 -> p68 (* BND((float<24,-149,ne>(x * x) - x * x) / 120, [-2.48353e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l26 h0).
 apply t35. exact h1. refine (subset r20 i16 i44 h2 _) ; finalize.
Qed.
Lemma t36 : p66 -> p68 -> p65.
 intros h0 h1.
 refine (div_firs _ r20 _ i42 h0 h1) ; finalize.
Qed.
Lemma l56 : s1 -> p65 (* BND(float<24,-149,ne>(x * x) / 120 - x * x / 120, [-2.48353e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l57 h0).
 assert (h2 := l58 h0).
 apply t36. exact h1. exact h2.
Qed.
Lemma t37 : p60 -> p65 -> p59.
 intros h0 h1.
 refine (add r51 r52 i38 i42 i37 h0 h1 _) ; finalize.
Qed.
Lemma l52 : s1 -> p59 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120 + (float<24,-149,ne>(x * x) / 120 - x * x / 120), [-4.81183e-10, 6.98492e-10]) *).
 intros h0.
 assert (h1 := l53 h0).
 assert (h2 := l56 h0).
 apply t37. exact h1. exact h2.
Qed.
Lemma t38 : p59 -> p58.
 intros h0.
 refine (sub_xals _ _ _ i37 h0) ; finalize.
Qed.
Lemma l51 : s1 -> p58 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120, [-4.81183e-10, 6.98492e-10]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t38. exact h1.
Qed.
Lemma t39 : p56 -> p58 -> p55.
 intros h0 h1.
 refine (sub r48 r49 i35 i37 i34 h0 h1 _) ; finalize.
Qed.
Lemma l49 : s1 -> p55 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120), [4.19095e-09, 5.44824e-09]) *).
 intros h0.
 assert (h1 := l50 h0).
 assert (h2 := l51 h0).
 apply t39. exact h1. exact h2.
Qed.
Lemma t40 : p55 -> p54.
 intros h0.
 refine (sub_mibs _ _ _ _ i34 h0) ; finalize.
Qed.
Lemma l48 : s1 -> p54 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [4.19095e-09, 5.44824e-09]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t40. exact h1.
Qed.
Lemma t41 : p51 -> p54 -> p50.
 intros h0 h1.
 refine (add r45 r46 i32 i34 i31 h0 h1 _) ; finalize.
Qed.
Lemma l45 : s1 -> p50 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-3.25963e-09, 1.28988e-08]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l48 h0).
 apply t41. exact h1. exact h2.
Qed.
Lemma t42 : p50 -> p49.
 intros h0.
 refine (sub_xals _ _ _ i31 h0) ; finalize.
Qed.
Lemma l44 : s1 -> p49 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-3.25963e-09, 1.28988e-08]) *).
 intros h0.
 assert (h1 := l45 h0).
 apply t42. exact h1.
Qed.
Lemma t43 : p15 -> p49 -> p48.
 intros h0 h1.
 refine (mul_po r11 r41 i9 i31 i30 h0 h1 _) ; finalize.
Qed.
Lemma l43 : s1 -> p48 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.86265e-09, 7.25558e-09]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l44 h0).
 apply t43. exact h1. exact h2.
Qed.
Definition f59 := Float2 (-3) (-29).
Definition f60 := Float2 (48038396025285257) (-83).
Definition i45 := makepairF f59 f60.
Notation p72 := (BND r42 i45). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-5.58794e-09, 4.96705e-09]) *)
Definition f61 := Float2 (48038396025285257) (-58).
Definition i46 := makepairF f15 f61.
Notation p73 := (BND r24 i46). (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *)
Definition f62 := Float2 (17) (-57).
Definition i47 := makepairF f62 f23.
Notation p74 := (BND r25 i47). (* BND(x * x / 120, [1.17961e-16, 0.03125]) *)
Notation p75 := (BND r12 i17). (* BND(x * x, [1.42109e-14, 1]) *)
Definition i48 := makepairF f25 f24.
Notation p76 := (BND r20 i48). (* BND(120, [32, 120]) *)
Lemma t44 : p75 -> p76 -> p74.
 intros h0 h1.
 refine (div_pp r12 r20 i17 i48 i47 h0 h1 _) ; finalize.
Qed.
Lemma l63 : s1 -> p74 (* BND(x * x / 120, [1.17961e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l26 h0).
 apply t44. refine (subset r12 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i48 h2 _) ; finalize.
Qed.
Definition i49 := makepairF f27 f19.
Notation p77 := (BND r16 i49). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t45 : p77 -> p74 -> p73.
 intros h0 h1.
 refine (sub r16 r25 i49 i47 i46 h0 h1 _) ; finalize.
Qed.
Lemma l62 : s1 -> p73 (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l63 h0).
 apply t45. refine (subset r16 i12 i49 h1 _) ; finalize. exact h2.
Qed.
Lemma t46 : p69 -> p73 -> p72.
 intros h0 h1.
 refine (mul_op r43 r24 i4 i46 i45 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p72 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-5.58794e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l62 h0).
 apply t46. exact h1. exact h2.
Qed.
Lemma t47 : p48 -> p72 -> p47.
 intros h0 h1.
 refine (add r40 r42 i30 i45 i29 h0 h1 _) ; finalize.
Qed.
Lemma l42 : s1 -> p47 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *).
 intros h0.
 assert (h1 := l43 h0).
 assert (h2 := l61 h0).
 apply t47. exact h1. exact h2.
Qed.
Lemma t48 : p47 -> p46.
 intros h0.
 refine (mul_mars _ _ _ _ i29 h0) ; finalize.
Qed.
Lemma l41 : s1 -> p46 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t48. exact h1.
Qed.
Lemma t49 : p41 -> p46 -> p40.
 intros h0 h1.
 refine (add r37 r38 i26 i29 i25 h0 h1 _) ; finalize.
Qed.
Lemma l36 : s1 -> p40 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-1.49012e-08, 1.59479e-08]) *).
 intros h0.
 assert (h1 := l37 h0).
 assert (h2 := l41 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p40 -> p39.
 intros h0.
 refine (sub_xals _ _ _ i25 h0) ; finalize.
Qed.
Lemma l35 : s1 -> p39 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-1.49012e-08, 1.59479e-08]) *).
 intros h0.
 assert (h1 := l36 h0).
 apply t50. exact h1.
Qed.
Lemma t51 : p39 -> p38.
 intros h0.
 refine (neg r35 i25 i24 h0 _) ; finalize.
Qed.
Lemma l34 : s1 -> p38 (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l35 h0).
 apply t51. exact h1.
Qed.
Lemma t52 : p38 -> p37.
 intros h0.
 refine (sub_fils _ _ _ i24 h0) ; finalize.
Qed.
Lemma l33 : s1 -> p37 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t52. exact h1.
Qed.
Lemma t53 : p35 -> p37 -> p34.
 intros h0 h1.
 refine (add r32 r33 i4 i24 i23 h0 h1 _) ; finalize.
Qed.
Lemma l30 : s1 -> p34 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-4.57503e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l31 h0).
 assert (h2 := l33 h0).
 apply t53. exact h1. exact h2.
Qed.
Lemma t54 : p34 -> p33.
 intros h0.
 refine (sub_xals _ _ _ i23 h0) ; finalize.
Qed.
Lemma l29 : s1 -> p33 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-4.57503e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l30 h0).
 apply t54. exact h1.
Qed.
Lemma t55 : p1 -> p33 -> p32.
 intros h0 h1.
 refine (mul_po _x r30 i1 i23 i22 h0 h1 _) ; finalize.
Qed.
Lemma l28 : s1 -> p32 (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-3.43127e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l29 h0).
 apply t55. exact h1. exact h2.
Qed.
Lemma t56 : p32 -> p31.
 intros h0.
 refine (mul_fils _ _ _ i22 h0) ; finalize.
Qed.
Lemma l27 : s1 -> p31 (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts, [-3.43127e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l28 h0).
 apply t56. exact h1.
Qed.
Lemma t57 : p6 -> p31 -> p5.
 intros h0 h1.
 refine (add r27 r28 i4 i22 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts), [-6.4115e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l27 h0).
 apply t57. exact h1. exact h2.
Qed.
Lemma t58 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-6.4115e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t58. exact h1.
Qed.
Lemma t59 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 6.4115e-08]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t59. exact h1.
Qed.
Lemma t60 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 6.4115e-08]) *).
 intros h0.
 assert (h1 := l4 h0).
 apply t60. exact h1.
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
Notation r20 := (Float1 (120)).
Notation r19 := ((r11 / r20)%R).
Notation r18 := ((rounding_float rndNE (24)%positive (-149)%Z) r19).
Notation r14 := ((r15 - r18)%R).
Notation r13 := ((rounding_float rndNE (24)%positive (-149)%Z) r14).
Notation r10 := ((r11 * r13)%R).
Notation r9 := ((rounding_float rndNE (24)%positive (-149)%Z) r10).
Notation r7 := ((r8 - r9)%R).
Notation r6 := ((rounding_float rndNE (24)%positive (-149)%Z) r7).
Notation r5 := ((_x * r6)%R).
Notation _ts := ((rounding_float rndNE (24)%positive (-149)%Z) r5).
Notation r25 := ((r12 / r20)%R).
Notation r24 := ((r16 - r25)%R).
Notation r23 := ((r12 * r24)%R).
Notation r22 := ((r8 - r23)%R).
Notation _Mts := ((_x * r22)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (620082336819747201) (-83).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 6.4115e-08]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 6.4115e-08]) *)
Definition f5 := Float2 (-620082336819747201) (-83).
Definition f6 := Float2 (17) (-28).
Definition i3 := makepairF f5 f6.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-6.4115e-08, 6.33299e-08]) *)
Notation r27 := ((_ts - r5)%R).
Notation r28 := ((r5 - _Mts)%R).
Notation r26 := ((r27 + r28)%R).
Notation p5 := (BND r26 i3). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts), [-6.4115e-08, 6.33299e-08]) *)
Definition f7 := Float2 (-1) (-25).
Definition f8 := Float2 (1) (-25).
Definition i4 := makepairF f7 f8.
Notation p6 := (BND r27 i4). (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *)
Definition f9 := Float2 (1) (-24).
Definition f10 := Float2 (1) (0).
Definition i5 := makepairF f9 f10.
Notation p7 := (ABS r5 i5). (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [5.96046e-08, 1]) *)
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
Notation p9 := (ABS r6 i6). (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *)
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
Notation p13 := (BND r9 i8). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *)
Notation p14 := (BND r10 i8). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *)
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
Notation p17 := (BND r13 i10). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *)
Notation p18 := (BND r14 i10). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.1875]) *)
Definition f17 := Float2 (11184811) (-26).
Definition i11 := makepairF f17 f17.
Notation p19 := (BND r15 i11). (* BND(float<24,-149,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f18 := Float2 (384307168202282325) (-61).
Definition f19 := Float2 (48038396025285291) (-58).
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
Notation p23 := (BND r18 i15). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i15). (* BND(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *)
Definition f24 := Float2 (15) (3).
Definition i16 := makepairF f24 f24.
Notation p25 := (BND r20 i16). (* BND(120, [120, 120]) *)
Lemma t8 : p25.
 refine (constant1 _ i16 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(120, [120, 120]) *).
 intros h0.
 apply t8.
Qed.
Definition i17 := makepairF f13 f10.
Notation p26 := (BND r11 i17). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 1]) *)
Definition f25 := Float2 (1) (5).
Definition f26 := Float2 (1) (7).
Definition i18 := makepairF f25 f26.
Notation p27 := (BND r20 i18). (* BND(120, [32, 128]) *)
Lemma t9 : p26 -> p27 -> p24.
 intros h0 h1.
 refine (div_pp r11 r20 i17 i18 i15 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t9. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i18 h2 _) ; finalize.
Qed.
Lemma t10 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i15 i15 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t10. exact h1.
Qed.
Definition f27 := Float2 (5) (-5).
Definition i19 := makepairF f27 f16.
Notation p28 := (BND r15 i19). (* BND(float<24,-149,ne>(1 / 6), [0.15625, 0.1875]) *)
Lemma t11 : p28 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i19 i15 i10 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t11. refine (subset r15 i11 i19 h1 _) ; finalize. exact h2.
Qed.
Lemma t12 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i10 i10 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t12. exact h1.
Qed.
Definition i20 := makepairF f15 f11.
Notation p29 := (BND r13 i20). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.5]) *)
Lemma t13 : p26 -> p29 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i17 i20 i8 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t13. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r13 i10 i20 h2 _) ; finalize.
Qed.
Lemma t14 : p14 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t14. exact h1.
Qed.
Lemma t15 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t15. exact h1. exact h2.
Qed.
Lemma t16 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t16. exact h1.
Qed.
Lemma t17 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t17. exact h1.
Qed.
Definition i21 := makepairF f1 f10.
Notation p30 := (ABS _x i21). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t18 : p30 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i21 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t18. refine (abs_subset _x i1 i21 h1 _) ; finalize. exact h2.
Qed.
Lemma t19 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t19. exact h1.
Qed.
Definition f28 := Float2 (-331851960668035457) (-83).
Definition f29 := Float2 (9) (-28).
Definition i22 := makepairF f28 f29.
Notation p31 := (BND r28 i22). (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts, [-3.43127e-08, 3.35276e-08]) *)
Notation r30 := ((r6 - r22)%R).
Notation r29 := ((_x * r30)%R).
Notation p32 := (BND r29 i22). (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-3.43127e-08, 3.35276e-08]) *)
Definition f30 := Float2 (-221234640445356971) (-82).
Definition f31 := Float2 (3) (-26).
Definition i23 := makepairF f30 f31.
Notation p33 := (BND r30 i23). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-4.57503e-08, 4.47035e-08]) *)
Notation r32 := ((r6 - r7)%R).
Notation r33 := ((r7 - r22)%R).
Notation r31 := ((r32 + r33)%R).
Notation p34 := (BND r31 i23). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-4.57503e-08, 4.47035e-08]) *)
Notation p35 := (BND r32 i4). (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *)
Notation p36 := (ABS r7 i6). (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *)
Lemma t20 : p11 -> p36.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l32 : s1 -> p36 (* ABS(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t20. exact h1.
Qed.
Lemma t21 : p36 -> p35.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p35 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))), [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t21. exact h1.
Qed.
Definition f32 := Float2 (-77119452369501099) (-82).
Definition f33 := Float2 (1) (-26).
Definition i24 := makepairF f32 f33.
Notation p37 := (BND r33 i24). (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *)
Notation r35 := ((r9 - r23)%R).
Notation r34 := ((- r35)%R).
Notation p38 := (BND r34 i24). (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *)
Definition f34 := Float2 (-1) (-26).
Definition f35 := Float2 (77119452369501099) (-82).
Definition i25 := makepairF f34 f35.
Notation p39 := (BND r35 i25). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-1.49012e-08, 1.59479e-08]) *)
Notation r37 := ((r9 - r10)%R).
Notation r38 := ((r10 - r23)%R).
Notation r36 := ((r37 + r38)%R).
Notation p40 := (BND r36 i25). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-1.49012e-08, 1.59479e-08]) *)
Definition f36 := Float2 (-1) (-27).
Definition f37 := Float2 (1) (-28).
Definition i26 := makepairF f36 f37.
Notation p41 := (BND r37 i26). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 3.72529e-09]) *)
Definition i27 := makepairF f12 f15.
Notation p42 := (ABS r10 i27). (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *)
Definition f38 := Float2 (5) (-3).
Definition i28 := makepairF f13 f38.
Notation p43 := (ABS r11 i28). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Notation p44 := (BND r11 i28). (* BND(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *)
Lemma t22 : p44 -> p43.
 intros h0.
 refine (abs_of_bnd_p r11 i28 i28 h0 _) ; finalize.
Qed.
Lemma l39 : s1 -> p43 (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.625]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t22. refine (subset r11 i9 i28 h1 _) ; finalize.
Qed.
Notation p45 := (ABS r13 i10). (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *)
Lemma t23 : p17 -> p45.
 intros h0.
 refine (abs_of_bnd_p r13 i10 i10 h0 _) ; finalize.
Qed.
Lemma l40 : s1 -> p45 (* ABS(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [0.125, 0.1875]) *).
 intros h0.
 assert (h1 := l19 h0).
 apply t23. exact h1.
Qed.
Lemma t24 : p43 -> p45 -> p42.
 intros h0 h1.
 refine (mul_aa r11 r13 i28 i10 i27 h0 h1 _) ; finalize.
Qed.
Lemma l38 : s1 -> p42 (* ABS(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l40 h0).
 apply t24. exact h1. exact h2.
Qed.
Lemma t25 : p42 -> p41.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i27 i26 h0 _) ; finalize.
Qed.
Lemma l37 : s1 -> p41 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 3.72529e-09]) *).
 intros h0.
 assert (h1 := l38 h0).
 apply t25. exact h1.
Qed.
Definition f39 := Float2 (59105053860019115) (-82).
Definition i29 := makepairF f36 f39.
Notation p46 := (BND r38 i29). (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *)
Notation r41 := ((r13 - r24)%R).
Notation r40 := ((r11 * r41)%R).
Notation r43 := ((r11 - r12)%R).
Notation r42 := ((r43 * r24)%R).
Notation r39 := ((r40 + r42)%R).
Notation p47 := (BND r39 i29). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *)
Definition f40 := Float2 (-1) (-29).
Definition f41 := Float2 (70171711694752973) (-83).
Definition i30 := makepairF f40 f41.
Notation p48 := (BND r40 i30). (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.86265e-09, 7.25558e-09]) *)
Definition f42 := Float2 (-7) (-31).
Definition f43 := Float2 (498998838718243363) (-85).
Definition i31 := makepairF f42 f43.
Notation p49 := (BND r41 i31). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-3.25963e-09, 1.28988e-08]) *)
Notation r45 := ((r13 - r14)%R).
Notation r46 := ((r14 - r24)%R).
Notation r44 := ((r45 + r46)%R).
Notation p50 := (BND r44 i31). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-3.25963e-09, 1.28988e-08]) *)
Definition f44 := Float2 (1) (-27).
Definition i32 := makepairF f36 f44.
Notation p51 := (BND r45 i32). (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 7.45058e-09]) *)
Definition f45 := Float2 (1) (-2).
Definition i33 := makepairF f15 f45.
Notation p52 := (ABS r14 i33). (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *)
Notation p53 := (BND r14 i33). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *)
Lemma t26 : p53 -> p52.
 intros h0.
 refine (abs_of_bnd_p r14 i33 i33 h0 _) ; finalize.
Qed.
Lemma l47 : s1 -> p52 (* ABS(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t26. refine (subset r14 i10 i33 h1 _) ; finalize.
Qed.
Lemma t27 : p52 -> p51.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i33 i32 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p51 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)), [-7.45058e-09, 7.45058e-09]) *).
 intros h0.
 assert (h1 := l47 h0).
 apply t27. exact h1.
Qed.
Definition f46 := Float2 (9) (-31).
Definition f47 := Float2 (210768462566531619) (-85).
Definition i34 := makepairF f46 f47.
Notation p54 := (BND r46 i34). (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [4.19095e-09, 5.44824e-09]) *)
Notation r48 := ((r15 - r16)%R).
Notation r49 := ((r18 - r25)%R).
Notation r47 := ((r48 - r49)%R).
Notation p55 := (BND r47 i34). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120), [4.19095e-09, 5.44824e-09]) *)
Definition f48 := Float2 (21) (-32).
Definition f49 := Float2 (11453246123) (-61).
Definition i35 := makepairF f48 f49.
Notation p56 := (BND r48 i35). (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *)
Definition f50 := Float2 (715827883) (-32).
Definition i36 := makepairF f18 f50.
Notation p57 := (BND r16 i36). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t28 : p19 -> p57 -> p56.
 intros h0 h1.
 refine (sub r15 r16 i11 i36 i35 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p56 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6, [4.88944e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t28. exact h1. refine (subset r16 i12 i36 h2 _) ; finalize.
Qed.
Definition f51 := Float2 (-18614878459798051) (-85).
Definition f52 := Float2 (3) (-32).
Definition i37 := makepairF f51 f52.
Notation p58 := (BND r49 i37). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120, [-4.81183e-10, 6.98492e-10]) *)
Notation r51 := ((r18 - r19)%R).
Notation r52 := ((r19 - r25)%R).
Notation r50 := ((r51 + r52)%R).
Notation p59 := (BND r50 i37). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120 + (float<24,-149,ne>(x * x) / 120 - x * x / 120), [-4.81183e-10, 6.98492e-10]) *)
Definition f53 := Float2 (-1) (-32).
Definition f54 := Float2 (1) (-32).
Definition i38 := makepairF f53 f54.
Notation p60 := (BND r51 i38). (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120, [-2.32831e-10, 2.32831e-10]) *)
Definition f55 := Float2 (1) (-7).
Definition i39 := makepairF f22 f55.
Notation p61 := (ABS r19 i39). (* ABS(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *)
Definition f56 := Float2 (3) (5).
Definition i40 := makepairF f56 f26.
Notation p62 := (ABS r20 i40). (* ABS(120, [96, 128]) *)
Notation p63 := (BND r20 i40). (* BND(120, [96, 128]) *)
Lemma t29 : p63 -> p62.
 intros h0.
 refine (abs_of_bnd_p r20 i40 i40 h0 _) ; finalize.
Qed.
Lemma l55 : s1 -> p62 (* ABS(120, [96, 128]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t29. refine (subset r20 i16 i40 h1 _) ; finalize.
Qed.
Definition i41 := makepairF f13 f2.
Notation p64 := (ABS r11 i41). (* ABS(float<24,-149,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t30 : p64 -> p62 -> p61.
 intros h0 h1.
 refine (div_aa r11 r20 i41 i40 i39 h0 h1 _) ; finalize.
Qed.
Lemma l54 : s1 -> p61 (* ABS(float<24,-149,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l55 h0).
 apply t30. refine (abs_subset r11 i28 i41 h1 _) ; finalize. exact h2.
Qed.
Lemma t31 : p61 -> p60.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i39 i38 h0 _) ; finalize.
Qed.
Lemma l53 : s1 -> p60 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120, [-2.32831e-10, 2.32831e-10]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t31. exact h1.
Qed.
Definition f57 := Float2 (-9607679205057059) (-85).
Definition f58 := Float2 (1) (-31).
Definition i42 := makepairF f57 f58.
Notation p65 := (BND r52 i42). (* BND(float<24,-149,ne>(x * x) / 120 - x * x / 120, [-2.48353e-10, 4.65661e-10]) *)
Notation p66 := (NZR r20). (* NZR(120) *)
Definition i43 := makepairF f10 f26.
Notation p67 := (ABS r20 i43). (* ABS(120, [1, 128]) *)
Lemma t32 : p67 -> p66.
 intros h0.
 refine (nzr_of_abs r20 i43 h0 _) ; finalize.
Qed.
Lemma l57 : s1 -> p66 (* NZR(120) *).
 intros h0.
 assert (h1 := l55 h0).
 apply t32. refine (abs_subset r20 i40 i43 h1 _) ; finalize.
Qed.
Notation r53 := ((r43 / r20)%R).
Notation p68 := (BND r53 i42). (* BND((float<24,-149,ne>(x * x) - x * x) / 120, [-2.48353e-10, 4.65661e-10]) *)
Notation p69 := (BND r43 i4). (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *)
Notation p70 := (ABS r12 i17). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t33 : p30 -> p30 -> p70.
 intros h0 h1.
 refine (mul_aa _x _x i21 i21 i17 h0 h1 _) ; finalize.
Qed.
Lemma l60 : s1 -> p70 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t33. refine (abs_subset _x i1 i21 h1 _) ; finalize. refine (abs_subset _x i1 i21 h1 _) ; finalize.
Qed.
Lemma t34 : p70 -> p69.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i17 i4 h0 _) ; finalize.
Qed.
Lemma l59 : s1 -> p69 (* BND(float<24,-149,ne>(x * x) - x * x, [-2.98023e-08, 2.98023e-08]) *).
 intros h0.
 assert (h1 := l60 h0).
 apply t34. exact h1.
Qed.
Definition i44 := makepairF f24 f26.
Notation p71 := (BND r20 i44). (* BND(120, [120, 128]) *)
Lemma t35 : p69 -> p71 -> p68.
 intros h0 h1.
 refine (div_op r43 r20 i4 i44 i42 h0 h1 _) ; finalize.
Qed.
Lemma l58 : s1 -> p68 (* BND((float<24,-149,ne>(x * x) - x * x) / 120, [-2.48353e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l26 h0).
 apply t35. exact h1. refine (subset r20 i16 i44 h2 _) ; finalize.
Qed.
Lemma t36 : p66 -> p68 -> p65.
 intros h0 h1.
 refine (div_firs _ r20 _ i42 h0 h1) ; finalize.
Qed.
Lemma l56 : s1 -> p65 (* BND(float<24,-149,ne>(x * x) / 120 - x * x / 120, [-2.48353e-10, 4.65661e-10]) *).
 intros h0.
 assert (h1 := l57 h0).
 assert (h2 := l58 h0).
 apply t36. exact h1. exact h2.
Qed.
Lemma t37 : p60 -> p65 -> p59.
 intros h0 h1.
 refine (add r51 r52 i38 i42 i37 h0 h1 _) ; finalize.
Qed.
Lemma l52 : s1 -> p59 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - float<24,-149,ne>(x * x) / 120 + (float<24,-149,ne>(x * x) / 120 - x * x / 120), [-4.81183e-10, 6.98492e-10]) *).
 intros h0.
 assert (h1 := l53 h0).
 assert (h2 := l56 h0).
 apply t37. exact h1. exact h2.
Qed.
Lemma t38 : p59 -> p58.
 intros h0.
 refine (sub_xals _ _ _ i37 h0) ; finalize.
Qed.
Lemma l51 : s1 -> p58 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120, [-4.81183e-10, 6.98492e-10]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t38. exact h1.
Qed.
Lemma t39 : p56 -> p58 -> p55.
 intros h0 h1.
 refine (sub r48 r49 i35 i37 i34 h0 h1 _) ; finalize.
Qed.
Lemma l49 : s1 -> p55 (* BND(float<24,-149,ne>(1 / 6) - 1 / 6 - (float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - x * x / 120), [4.19095e-09, 5.44824e-09]) *).
 intros h0.
 assert (h1 := l50 h0).
 assert (h2 := l51 h0).
 apply t39. exact h1. exact h2.
Qed.
Lemma t40 : p55 -> p54.
 intros h0.
 refine (sub_mibs _ _ _ _ i34 h0) ; finalize.
Qed.
Lemma l48 : s1 -> p54 (* BND(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [4.19095e-09, 5.44824e-09]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t40. exact h1.
Qed.
Lemma t41 : p51 -> p54 -> p50.
 intros h0 h1.
 refine (add r45 r46 i32 i34 i31 h0 h1 _) ; finalize.
Qed.
Lemma l45 : s1 -> p50 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-3.25963e-09, 1.28988e-08]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l48 h0).
 apply t41. exact h1. exact h2.
Qed.
Lemma t42 : p50 -> p49.
 intros h0.
 refine (sub_xals _ _ _ i31 h0) ; finalize.
Qed.
Lemma l44 : s1 -> p49 (* BND(float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-3.25963e-09, 1.28988e-08]) *).
 intros h0.
 assert (h1 := l45 h0).
 apply t42. exact h1.
Qed.
Lemma t43 : p15 -> p49 -> p48.
 intros h0 h1.
 refine (mul_po r11 r41 i9 i31 i30 h0 h1 _) ; finalize.
Qed.
Lemma l43 : s1 -> p48 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.86265e-09, 7.25558e-09]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l44 h0).
 apply t43. exact h1. exact h2.
Qed.
Definition f59 := Float2 (-3) (-29).
Definition f60 := Float2 (48038396025285257) (-83).
Definition i45 := makepairF f59 f60.
Notation p72 := (BND r42 i45). (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-5.58794e-09, 4.96705e-09]) *)
Definition f61 := Float2 (48038396025285257) (-58).
Definition i46 := makepairF f15 f61.
Notation p73 := (BND r24 i46). (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *)
Definition f62 := Float2 (17) (-57).
Definition i47 := makepairF f62 f23.
Notation p74 := (BND r25 i47). (* BND(x * x / 120, [1.17961e-16, 0.03125]) *)
Notation p75 := (BND r12 i17). (* BND(x * x, [1.42109e-14, 1]) *)
Definition i48 := makepairF f25 f24.
Notation p76 := (BND r20 i48). (* BND(120, [32, 120]) *)
Lemma t44 : p75 -> p76 -> p74.
 intros h0 h1.
 refine (div_pp r12 r20 i17 i48 i47 h0 h1 _) ; finalize.
Qed.
Lemma l63 : s1 -> p74 (* BND(x * x / 120, [1.17961e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l26 h0).
 apply t44. refine (subset r12 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i48 h2 _) ; finalize.
Qed.
Definition i49 := makepairF f27 f19.
Notation p77 := (BND r16 i49). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t45 : p77 -> p74 -> p73.
 intros h0 h1.
 refine (sub r16 r25 i49 i47 i46 h0 h1 _) ; finalize.
Qed.
Lemma l62 : s1 -> p73 (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l63 h0).
 apply t45. refine (subset r16 i12 i49 h1 _) ; finalize. exact h2.
Qed.
Lemma t46 : p69 -> p73 -> p72.
 intros h0 h1.
 refine (mul_op r43 r24 i4 i46 i45 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p72 (* BND((float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-5.58794e-09, 4.96705e-09]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l62 h0).
 apply t46. exact h1. exact h2.
Qed.
Lemma t47 : p48 -> p72 -> p47.
 intros h0 h1.
 refine (add r40 r42 i30 i45 i29 h0 h1 _) ; finalize.
Qed.
Lemma l42 : s1 -> p47 (* BND(float<24,-149,ne>(x * x) * (float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<24,-149,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *).
 intros h0.
 assert (h1 := l43 h0).
 assert (h2 := l61 h0).
 apply t47. exact h1. exact h2.
Qed.
Lemma t48 : p47 -> p46.
 intros h0.
 refine (mul_mars _ _ _ _ i29 h0) ; finalize.
Qed.
Lemma l41 : s1 -> p46 (* BND(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-7.45058e-09, 1.22226e-08]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t48. exact h1.
Qed.
Lemma t49 : p41 -> p46 -> p40.
 intros h0 h1.
 refine (add r37 r38 i26 i29 i25 h0 h1 _) ; finalize.
Qed.
Lemma l36 : s1 -> p40 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) + (float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-1.49012e-08, 1.59479e-08]) *).
 intros h0.
 assert (h1 := l37 h0).
 assert (h2 := l41 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p40 -> p39.
 intros h0.
 refine (sub_xals _ _ _ i25 h0) ; finalize.
Qed.
Lemma l35 : s1 -> p39 (* BND(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-1.49012e-08, 1.59479e-08]) *).
 intros h0.
 assert (h1 := l36 h0).
 apply t50. exact h1.
Qed.
Lemma t51 : p39 -> p38.
 intros h0.
 refine (neg r35 i25 i24 h0 _) ; finalize.
Qed.
Lemma l34 : s1 -> p38 (* BND(-(float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l35 h0).
 apply t51. exact h1.
Qed.
Lemma t52 : p38 -> p37.
 intros h0.
 refine (sub_fils _ _ _ i24 h0) ; finalize.
Qed.
Lemma l33 : s1 -> p37 (* BND(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-1.59479e-08, 1.49012e-08]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t52. exact h1.
Qed.
Lemma t53 : p35 -> p37 -> p34.
 intros h0 h1.
 refine (add r32 r33 i4 i24 i23 h0 h1 _) ; finalize.
Qed.
Lemma l30 : s1 -> p34 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-4.57503e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l31 h0).
 assert (h2 := l33 h0).
 apply t53. exact h1. exact h2.
Qed.
Lemma t54 : p34 -> p33.
 intros h0.
 refine (sub_xals _ _ _ i23 h0) ; finalize.
Qed.
Lemma l29 : s1 -> p33 (* BND(float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-4.57503e-08, 4.47035e-08]) *).
 intros h0.
 assert (h1 := l30 h0).
 apply t54. exact h1.
Qed.
Lemma t55 : p1 -> p33 -> p32.
 intros h0 h1.
 refine (mul_po _x r30 i1 i23 i22 h0 h1 _) ; finalize.
Qed.
Lemma l28 : s1 -> p32 (* BND(x * (float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-3.43127e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l29 h0).
 apply t55. exact h1. exact h2.
Qed.
Lemma t56 : p32 -> p31.
 intros h0.
 refine (mul_fils _ _ _ i22 h0) ; finalize.
Qed.
Lemma l27 : s1 -> p31 (* BND(x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts, [-3.43127e-08, 3.35276e-08]) *).
 intros h0.
 assert (h1 := l28 h0).
 apply t56. exact h1.
Qed.
Lemma t57 : p6 -> p31 -> p5.
 intros h0 h1.
 refine (add r27 r28 i4 i22 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) + (x * float<24,-149,ne>(1 - float<24,-149,ne>(float<24,-149,ne>(x * x) * float<24,-149,ne>(float<24,-149,ne>(1 / 6) - float<24,-149,ne>(float<24,-149,ne>(x * x) / 120)))) - Mts), [-6.4115e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l27 h0).
 apply t57. exact h1. exact h2.
Qed.
Lemma t58 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-6.4115e-08, 6.33299e-08]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t58. exact h1.
Qed.
Lemma t59 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 6.4115e-08]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t59. exact h1.
Qed.
Lemma t60 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 6.4115e-08]) *).
 intros h0.
 assert (h1 := l4 h0).
 apply t60. exact h1.
Qed.
Lemma l1 : s1 -> False.
 intros h0.
 assert (h1 := l2 h0).
 assert (h2 := l3 h0).
 refine (simplify (Tatom false (Abnd 0%nat i2)) Tfalse (Abnd 0%nat i2) (List.cons r2 List.nil) h2 h1 _) ; finalize.
Qed.
End Generated_by_Gappa.
