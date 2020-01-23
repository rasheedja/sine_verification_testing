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
Notation r20 := (Float1 (120)).
Notation r19 := ((r11 / r20)%R).
Notation r18 := ((rounding_float rndNE (53)%positive (-1074)%Z) r19).
Notation r14 := ((r15 - r18)%R).
Notation r13 := ((rounding_float rndNE (53)%positive (-1074)%Z) r14).
Notation r10 := ((r11 * r13)%R).
Notation r9 := ((rounding_float rndNE (53)%positive (-1074)%Z) r10).
Notation r7 := ((r8 - r9)%R).
Notation r6 := ((rounding_float rndNE (53)%positive (-1074)%Z) r7).
Notation r5 := ((_x * r6)%R).
Notation _ts := ((rounding_float rndNE (53)%positive (-1074)%Z) r5).
Notation r25 := ((r12 / r20)%R).
Notation r24 := ((r16 - r25)%R).
Notation r23 := ((r12 * r24)%R).
Notation r22 := ((r8 - r23)%R).
Notation _Mts := ((_x * r22)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (620240666493557121) (-112).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 1.19454e-16]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 1.19454e-16]) *)
Definition f5 := Float2 (-17) (-57).
Definition i3 := makepairF f5 f4.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-1.17961e-16, 1.19454e-16]) *)
Notation r27 := ((_ts - r5)%R).
Notation r28 := ((r5 - _Mts)%R).
Notation r26 := ((r27 + r28)%R).
Notation p5 := (BND r26 i3). (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) + (x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - Mts), [-1.17961e-16, 1.19454e-16]) *)
Definition f6 := Float2 (-1) (-54).
Definition f7 := Float2 (1) (-54).
Definition i4 := makepairF f6 f7.
Notation p6 := (BND r27 i4). (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [-5.55112e-17, 5.55112e-17]) *)
Definition f8 := Float2 (1) (-24).
Definition f9 := Float2 (1) (0).
Definition i5 := makepairF f8 f9.
Notation p7 := (ABS r5 i5). (* ABS(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [5.96046e-08, 1]) *)
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
Notation p9 := (ABS r6 i6). (* ABS(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [0.5, 1]) *)
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
Notation p13 := (BND r9 i8). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *)
Notation p14 := (BND r10 i8). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *)
Definition f12 := Float2 (1) (-46).
Definition f13 := Float2 (9) (-4).
Definition i9 := makepairF f12 f13.
Notation p15 := (BND r11 i9). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.5625]) *)
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
Lemma l17 : s1 -> p15 (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l18 h0).
 apply t4. exact h1.
Qed.
Definition f14 := Float2 (1) (-3).
Definition f15 := Float2 (1501199875790165) (-53).
Definition i10 := makepairF f14 f15.
Notation p17 := (BND r13 i10). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.166667]) *)
Notation p18 := (BND r14 i10). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.166667]) *)
Definition f16 := Float2 (6004799503160661) (-55).
Definition i11 := makepairF f16 f16.
Notation p19 := (BND r15 i11). (* BND(float<53,-1074,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f17 := Float2 (384307168202282325) (-61).
Definition f18 := Float2 (768614336404564651) (-62).
Definition i12 := makepairF f17 f18.
Notation p20 := (BND r16 i12). (* BND(1 / 6, [0.166667, 0.166667]) *)
Definition f19 := Float2 (3) (1).
Definition i13 := makepairF f19 f19.
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
Definition f20 := Float2 (48038396025285291) (-58).
Definition i14 := makepairF f16 f20.
Notation p22 := (BND r16 i14). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t7 : p22 -> p19.
 intros h0.
 refine (float_round_ne _ _ r16 i14 i11 h0 _) ; finalize.
Qed.
Lemma l21 : s1 -> p19 (* BND(float<53,-1074,ne>(1 / 6), [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 apply t7. refine (subset r16 i12 i14 h1 _) ; finalize.
Qed.
Definition f21 := Float2 (1) (-53).
Definition f22 := Float2 (1) (-5).
Definition i15 := makepairF f21 f22.
Notation p23 := (BND r18 i15). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i15). (* BND(float<53,-1074,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *)
Definition f23 := Float2 (15) (3).
Definition i16 := makepairF f23 f23.
Notation p25 := (BND r20 i16). (* BND(120, [120, 120]) *)
Lemma t8 : p25.
 refine (constant1 _ i16 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(120, [120, 120]) *).
 intros h0.
 apply t8.
Qed.
Definition i17 := makepairF f12 f9.
Notation p26 := (BND r11 i17). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 1]) *)
Definition f24 := Float2 (1) (5).
Definition f25 := Float2 (1) (7).
Definition i18 := makepairF f24 f25.
Notation p27 := (BND r20 i18). (* BND(120, [32, 128]) *)
Lemma t9 : p26 -> p27 -> p24.
 intros h0 h1.
 refine (div_pp r11 r20 i17 i18 i15 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<53,-1074,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t9. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i18 h2 _) ; finalize.
Qed.
Lemma t10 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i15 i15 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t10. exact h1.
Qed.
Definition f26 := Float2 (5) (-5).
Definition f27 := Float2 (750599937895083) (-52).
Definition i19 := makepairF f26 f27.
Notation p28 := (BND r15 i19). (* BND(float<53,-1074,ne>(1 / 6), [0.15625, 0.166667]) *)
Lemma t11 : p28 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i19 i15 i10 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t11. refine (subset r15 i11 i19 h1 _) ; finalize. exact h2.
Qed.
Lemma t12 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i10 i10 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t12. exact h1.
Qed.
Definition i20 := makepairF f14 f10.
Notation p29 := (BND r13 i20). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.5]) *)
Lemma t13 : p26 -> p29 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i17 i20 i8 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t13. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r13 i10 i20 h2 _) ; finalize.
Qed.
Lemma t14 : p14 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t14. exact h1.
Qed.
Lemma t15 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t15. exact h1. exact h2.
Qed.
Lemma t16 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t16. exact h1.
Qed.
Lemma t17 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t17. exact h1.
Qed.
Definition i21 := makepairF f1 f9.
Notation p30 := (ABS _x i21). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t18 : p30 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i21 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t18. refine (abs_subset _x i1 i21 h1 _) ; finalize. exact h2.
Qed.
Lemma t19 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t19. exact h1.
Qed.
Definition f28 := Float2 (-9) (-57).
Definition f29 := Float2 (332010290341845377) (-112).
Definition i22 := makepairF f28 f29.
Notation p31 := (BND r28 i22). (* BND(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - Mts, [-6.245e-17, 6.39429e-17]) *)
Notation r30 := ((r6 - r22)%R).
Notation r29 := ((_x * r30)%R).
Notation p32 := (BND r29 i22). (* BND(x * (float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-6.245e-17, 6.39429e-17]) *)
Definition f30 := Float2 (-3) (-55).
Definition f31 := Float2 (221340193561230251) (-111).
Definition i23 := makepairF f30 f31.
Notation p33 := (BND r30 i23). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-8.32667e-17, 8.52571e-17]) *)
Notation r32 := ((r6 - r7)%R).
Notation r33 := ((r7 - r22)%R).
Notation r31 := ((r32 + r33)%R).
Notation p34 := (BND r31 i23). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) + (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-8.32667e-17, 8.52571e-17]) *)
Notation p35 := (BND r32 i4). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [-5.55112e-17, 5.55112e-17]) *)
Notation p36 := (ABS r7 i6). (* ABS(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [0.5, 1]) *)
Lemma t20 : p11 -> p36.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l32 : s1 -> p36 (* ABS(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t20. exact h1.
Qed.
Lemma t21 : p36 -> p35.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p35 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t21. exact h1.
Qed.
Definition f32 := Float2 (-1) (-55).
Definition f33 := Float2 (77225005485374379) (-111).
Definition i24 := makepairF f32 f33.
Notation p37 := (BND r33 i24). (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-2.77556e-17, 2.9746e-17]) *)
Notation r35 := ((r9 - r23)%R).
Notation r34 := ((- r35)%R).
Notation p38 := (BND r34 i24). (* BND(-(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-2.77556e-17, 2.9746e-17]) *)
Definition f34 := Float2 (-77225005485374379) (-111).
Definition f35 := Float2 (1) (-55).
Definition i25 := makepairF f34 f35.
Notation p39 := (BND r35 i25). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-2.9746e-17, 2.77556e-17]) *)
Notation r37 := ((r9 - r10)%R).
Notation r38 := ((r10 - r23)%R).
Notation r36 := ((r37 + r38)%R).
Notation p40 := (BND r36 i25). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-2.9746e-17, 2.77556e-17]) *)
Definition f36 := Float2 (-1) (-57).
Definition f37 := Float2 (1) (-56).
Definition i26 := makepairF f36 f37.
Notation p41 := (BND r37 i26). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [-6.93889e-18, 1.38778e-17]) *)
Definition i27 := makepairF f11 f14.
Notation p42 := (ABS r10 i27). (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *)
Definition i28 := makepairF f12 f2.
Notation p43 := (ABS r11 i28). (* ABS(float<53,-1074,ne>(x * x), [1.42109e-14, 0.75]) *)
Notation p44 := (BND r11 i28). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t22 : p44 -> p43.
 intros h0.
 refine (abs_of_bnd_p r11 i28 i28 h0 _) ; finalize.
