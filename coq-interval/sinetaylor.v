Require Import Reals.
Require Import Interval.Interval_tactic.
From mathcomp Require Import all_ssreflect.

Open Scope R_scope.

(* Mini test *)
Lemma sine_test x:
  0 <= x <= 8/10 -> 
  sin x <= 8/10 .
Proof.
  intros.
  interval.
Qed.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition sineT7 x := 
    let x2 := x*x in 
    x * (1 - x2 * (1/6 - x2 *(1/120 - x2*(1/5040)))).

Lemma sineT7_model_error x :
  0 <= x <= 8/10 -> 
  Rabs (sin x - sineT7 x) <= 1/2000000 .
Proof.
  intros.
  unfold sineT7.
  (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
  interval with (i_bisect_taylor x 7).
Qed.

Definition sineT7fpDown eps x :=
    let onePe := 1 + eps in
    let oneMe := 1 - eps in
    let RU x := x * onePe in
    let RD x := x * oneMe in
    let x2U := RU (x*x) in 
    let x2D := RD (x*x) in 
    RD(x * RD(1 - RU(x2U * RU(RU(1/6) - RD(x2D * RD(RD(1/120) - RU(x2U*RU(1/5040)))))))).

Lemma sineT7_rounding_error x :
  0 <= x <= 8/10 -> 
  Rabs (sin x - sineT7fpDown ((1/2)^23) x) <= 1/1000000 .
Proof.
  intros.
  unfold sineT7fpDown.
  interval with (i_bisect_taylor x 7).
Qed.