Qed.
Lemma l39 : s1 -> p43 (* ABS(float<53,-1074,ne>(x * x), [1.42109e-14, 0.75]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t22. refine (subset r11 i9 i28 h1 _) ; finalize.
Qed.
Notation p45 := (ABS r13 i10). (* ABS(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.166667]) *)
Lemma t23 : p17 -> p45.
 intros h0.
 refine (abs_of_bnd_p r13 i10 i10 h0 _) ; finalize.
Qed.
Lemma l40 : s1 -> p45 (* ABS(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l19 h0).
 apply t23. exact h1.
Qed.
Lemma t24 : p43 -> p45 -> p42.
 intros h0 h1.
 refine (mul_aa r11 r13 i28 i10 i27 h0 h1 _) ; finalize.
Qed.
Lemma l38 : s1 -> p42 (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l40 h0).
 apply t24. exact h1. exact h2.
Qed.
Lemma t25 : p42 -> p41.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i27 i26 h0 _) ; finalize.
Qed.
Lemma l37 : s1 -> p41 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [-6.93889e-18, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l38 h0).
 apply t25. exact h1.
Qed.
Definition f38 := Float2 (-59210606975892395) (-111).
Definition i29 := makepairF f38 f37.
Notation p46 := (BND r38 i29). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-2.28071e-17, 1.38778e-17]) *)
Notation r41 := ((r13 - r24)%R).
Notation r40 := ((r11 * r41)%R).
Notation r43 := ((r11 - r12)%R).
Notation r42 := ((r43 * r24)%R).
Notation r39 := ((r40 + r42)%R).
Notation p47 := (BND r39 i29). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-2.28071e-17, 1.38778e-17]) *)
Definition f39 := Float2 (-70382817926499533) (-112).
Definition f40 := Float2 (1) (-58).
Definition i30 := makepairF f39 f40.
Notation p48 := (BND r40 i30). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.35552e-17, 3.46945e-18]) *)
Definition f41 := Float2 (-500500038588441123) (-114).
Definition f42 := Float2 (7) (-60).
Definition i31 := makepairF f41 f42.
Notation p49 := (BND r41 i31). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-2.40982e-17, 6.07153e-18]) *)
Notation r45 := ((r13 - r14)%R).
Notation r46 := ((r14 - r24)%R).
Notation r44 := ((r45 + r46)%R).
Notation p50 := (BND r44 i31). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) + (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-2.40982e-17, 6.07153e-18]) *)
Definition f43 := Float2 (-1) (-56).
Definition i32 := makepairF f43 f37.
Notation p51 := (BND r45 i32). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [-1.38778e-17, 1.38778e-17]) *)
Definition f44 := Float2 (1) (-2).
Definition i33 := makepairF f14 f44.
Notation p52 := (ABS r14 i33). (* ABS(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.25]) *)
Notation p53 := (BND r14 i33). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.25]) *)
Lemma t26 : p53 -> p52.
 intros h0.
 refine (abs_of_bnd_p r14 i33 i33 h0 _) ; finalize.
Qed.
Lemma l47 : s1 -> p52 (* ABS(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t26. refine (subset r14 i10 i33 h1 _) ; finalize.
Qed.
Lemma t27 : p52 -> p51.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i33 i32 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p51 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [-1.38778e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l47 h0).
 apply t27. exact h1.
Qed.
Definition f45 := Float2 (-212269662436729379) (-114).
Definition f46 := Float2 (-9) (-60).
Definition i34 := makepairF f45 f46.
Notation p54 := (BND r46 i34). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [-1.02204e-17, -7.80626e-18]) *)
Notation r48 := ((r15 - r16)%R).
Notation r49 := ((r18 - r25)%R).
Notation r47 := ((r48 - r49)%R).
Notation p55 := (BND r47 i34). (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - x * x / 120), [-1.02204e-17, -7.80626e-18]) *)
Definition f47 := Float2 (-43) (-62).
Definition f48 := Float2 (-21) (-61).
Definition i35 := makepairF f47 f48.
Notation p56 := (BND r48 i35). (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6, [-9.32414e-18, -9.1073e-18]) *)
Lemma t28 : p19 -> p20 -> p56.
 intros h0 h1.
 refine (sub r15 r16 i11 i12 i35 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p56 (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6, [-9.32414e-18, -9.1073e-18]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t28. exact h1. exact h2.
Qed.
Definition f49 := Float2 (-3) (-61).
Definition f50 := Float2 (18614878459798051) (-114).
Definition i36 := makepairF f49 f50.
Notation p57 := (BND r49 i36). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - x * x / 120, [-1.30104e-18, 8.96274e-19]) *)
Notation r51 := ((r18 - r19)%R).
Notation r52 := ((r19 - r25)%R).
Notation r50 := ((r51 + r52)%R).
Notation p58 := (BND r50 i36). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - float<53,-1074,ne>(x * x) / 120 + (float<53,-1074,ne>(x * x) / 120 - x * x / 120), [-1.30104e-18, 8.96274e-19]) *)
Definition f51 := Float2 (-1) (-61).
Definition f52 := Float2 (1) (-61).
Definition i37 := makepairF f51 f52.
Notation p59 := (BND r51 i37). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - float<53,-1074,ne>(x * x) / 120, [-4.33681e-19, 4.33681e-19]) *)
Definition f53 := Float2 (1) (-7).
Definition i38 := makepairF f21 f53.
Notation p60 := (ABS r19 i38). (* ABS(float<53,-1074,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *)
Definition f54 := Float2 (3) (5).
Definition i39 := makepairF f54 f25.
Notation p61 := (ABS r20 i39). (* ABS(120, [96, 128]) *)
Notation p62 := (BND r20 i39). (* BND(120, [96, 128]) *)
Lemma t29 : p62 -> p61.
 intros h0.
 refine (abs_of_bnd_p r20 i39 i39 h0 _) ; finalize.
Qed.
Lemma l55 : s1 -> p61 (* ABS(120, [96, 128]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t29. refine (subset r20 i16 i39 h1 _) ; finalize.
Qed.
Lemma t30 : p43 -> p61 -> p60.
 intros h0 h1.
 refine (div_aa r11 r20 i28 i39 i38 h0 h1 _) ; finalize.
Qed.
Lemma l54 : s1 -> p60 (* ABS(float<53,-1074,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l55 h0).
 apply t30. exact h1. exact h2.
Qed.
Lemma t31 : p60 -> p59.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i38 i37 h0 _) ; finalize.
Qed.
Lemma l53 : s1 -> p59 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - float<53,-1074,ne>(x * x) / 120, [-4.33681e-19, 4.33681e-19]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t31. exact h1.
Qed.
Definition f55 := Float2 (-1) (-60).
Definition f56 := Float2 (9607679205057059) (-114).
Definition i40 := makepairF f55 f56.
Notation p63 := (BND r52 i40). (* BND(float<53,-1074,ne>(x * x) / 120 - x * x / 120, [-8.67362e-19, 4.62593e-19]) *)
Notation p64 := (NZR r20). (* NZR(120) *)
Definition i41 := makepairF f9 f25.
Notation p65 := (ABS r20 i41). (* ABS(120, [1, 128]) *)
Lemma t32 : p65 -> p64.
 intros h0.
 refine (nzr_of_abs r20 i41 h0 _) ; finalize.
Qed.
Lemma l57 : s1 -> p64 (* NZR(120) *).
 intros h0.
 assert (h1 := l55 h0).
 apply t32. refine (abs_subset r20 i39 i41 h1 _) ; finalize.
Qed.
Notation r53 := ((r43 / r20)%R).
Notation p66 := (BND r53 i40). (* BND((float<53,-1074,ne>(x * x) - x * x) / 120, [-8.67362e-19, 4.62593e-19]) *)
Notation p67 := (BND r43 i4). (* BND(float<53,-1074,ne>(x * x) - x * x, [-5.55112e-17, 5.55112e-17]) *)
Notation p68 := (ABS r12 i17). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t33 : p30 -> p30 -> p68.
 intros h0 h1.
 refine (mul_aa _x _x i21 i21 i17 h0 h1 _) ; finalize.
Qed.
Lemma l60 : s1 -> p68 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t33. refine (abs_subset _x i1 i21 h1 _) ; finalize. refine (abs_subset _x i1 i21 h1 _) ; finalize.
Qed.
Lemma t34 : p68 -> p67.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i17 i4 h0 _) ; finalize.
Qed.
Lemma l59 : s1 -> p67 (* BND(float<53,-1074,ne>(x * x) - x * x, [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l60 h0).
 apply t34. exact h1.
Qed.
Definition i42 := makepairF f23 f25.
Notation p69 := (BND r20 i42). (* BND(120, [120, 128]) *)
Lemma t35 : p67 -> p69 -> p66.
 intros h0 h1.
 refine (div_op r43 r20 i4 i42 i40 h0 h1 _) ; finalize.
Qed.
Lemma l58 : s1 -> p66 (* BND((float<53,-1074,ne>(x * x) - x * x) / 120, [-8.67362e-19, 4.62593e-19]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l26 h0).
 apply t35. exact h1. refine (subset r20 i16 i42 h2 _) ; finalize.
Qed.
Lemma t36 : p64 -> p66 -> p63.
 intros h0 h1.
 refine (div_firs _ r20 _ i40 h0 h1) ; finalize.
Qed.
Lemma l56 : s1 -> p63 (* BND(float<53,-1074,ne>(x * x) / 120 - x * x / 120, [-8.67362e-19, 4.62593e-19]) *).
 intros h0.
 assert (h1 := l57 h0).
 assert (h2 := l58 h0).
 apply t36. exact h1. exact h2.
Qed.
Lemma t37 : p59 -> p63 -> p58.
 intros h0 h1.
 refine (add r51 r52 i37 i40 i36 h0 h1 _) ; finalize.
Qed.
Lemma l52 : s1 -> p58 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - float<53,-1074,ne>(x * x) / 120 + (float<53,-1074,ne>(x * x) / 120 - x * x / 120), [-1.30104e-18, 8.96274e-19]) *).
 intros h0.
 assert (h1 := l53 h0).
 assert (h2 := l56 h0).
 apply t37. exact h1. exact h2.
Qed.
Lemma t38 : p58 -> p57.
 intros h0.
 refine (sub_xals _ _ _ i36 h0) ; finalize.
Qed.
Lemma l51 : s1 -> p57 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - x * x / 120, [-1.30104e-18, 8.96274e-19]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t38. exact h1.
Qed.
Lemma t39 : p56 -> p57 -> p55.
 intros h0 h1.
 refine (sub r48 r49 i35 i36 i34 h0 h1 _) ; finalize.
Qed.
Lemma l49 : s1 -> p55 (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - x * x / 120), [-1.02204e-17, -7.80626e-18]) *).
 intros h0.
 assert (h1 := l50 h0).
 assert (h2 := l51 h0).
 apply t39. exact h1. exact h2.
Qed.
Lemma t40 : p55 -> p54.
 intros h0.
 refine (sub_mibs _ _ _ _ i34 h0) ; finalize.
Qed.
Lemma l48 : s1 -> p54 (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [-1.02204e-17, -7.80626e-18]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t40. exact h1.
Qed.
Lemma t41 : p51 -> p54 -> p50.
 intros h0 h1.
 refine (add r45 r46 i32 i34 i31 h0 h1 _) ; finalize.
Qed.
Lemma l45 : s1 -> p50 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) + (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-2.40982e-17, 6.07153e-18]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l48 h0).
 apply t41. exact h1. exact h2.
Qed.
Lemma t42 : p50 -> p49.
 intros h0.
 refine (sub_xals _ _ _ i31 h0) ; finalize.
Qed.
Lemma l44 : s1 -> p49 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-2.40982e-17, 6.07153e-18]) *).
 intros h0.
 assert (h1 := l45 h0).
 apply t42. exact h1.
Qed.
Lemma t43 : p15 -> p49 -> p48.
 intros h0 h1.
 refine (mul_po r11 r41 i9 i31 i30 h0 h1 _) ; finalize.
Qed.
Lemma l43 : s1 -> p48 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.35552e-17, 3.46945e-18]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l44 h0).
 apply t43. exact h1. exact h2.
Qed.
Definition f57 := Float2 (-48038396025285257) (-112).
Definition f58 := Float2 (3) (-58).
Definition i43 := makepairF f57 f58.
Notation p70 := (BND r42 i43). (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-9.25186e-18, 1.04083e-17]) *)
Definition f59 := Float2 (48038396025285257) (-58).
Definition i44 := makepairF f14 f59.
Notation p71 := (BND r24 i44). (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *)
Definition f60 := Float2 (17) (-57).
Definition i45 := makepairF f60 f22.
Notation p72 := (BND r25 i45). (* BND(x * x / 120, [1.17961e-16, 0.03125]) *)
Notation p73 := (BND r12 i17). (* BND(x * x, [1.42109e-14, 1]) *)
Definition i46 := makepairF f24 f23.
Notation p74 := (BND r20 i46). (* BND(120, [32, 120]) *)
Lemma t44 : p73 -> p74 -> p72.
 intros h0 h1.
 refine (div_pp r12 r20 i17 i46 i45 h0 h1 _) ; finalize.
Qed.
Lemma l63 : s1 -> p72 (* BND(x * x / 120, [1.17961e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l26 h0).
 apply t44. refine (subset r12 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i46 h2 _) ; finalize.
Qed.
Definition i47 := makepairF f26 f20.
Notation p75 := (BND r16 i47). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t45 : p75 -> p72 -> p71.
 intros h0 h1.
 refine (sub r16 r25 i47 i45 i44 h0 h1 _) ; finalize.
Qed.
Lemma l62 : s1 -> p71 (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l63 h0).
 apply t45. refine (subset r16 i12 i47 h1 _) ; finalize. exact h2.
Qed.
Lemma t46 : p67 -> p71 -> p70.
 intros h0 h1.
 refine (mul_op r43 r24 i4 i44 i43 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p70 (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-9.25186e-18, 1.04083e-17]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l62 h0).
 apply t46. exact h1. exact h2.
Qed.
Lemma t47 : p48 -> p70 -> p47.
 intros h0 h1.
 refine (add r40 r42 i30 i43 i29 h0 h1 _) ; finalize.
Qed.
Lemma l42 : s1 -> p47 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-2.28071e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l43 h0).
 assert (h2 := l61 h0).
 apply t47. exact h1. exact h2.
Qed.
Lemma t48 : p47 -> p46.
 intros h0.
 refine (mul_mars _ _ _ _ i29 h0) ; finalize.
Qed.
Lemma l41 : s1 -> p46 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-2.28071e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t48. exact h1.
Qed.
Lemma t49 : p41 -> p46 -> p40.
 intros h0 h1.
 refine (add r37 r38 i26 i29 i25 h0 h1 _) ; finalize.
Qed.
Lemma l36 : s1 -> p40 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-2.9746e-17, 2.77556e-17]) *).
 intros h0.
 assert (h1 := l37 h0).
 assert (h2 := l41 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p40 -> p39.
 intros h0.
 refine (sub_xals _ _ _ i25 h0) ; finalize.
Qed.
Lemma l35 : s1 -> p39 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-2.9746e-17, 2.77556e-17]) *).
 intros h0.
 assert (h1 := l36 h0).
 apply t50. exact h1.
Qed.
Lemma t51 : p39 -> p38.
 intros h0.
 refine (neg r35 i25 i24 h0 _) ; finalize.
Qed.
Lemma l34 : s1 -> p38 (* BND(-(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-2.77556e-17, 2.9746e-17]) *).
 intros h0.
 assert (h1 := l35 h0).
 apply t51. exact h1.
Qed.
Lemma t52 : p38 -> p37.
 intros h0.
 refine (sub_fils _ _ _ i24 h0) ; finalize.
Qed.
Lemma l33 : s1 -> p37 (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-2.77556e-17, 2.9746e-17]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t52. exact h1.
Qed.
Lemma t53 : p35 -> p37 -> p34.
 intros h0 h1.
 refine (add r32 r33 i4 i24 i23 h0 h1 _) ; finalize.
Qed.
Lemma l30 : s1 -> p34 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) + (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-8.32667e-17, 8.52571e-17]) *).
 intros h0.
 assert (h1 := l31 h0).
 assert (h2 := l33 h0).
 apply t53. exact h1. exact h2.
Qed.
Lemma t54 : p34 -> p33.
 intros h0.
 refine (sub_xals _ _ _ i23 h0) ; finalize.
Qed.
Lemma l29 : s1 -> p33 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-8.32667e-17, 8.52571e-17]) *).
 intros h0.
 assert (h1 := l30 h0).
 apply t54. exact h1.
Qed.
Lemma t55 : p1 -> p33 -> p32.
 intros h0 h1.
 refine (mul_po _x r30 i1 i23 i22 h0 h1 _) ; finalize.
Qed.
Lemma l28 : s1 -> p32 (* BND(x * (float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-6.245e-17, 6.39429e-17]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l29 h0).
 apply t55. exact h1. exact h2.
Qed.
Lemma t56 : p32 -> p31.
 intros h0.
 refine (mul_fils _ _ _ i22 h0) ; finalize.
Qed.
Lemma l27 : s1 -> p31 (* BND(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - Mts, [-6.245e-17, 6.39429e-17]) *).
 intros h0.
 assert (h1 := l28 h0).
 apply t56. exact h1.
Qed.
Lemma t57 : p6 -> p31 -> p5.
 intros h0 h1.
 refine (add r27 r28 i4 i22 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) + (x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - Mts), [-1.17961e-16, 1.19454e-16]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l27 h0).
 apply t57. exact h1. exact h2.
Qed.
Lemma t58 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-1.17961e-16, 1.19454e-16]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t58. exact h1.
Qed.
Lemma t59 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 1.19454e-16]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t59. exact h1.
Qed.
Lemma t60 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 1.19454e-16]) *).
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
Notation r11 := ((rounding_float rndNE (53)%positive (-1074)%Z) r12).
Notation r17 := (Float1 (6)).
Notation r16 := ((r8 / r17)%R).
Notation r15 := ((rounding_float rndNE (53)%positive (-1074)%Z) r16).
Notation r20 := (Float1 (120)).
Notation r19 := ((r11 / r20)%R).
Notation r18 := ((rounding_float rndNE (53)%positive (-1074)%Z) r19).
Notation r14 := ((r15 - r18)%R).
Notation r13 := ((rounding_float rndNE (53)%positive (-1074)%Z) r14).
Notation r10 := ((r11 * r13)%R).
Notation r9 := ((rounding_float rndNE (53)%positive (-1074)%Z) r10).
Notation r7 := ((r8 - r9)%R).
Notation r6 := ((rounding_float rndNE (53)%positive (-1074)%Z) r7).
Notation r5 := ((_x * r6)%R).
Notation _ts := ((rounding_float rndNE (53)%positive (-1074)%Z) r5).
Notation r25 := ((r12 / r20)%R).
Notation r24 := ((r16 - r25)%R).
Notation r23 := ((r12 * r24)%R).
Notation r22 := ((r8 - r23)%R).
Notation _Mts := ((_x * r22)%R).
Notation r3 := ((_ts - _Mts)%R).
Notation r2 := ((Rabs r3)%R).
Definition f3 := Float2 (0) (0).
Definition f4 := Float2 (620240666493557121) (-112).
Definition i2 := makepairF f3 f4.
Notation p2 := (BND r2 i2). (* BND(|ts - Mts|, [0, 1.19454e-16]) *)
Definition s2 := (not p2).
Definition s1 := (p1 /\ s2).
Lemma l2 : s1 -> s2.
 intros h0.
 assert (h1 := h0).
 exact (proj2 h1).
Qed.
Notation p3 := (ABS r3 i2). (* ABS(ts - Mts, [0, 1.19454e-16]) *)
Definition f5 := Float2 (-17) (-57).
Definition i3 := makepairF f5 f4.
Notation p4 := (BND r3 i3). (* BND(ts - Mts, [-1.17961e-16, 1.19454e-16]) *)
Notation r27 := ((_ts - r5)%R).
Notation r28 := ((r5 - _Mts)%R).
Notation r26 := ((r27 + r28)%R).
Notation p5 := (BND r26 i3). (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) + (x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - Mts), [-1.17961e-16, 1.19454e-16]) *)
Definition f6 := Float2 (-1) (-54).
Definition f7 := Float2 (1) (-54).
Definition i4 := makepairF f6 f7.
Notation p6 := (BND r27 i4). (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [-5.55112e-17, 5.55112e-17]) *)
Definition f8 := Float2 (1) (-24).
Definition f9 := Float2 (1) (0).
Definition i5 := makepairF f8 f9.
Notation p7 := (ABS r5 i5). (* ABS(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [5.96046e-08, 1]) *)
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
Notation p9 := (ABS r6 i6). (* ABS(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p10 := (BND r6 i6). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [0.5, 1]) *)
Notation p11 := (BND r7 i6). (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [0.5, 1]) *)
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
Notation p13 := (BND r9 i8). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *)
Notation p14 := (BND r10 i8). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *)
Definition f12 := Float2 (1) (-46).
Definition f13 := Float2 (9) (-4).
Definition i9 := makepairF f12 f13.
Notation p15 := (BND r11 i9). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.5625]) *)
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
Lemma l17 : s1 -> p15 (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.5625]) *).
 intros h0.
 assert (h1 := l18 h0).
 apply t4. exact h1.
Qed.
Definition f14 := Float2 (1) (-3).
Definition f15 := Float2 (1501199875790165) (-53).
Definition i10 := makepairF f14 f15.
Notation p17 := (BND r13 i10). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.166667]) *)
Notation p18 := (BND r14 i10). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.166667]) *)
Definition f16 := Float2 (6004799503160661) (-55).
Definition i11 := makepairF f16 f16.
Notation p19 := (BND r15 i11). (* BND(float<53,-1074,ne>(1 / 6), [0.166667, 0.166667]) *)
Definition f17 := Float2 (384307168202282325) (-61).
Definition f18 := Float2 (768614336404564651) (-62).
Definition i12 := makepairF f17 f18.
Notation p20 := (BND r16 i12). (* BND(1 / 6, [0.166667, 0.166667]) *)
Definition f19 := Float2 (3) (1).
Definition i13 := makepairF f19 f19.
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
Definition f20 := Float2 (48038396025285291) (-58).
Definition i14 := makepairF f16 f20.
Notation p22 := (BND r16 i14). (* BND(1 / 6, [0.166667, 0.166667]) *)
Lemma t7 : p22 -> p19.
 intros h0.
 refine (float_round_ne _ _ r16 i14 i11 h0 _) ; finalize.
Qed.
Lemma l21 : s1 -> p19 (* BND(float<53,-1074,ne>(1 / 6), [0.166667, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 apply t7. refine (subset r16 i12 i14 h1 _) ; finalize.
Qed.
Definition f21 := Float2 (1) (-53).
Definition f22 := Float2 (1) (-5).
Definition i15 := makepairF f21 f22.
Notation p23 := (BND r18 i15). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *)
Notation p24 := (BND r19 i15). (* BND(float<53,-1074,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *)
Definition f23 := Float2 (15) (3).
Definition i16 := makepairF f23 f23.
Notation p25 := (BND r20 i16). (* BND(120, [120, 120]) *)
Lemma t8 : p25.
 refine (constant1 _ i16 _) ; finalize.
Qed.
Lemma l26 : s1 -> p25 (* BND(120, [120, 120]) *).
 intros h0.
 apply t8.
Qed.
Definition i17 := makepairF f12 f9.
Notation p26 := (BND r11 i17). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 1]) *)
Definition f24 := Float2 (1) (5).
Definition f25 := Float2 (1) (7).
Definition i18 := makepairF f24 f25.
Notation p27 := (BND r20 i18). (* BND(120, [32, 128]) *)
Lemma t9 : p26 -> p27 -> p24.
 intros h0 h1.
 refine (div_pp r11 r20 i17 i18 i15 h0 h1 _) ; finalize.
Qed.
Lemma l25 : s1 -> p24 (* BND(float<53,-1074,ne>(x * x) / 120, [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l26 h0).
 apply t9. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i18 h2 _) ; finalize.
Qed.
Lemma t10 : p24 -> p23.
 intros h0.
 refine (float_round_ne _ _ r19 i15 i15 h0 _) ; finalize.
Qed.
Lemma l24 : s1 -> p23 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [1.11022e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l25 h0).
 apply t10. exact h1.
Qed.
Definition f26 := Float2 (5) (-5).
Definition f27 := Float2 (750599937895083) (-52).
Definition i19 := makepairF f26 f27.
Notation p28 := (BND r15 i19). (* BND(float<53,-1074,ne>(1 / 6), [0.15625, 0.166667]) *)
Lemma t11 : p28 -> p23 -> p18.
 intros h0 h1.
 refine (sub r15 r18 i19 i15 i10 h0 h1 _) ; finalize.
Qed.
Lemma l20 : s1 -> p18 (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l24 h0).
 apply t11. refine (subset r15 i11 i19 h1 _) ; finalize. exact h2.
Qed.
Lemma t12 : p18 -> p17.
 intros h0.
 refine (float_round_ne _ _ r14 i10 i10 h0 _) ; finalize.
Qed.
Lemma l19 : s1 -> p17 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t12. exact h1.
Qed.
Definition i20 := makepairF f14 f10.
Notation p29 := (BND r13 i20). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.5]) *)
Lemma t13 : p26 -> p29 -> p14.
 intros h0 h1.
 refine (mul_pp r11 r13 i17 i20 i8 h0 h1 _) ; finalize.
Qed.
Lemma l16 : s1 -> p14 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l19 h0).
 apply t13. refine (subset r11 i9 i17 h1 _) ; finalize. refine (subset r13 i10 i20 h2 _) ; finalize.
Qed.
Lemma t14 : p14 -> p13.
 intros h0.
 refine (float_round_ne _ _ r10 i8 i8 h0 _) ; finalize.
Qed.
Lemma l15 : s1 -> p13 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [1.77636e-15, 0.5]) *).
 intros h0.
 assert (h1 := l16 h0).
 apply t14. exact h1.
Qed.
Lemma t15 : p12 -> p13 -> p11.
 intros h0 h1.
 refine (sub r8 r9 i7 i8 i6 h0 h1 _) ; finalize.
Qed.
Lemma l13 : s1 -> p11 (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l14 h0).
 assert (h2 := l15 h0).
 apply t15. exact h1. exact h2.
Qed.
Lemma t16 : p11 -> p10.
 intros h0.
 refine (float_round_ne _ _ r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l12 : s1 -> p10 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t16. exact h1.
Qed.
Lemma t17 : p10 -> p9.
 intros h0.
 refine (abs_of_bnd_p r6 i6 i6 h0 _) ; finalize.
Qed.
Lemma l11 : s1 -> p9 (* ABS(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l12 h0).
 apply t17. exact h1.
Qed.
Definition i21 := makepairF f1 f9.
Notation p30 := (ABS _x i21). (* ABS(x, [1.19209e-07, 1]) *)
Lemma t18 : p30 -> p9 -> p7.
 intros h0 h1.
 refine (mul_aa _x r6 i21 i6 i5 h0 h1 _) ; finalize.
Qed.
Lemma l8 : s1 -> p7 (* ABS(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [5.96046e-08, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 assert (h2 := l11 h0).
 apply t18. refine (abs_subset _x i1 i21 h1 _) ; finalize. exact h2.
Qed.
Lemma t19 : p7 -> p6.
 intros h0.
 refine (float_absolute_wide_ne _ _ r5 i5 i4 h0 _) ; finalize.
Qed.
Lemma l7 : s1 -> p6 (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l8 h0).
 apply t19. exact h1.
Qed.
Definition f28 := Float2 (-9) (-57).
Definition f29 := Float2 (332010290341845377) (-112).
Definition i22 := makepairF f28 f29.
Notation p31 := (BND r28 i22). (* BND(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - Mts, [-6.245e-17, 6.39429e-17]) *)
Notation r30 := ((r6 - r22)%R).
Notation r29 := ((_x * r30)%R).
Notation p32 := (BND r29 i22). (* BND(x * (float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-6.245e-17, 6.39429e-17]) *)
Definition f30 := Float2 (-3) (-55).
Definition f31 := Float2 (221340193561230251) (-111).
Definition i23 := makepairF f30 f31.
Notation p33 := (BND r30 i23). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-8.32667e-17, 8.52571e-17]) *)
Notation r32 := ((r6 - r7)%R).
Notation r33 := ((r7 - r22)%R).
Notation r31 := ((r32 + r33)%R).
Notation p34 := (BND r31 i23). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) + (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-8.32667e-17, 8.52571e-17]) *)
Notation p35 := (BND r32 i4). (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [-5.55112e-17, 5.55112e-17]) *)
Notation p36 := (ABS r7 i6). (* ABS(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [0.5, 1]) *)
Lemma t20 : p11 -> p36.
 intros h0.
 refine (abs_of_bnd_p r7 i6 i6 h0 _) ; finalize.
Qed.
Lemma l32 : s1 -> p36 (* ABS(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))), [0.5, 1]) *).
 intros h0.
 assert (h1 := l13 h0).
 apply t20. exact h1.
Qed.
Lemma t21 : p36 -> p35.
 intros h0.
 refine (float_absolute_wide_ne _ _ r7 i6 i4 h0 _) ; finalize.
Qed.
Lemma l31 : s1 -> p35 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))), [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l32 h0).
 apply t21. exact h1.
Qed.
Definition f32 := Float2 (-1) (-55).
Definition f33 := Float2 (77225005485374379) (-111).
Definition i24 := makepairF f32 f33.
Notation p37 := (BND r33 i24). (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-2.77556e-17, 2.9746e-17]) *)
Notation r35 := ((r9 - r23)%R).
Notation r34 := ((- r35)%R).
Notation p38 := (BND r34 i24). (* BND(-(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-2.77556e-17, 2.9746e-17]) *)
Definition f34 := Float2 (-77225005485374379) (-111).
Definition f35 := Float2 (1) (-55).
Definition i25 := makepairF f34 f35.
Notation p39 := (BND r35 i25). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-2.9746e-17, 2.77556e-17]) *)
Notation r37 := ((r9 - r10)%R).
Notation r38 := ((r10 - r23)%R).
Notation r36 := ((r37 + r38)%R).
Notation p40 := (BND r36 i25). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-2.9746e-17, 2.77556e-17]) *)
Definition f36 := Float2 (-1) (-57).
Definition f37 := Float2 (1) (-56).
Definition i26 := makepairF f36 f37.
Notation p41 := (BND r37 i26). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [-6.93889e-18, 1.38778e-17]) *)
Definition i27 := makepairF f11 f14.
Notation p42 := (ABS r10 i27). (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *)
Definition i28 := makepairF f12 f2.
Notation p43 := (ABS r11 i28). (* ABS(float<53,-1074,ne>(x * x), [1.42109e-14, 0.75]) *)
Notation p44 := (BND r11 i28). (* BND(float<53,-1074,ne>(x * x), [1.42109e-14, 0.75]) *)
Lemma t22 : p44 -> p43.
 intros h0.
 refine (abs_of_bnd_p r11 i28 i28 h0 _) ; finalize.
Qed.
Lemma l39 : s1 -> p43 (* ABS(float<53,-1074,ne>(x * x), [1.42109e-14, 0.75]) *).
 intros h0.
 assert (h1 := l17 h0).
 apply t22. refine (subset r11 i9 i28 h1 _) ; finalize.
Qed.
Notation p45 := (ABS r13 i10). (* ABS(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.166667]) *)
Lemma t23 : p17 -> p45.
 intros h0.
 refine (abs_of_bnd_p r13 i10 i10 h0 _) ; finalize.
Qed.
Lemma l40 : s1 -> p45 (* ABS(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l19 h0).
 apply t23. exact h1.
Qed.
Lemma t24 : p43 -> p45 -> p42.
 intros h0 h1.
 refine (mul_aa r11 r13 i28 i10 i27 h0 h1 _) ; finalize.
Qed.
Lemma l38 : s1 -> p42 (* ABS(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [1.77636e-15, 0.125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l40 h0).
 apply t24. exact h1. exact h2.
Qed.
Lemma t25 : p42 -> p41.
 intros h0.
 refine (float_absolute_wide_ne _ _ r10 i27 i26 h0 _) ; finalize.
Qed.
Lemma l37 : s1 -> p41 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [-6.93889e-18, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l38 h0).
 apply t25. exact h1.
Qed.
Definition f38 := Float2 (-59210606975892395) (-111).
Definition i29 := makepairF f38 f37.
Notation p46 := (BND r38 i29). (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-2.28071e-17, 1.38778e-17]) *)
Notation r41 := ((r13 - r24)%R).
Notation r40 := ((r11 * r41)%R).
Notation r43 := ((r11 - r12)%R).
Notation r42 := ((r43 * r24)%R).
Notation r39 := ((r40 + r42)%R).
Notation p47 := (BND r39 i29). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-2.28071e-17, 1.38778e-17]) *)
Definition f39 := Float2 (-70382817926499533) (-112).
Definition f40 := Float2 (1) (-58).
Definition i30 := makepairF f39 f40.
Notation p48 := (BND r40 i30). (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.35552e-17, 3.46945e-18]) *)
Definition f41 := Float2 (-500500038588441123) (-114).
Definition f42 := Float2 (7) (-60).
Definition i31 := makepairF f41 f42.
Notation p49 := (BND r41 i31). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-2.40982e-17, 6.07153e-18]) *)
Notation r45 := ((r13 - r14)%R).
Notation r46 := ((r14 - r24)%R).
Notation r44 := ((r45 + r46)%R).
Notation p50 := (BND r44 i31). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) + (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-2.40982e-17, 6.07153e-18]) *)
Definition f43 := Float2 (-1) (-56).
Definition i32 := makepairF f43 f37.
Notation p51 := (BND r45 i32). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [-1.38778e-17, 1.38778e-17]) *)
Definition f44 := Float2 (1) (-2).
Definition i33 := makepairF f14 f44.
Notation p52 := (ABS r14 i33). (* ABS(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.25]) *)
Notation p53 := (BND r14 i33). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.25]) *)
Lemma t26 : p53 -> p52.
 intros h0.
 refine (abs_of_bnd_p r14 i33 i33 h0 _) ; finalize.
Qed.
Lemma l47 : s1 -> p52 (* ABS(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120), [0.125, 0.25]) *).
 intros h0.
 assert (h1 := l20 h0).
 apply t26. refine (subset r14 i10 i33 h1 _) ; finalize.
Qed.
Lemma t27 : p52 -> p51.
 intros h0.
 refine (float_absolute_wide_ne _ _ r14 i33 i32 h0 _) ; finalize.
Qed.
Lemma l46 : s1 -> p51 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)), [-1.38778e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l47 h0).
 apply t27. exact h1.
Qed.
Definition f45 := Float2 (-212269662436729379) (-114).
Definition f46 := Float2 (-9) (-60).
Definition i34 := makepairF f45 f46.
Notation p54 := (BND r46 i34). (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [-1.02204e-17, -7.80626e-18]) *)
Notation r48 := ((r15 - r16)%R).
Notation r49 := ((r18 - r25)%R).
Notation r47 := ((r48 - r49)%R).
Notation p55 := (BND r47 i34). (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - x * x / 120), [-1.02204e-17, -7.80626e-18]) *)
Definition f47 := Float2 (-43) (-62).
Definition f48 := Float2 (-21) (-61).
Definition i35 := makepairF f47 f48.
Notation p56 := (BND r48 i35). (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6, [-9.32414e-18, -9.1073e-18]) *)
Lemma t28 : p19 -> p20 -> p56.
 intros h0 h1.
 refine (sub r15 r16 i11 i12 i35 h0 h1 _) ; finalize.
Qed.
Lemma l50 : s1 -> p56 (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6, [-9.32414e-18, -9.1073e-18]) *).
 intros h0.
 assert (h1 := l21 h0).
 assert (h2 := l22 h0).
 apply t28. exact h1. exact h2.
Qed.
Definition f49 := Float2 (-3) (-61).
Definition f50 := Float2 (18614878459798051) (-114).
Definition i36 := makepairF f49 f50.
Notation p57 := (BND r49 i36). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - x * x / 120, [-1.30104e-18, 8.96274e-19]) *)
Notation r51 := ((r18 - r19)%R).
Notation r52 := ((r19 - r25)%R).
Notation r50 := ((r51 + r52)%R).
Notation p58 := (BND r50 i36). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - float<53,-1074,ne>(x * x) / 120 + (float<53,-1074,ne>(x * x) / 120 - x * x / 120), [-1.30104e-18, 8.96274e-19]) *)
Definition f51 := Float2 (-1) (-61).
Definition f52 := Float2 (1) (-61).
Definition i37 := makepairF f51 f52.
Notation p59 := (BND r51 i37). (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - float<53,-1074,ne>(x * x) / 120, [-4.33681e-19, 4.33681e-19]) *)
Definition f53 := Float2 (1) (-7).
Definition i38 := makepairF f21 f53.
Notation p60 := (ABS r19 i38). (* ABS(float<53,-1074,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *)
Definition f54 := Float2 (3) (5).
Definition i39 := makepairF f54 f25.
Notation p61 := (ABS r20 i39). (* ABS(120, [96, 128]) *)
Notation p62 := (BND r20 i39). (* BND(120, [96, 128]) *)
Lemma t29 : p62 -> p61.
 intros h0.
 refine (abs_of_bnd_p r20 i39 i39 h0 _) ; finalize.
Qed.
Lemma l55 : s1 -> p61 (* ABS(120, [96, 128]) *).
 intros h0.
 assert (h1 := l26 h0).
 apply t29. refine (subset r20 i16 i39 h1 _) ; finalize.
Qed.
Lemma t30 : p43 -> p61 -> p60.
 intros h0 h1.
 refine (div_aa r11 r20 i28 i39 i38 h0 h1 _) ; finalize.
Qed.
Lemma l54 : s1 -> p60 (* ABS(float<53,-1074,ne>(x * x) / 120, [1.11022e-16, 0.0078125]) *).
 intros h0.
 assert (h1 := l39 h0).
 assert (h2 := l55 h0).
 apply t30. exact h1. exact h2.
Qed.
Lemma t31 : p60 -> p59.
 intros h0.
 refine (float_absolute_wide_ne _ _ r19 i38 i37 h0 _) ; finalize.
Qed.
Lemma l53 : s1 -> p59 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - float<53,-1074,ne>(x * x) / 120, [-4.33681e-19, 4.33681e-19]) *).
 intros h0.
 assert (h1 := l54 h0).
 apply t31. exact h1.
Qed.
Definition f55 := Float2 (-1) (-60).
Definition f56 := Float2 (9607679205057059) (-114).
Definition i40 := makepairF f55 f56.
Notation p63 := (BND r52 i40). (* BND(float<53,-1074,ne>(x * x) / 120 - x * x / 120, [-8.67362e-19, 4.62593e-19]) *)
Notation p64 := (NZR r20). (* NZR(120) *)
Definition i41 := makepairF f9 f25.
Notation p65 := (ABS r20 i41). (* ABS(120, [1, 128]) *)
Lemma t32 : p65 -> p64.
 intros h0.
 refine (nzr_of_abs r20 i41 h0 _) ; finalize.
Qed.
Lemma l57 : s1 -> p64 (* NZR(120) *).
 intros h0.
 assert (h1 := l55 h0).
 apply t32. refine (abs_subset r20 i39 i41 h1 _) ; finalize.
Qed.
Notation r53 := ((r43 / r20)%R).
Notation p66 := (BND r53 i40). (* BND((float<53,-1074,ne>(x * x) - x * x) / 120, [-8.67362e-19, 4.62593e-19]) *)
Notation p67 := (BND r43 i4). (* BND(float<53,-1074,ne>(x * x) - x * x, [-5.55112e-17, 5.55112e-17]) *)
Notation p68 := (ABS r12 i17). (* ABS(x * x, [1.42109e-14, 1]) *)
Lemma t33 : p30 -> p30 -> p68.
 intros h0 h1.
 refine (mul_aa _x _x i21 i21 i17 h0 h1 _) ; finalize.
Qed.
Lemma l60 : s1 -> p68 (* ABS(x * x, [1.42109e-14, 1]) *).
 intros h0.
 assert (h1 := l9 h0).
 apply t33. refine (abs_subset _x i1 i21 h1 _) ; finalize. refine (abs_subset _x i1 i21 h1 _) ; finalize.
Qed.
Lemma t34 : p68 -> p67.
 intros h0.
 refine (float_absolute_wide_ne _ _ r12 i17 i4 h0 _) ; finalize.
Qed.
Lemma l59 : s1 -> p67 (* BND(float<53,-1074,ne>(x * x) - x * x, [-5.55112e-17, 5.55112e-17]) *).
 intros h0.
 assert (h1 := l60 h0).
 apply t34. exact h1.
Qed.
Definition i42 := makepairF f23 f25.
Notation p69 := (BND r20 i42). (* BND(120, [120, 128]) *)
Lemma t35 : p67 -> p69 -> p66.
 intros h0 h1.
 refine (div_op r43 r20 i4 i42 i40 h0 h1 _) ; finalize.
Qed.
Lemma l58 : s1 -> p66 (* BND((float<53,-1074,ne>(x * x) - x * x) / 120, [-8.67362e-19, 4.62593e-19]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l26 h0).
 apply t35. exact h1. refine (subset r20 i16 i42 h2 _) ; finalize.
Qed.
Lemma t36 : p64 -> p66 -> p63.
 intros h0 h1.
 refine (div_firs _ r20 _ i40 h0 h1) ; finalize.
Qed.
Lemma l56 : s1 -> p63 (* BND(float<53,-1074,ne>(x * x) / 120 - x * x / 120, [-8.67362e-19, 4.62593e-19]) *).
 intros h0.
 assert (h1 := l57 h0).
 assert (h2 := l58 h0).
 apply t36. exact h1. exact h2.
Qed.
Lemma t37 : p59 -> p63 -> p58.
 intros h0 h1.
 refine (add r51 r52 i37 i40 i36 h0 h1 _) ; finalize.
Qed.
Lemma l52 : s1 -> p58 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - float<53,-1074,ne>(x * x) / 120 + (float<53,-1074,ne>(x * x) / 120 - x * x / 120), [-1.30104e-18, 8.96274e-19]) *).
 intros h0.
 assert (h1 := l53 h0).
 assert (h2 := l56 h0).
 apply t37. exact h1. exact h2.
Qed.
Lemma t38 : p58 -> p57.
 intros h0.
 refine (sub_xals _ _ _ i36 h0) ; finalize.
Qed.
Lemma l51 : s1 -> p57 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - x * x / 120, [-1.30104e-18, 8.96274e-19]) *).
 intros h0.
 assert (h1 := l52 h0).
 apply t38. exact h1.
Qed.
Lemma t39 : p56 -> p57 -> p55.
 intros h0 h1.
 refine (sub r48 r49 i35 i36 i34 h0 h1 _) ; finalize.
Qed.
Lemma l49 : s1 -> p55 (* BND(float<53,-1074,ne>(1 / 6) - 1 / 6 - (float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - x * x / 120), [-1.02204e-17, -7.80626e-18]) *).
 intros h0.
 assert (h1 := l50 h0).
 assert (h2 := l51 h0).
 apply t39. exact h1. exact h2.
Qed.
Lemma t40 : p55 -> p54.
 intros h0.
 refine (sub_mibs _ _ _ _ i34 h0) ; finalize.
Qed.
Lemma l48 : s1 -> p54 (* BND(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - (1 / 6 - x * x / 120), [-1.02204e-17, -7.80626e-18]) *).
 intros h0.
 assert (h1 := l49 h0).
 apply t40. exact h1.
Qed.
Lemma t41 : p51 -> p54 -> p50.
 intros h0 h1.
 refine (add r45 r46 i32 i34 i31 h0 h1 _) ; finalize.
Qed.
Lemma l45 : s1 -> p50 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) + (float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120) - (1 / 6 - x * x / 120)), [-2.40982e-17, 6.07153e-18]) *).
 intros h0.
 assert (h1 := l46 h0).
 assert (h2 := l48 h0).
 apply t41. exact h1. exact h2.
Qed.
Lemma t42 : p50 -> p49.
 intros h0.
 refine (sub_xals _ _ _ i31 h0) ; finalize.
Qed.
Lemma l44 : s1 -> p49 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120), [-2.40982e-17, 6.07153e-18]) *).
 intros h0.
 assert (h1 := l45 h0).
 apply t42. exact h1.
Qed.
Lemma t43 : p15 -> p49 -> p48.
 intros h0 h1.
 refine (mul_po r11 r41 i9 i31 i30 h0 h1 _) ; finalize.
Qed.
Lemma l43 : s1 -> p48 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)), [-1.35552e-17, 3.46945e-18]) *).
 intros h0.
 assert (h1 := l17 h0).
 assert (h2 := l44 h0).
 apply t43. exact h1. exact h2.
Qed.
Definition f57 := Float2 (-48038396025285257) (-112).
Definition f58 := Float2 (3) (-58).
Definition i43 := makepairF f57 f58.
Notation p70 := (BND r42 i43). (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-9.25186e-18, 1.04083e-17]) *)
Definition f59 := Float2 (48038396025285257) (-58).
Definition i44 := makepairF f14 f59.
Notation p71 := (BND r24 i44). (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *)
Definition f60 := Float2 (17) (-57).
Definition i45 := makepairF f60 f22.
Notation p72 := (BND r25 i45). (* BND(x * x / 120, [1.17961e-16, 0.03125]) *)
Notation p73 := (BND r12 i17). (* BND(x * x, [1.42109e-14, 1]) *)
Definition i46 := makepairF f24 f23.
Notation p74 := (BND r20 i46). (* BND(120, [32, 120]) *)
Lemma t44 : p73 -> p74 -> p72.
 intros h0 h1.
 refine (div_pp r12 r20 i17 i46 i45 h0 h1 _) ; finalize.
Qed.
Lemma l63 : s1 -> p72 (* BND(x * x / 120, [1.17961e-16, 0.03125]) *).
 intros h0.
 assert (h1 := l18 h0).
 assert (h2 := l26 h0).
 apply t44. refine (subset r12 i9 i17 h1 _) ; finalize. refine (subset r20 i16 i46 h2 _) ; finalize.
Qed.
Definition i47 := makepairF f26 f20.
Notation p75 := (BND r16 i47). (* BND(1 / 6, [0.15625, 0.166667]) *)
Lemma t45 : p75 -> p72 -> p71.
 intros h0 h1.
 refine (sub r16 r25 i47 i45 i44 h0 h1 _) ; finalize.
Qed.
Lemma l62 : s1 -> p71 (* BND(1 / 6 - x * x / 120, [0.125, 0.166667]) *).
 intros h0.
 assert (h1 := l22 h0).
 assert (h2 := l63 h0).
 apply t45. refine (subset r16 i12 i47 h1 _) ; finalize. exact h2.
Qed.
Lemma t46 : p67 -> p71 -> p70.
 intros h0 h1.
 refine (mul_op r43 r24 i4 i44 i43 h0 h1 _) ; finalize.
Qed.
Lemma l61 : s1 -> p70 (* BND((float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-9.25186e-18, 1.04083e-17]) *).
 intros h0.
 assert (h1 := l59 h0).
 assert (h2 := l62 h0).
 apply t46. exact h1. exact h2.
Qed.
Lemma t47 : p48 -> p70 -> p47.
 intros h0 h1.
 refine (add r40 r42 i30 i43 i29 h0 h1 _) ; finalize.
Qed.
Lemma l42 : s1 -> p47 (* BND(float<53,-1074,ne>(x * x) * (float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - (1 / 6 - x * x / 120)) + (float<53,-1074,ne>(x * x) - x * x) * (1 / 6 - x * x / 120), [-2.28071e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l43 h0).
 assert (h2 := l61 h0).
 apply t47. exact h1. exact h2.
Qed.
Lemma t48 : p47 -> p46.
 intros h0.
 refine (mul_mars _ _ _ _ i29 h0) ; finalize.
Qed.
Lemma l41 : s1 -> p46 (* BND(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120), [-2.28071e-17, 1.38778e-17]) *).
 intros h0.
 assert (h1 := l42 h0).
 apply t48. exact h1.
Qed.
Lemma t49 : p41 -> p46 -> p40.
 intros h0 h1.
 refine (add r37 r38 i26 i29 i25 h0 h1 _) ; finalize.
Qed.
Lemma l36 : s1 -> p40 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) + (float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)) - x * x * (1 / 6 - x * x / 120)), [-2.9746e-17, 2.77556e-17]) *).
 intros h0.
 assert (h1 := l37 h0).
 assert (h2 := l41 h0).
 apply t49. exact h1. exact h2.
Qed.
Lemma t50 : p40 -> p39.
 intros h0.
 refine (sub_xals _ _ _ i25 h0) ; finalize.
Qed.
Lemma l35 : s1 -> p39 (* BND(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120), [-2.9746e-17, 2.77556e-17]) *).
 intros h0.
 assert (h1 := l36 h0).
 apply t50. exact h1.
Qed.
Lemma t51 : p39 -> p38.
 intros h0.
 refine (neg r35 i25 i24 h0 _) ; finalize.
Qed.
Lemma l34 : s1 -> p38 (* BND(-(float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - x * x * (1 / 6 - x * x / 120)), [-2.77556e-17, 2.9746e-17]) *).
 intros h0.
 assert (h1 := l35 h0).
 apply t51. exact h1.
Qed.
Lemma t52 : p38 -> p37.
 intros h0.
 refine (sub_fils _ _ _ i24 h0) ; finalize.
Qed.
Lemma l33 : s1 -> p37 (* BND(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120)), [-2.77556e-17, 2.9746e-17]) *).
 intros h0.
 assert (h1 := l34 h0).
 apply t52. exact h1.
Qed.
Lemma t53 : p35 -> p37 -> p34.
 intros h0 h1.
 refine (add r32 r33 i4 i24 i23 h0 h1 _) ; finalize.
Qed.
Lemma l30 : s1 -> p34 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) + (1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120))) - (1 - x * x * (1 / 6 - x * x / 120))), [-8.32667e-17, 8.52571e-17]) *).
 intros h0.
 assert (h1 := l31 h0).
 assert (h2 := l33 h0).
 apply t53. exact h1. exact h2.
Qed.
Lemma t54 : p34 -> p33.
 intros h0.
 refine (sub_xals _ _ _ i23 h0) ; finalize.
Qed.
Lemma l29 : s1 -> p33 (* BND(float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120)), [-8.32667e-17, 8.52571e-17]) *).
 intros h0.
 assert (h1 := l30 h0).
 apply t54. exact h1.
Qed.
Lemma t55 : p1 -> p33 -> p32.
 intros h0 h1.
 refine (mul_po _x r30 i1 i23 i22 h0 h1 _) ; finalize.
Qed.
Lemma l28 : s1 -> p32 (* BND(x * (float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - (1 - x * x * (1 / 6 - x * x / 120))), [-6.245e-17, 6.39429e-17]) *).
 intros h0.
 assert (h1 := l10 h0).
 assert (h2 := l29 h0).
 apply t55. exact h1. exact h2.
Qed.
Lemma t56 : p32 -> p31.
 intros h0.
 refine (mul_fils _ _ _ i22 h0) ; finalize.
Qed.
Lemma l27 : s1 -> p31 (* BND(x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - Mts, [-6.245e-17, 6.39429e-17]) *).
 intros h0.
 assert (h1 := l28 h0).
 apply t56. exact h1.
Qed.
Lemma t57 : p6 -> p31 -> p5.
 intros h0 h1.
 refine (add r27 r28 i4 i22 i3 h0 h1 _) ; finalize.
Qed.
Lemma l6 : s1 -> p5 (* BND(ts - x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) + (x * float<53,-1074,ne>(1 - float<53,-1074,ne>(float<53,-1074,ne>(x * x) * float<53,-1074,ne>(float<53,-1074,ne>(1 / 6) - float<53,-1074,ne>(float<53,-1074,ne>(x * x) / 120)))) - Mts), [-1.17961e-16, 1.19454e-16]) *).
 intros h0.
 assert (h1 := l7 h0).
 assert (h2 := l27 h0).
 apply t57. exact h1. exact h2.
Qed.
Lemma t58 : p5 -> p4.
 intros h0.
 refine (sub_xals _ _ _ i3 h0) ; finalize.
Qed.
Lemma l5 : s1 -> p4 (* BND(ts - Mts, [-1.17961e-16, 1.19454e-16]) *).
 intros h0.
 assert (h1 := l6 h0).
 apply t58. exact h1.
Qed.
Lemma t59 : p4 -> p3.
 intros h0.
 refine (abs_of_bnd_o r3 i3 i2 h0 _) ; finalize.
Qed.
Lemma l4 : s1 -> p3 (* ABS(ts - Mts, [0, 1.19454e-16]) *).
 intros h0.
 assert (h1 := l5 h0).
 apply t59. exact h1.
Qed.
Lemma t60 : p3 -> p2.
 intros h0.
 refine (uabs_of_abs r3 i2 h0) ; finalize.
Qed.
Lemma l3 : s1 -> p2 (* BND(|ts - Mts|, [0, 1.19454e-16]) *).
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
