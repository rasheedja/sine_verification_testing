Require Import Reals.
Require Import Interval.Interval_tactic.
From mathcomp Require Import all_ssreflect.

Open Scope R_scope.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition sineT7 x := 
    let x2 := x*x in 
    x * (1 - x2 * (1/6 - x2 *(1/120 - x2*(1/5040)))).

Definition sineT7fpDown eps sN x :=
  let onePe := 1 + eps in
  let oneMe := 1 - eps in
  let RU x := (x + sN) * onePe in
  let RD x := (x - sN) * oneMe in
  let x2U := RU (x*x) in 
  let x2D := RD (x*x) in 
  RD(x *(1 - RU(x2U * RU(RU(1/6) - RD(x2D * RD(RD(1/120) - RU(x2U*RU(1/5040)))))))).

Definition sineT7fpUp eps sN x :=
  let onePe := 1 + eps in
  let oneMe := 1 - eps in
  let RU x := (x + sN) * onePe in
  let RD x := (x - sN) * oneMe in
  let x2U := RU (x*x) in 
  let x2D := RD (x*x) in 
  RU(x *(1 - RD(x2D * RD(RD(1/6) - RU(x2U * RU(RU(1/120) - RD(x2D*RD(1/5040)))))))).

Lemma sineT7_rounding_error_down x :
  0 <= x <= 75/100 -> 
  Rabs (sineT7 x - sineT7fpDown ((1/2)^23) ((1/2)^126) x) <= 1/10 .
Proof.
  intros.
  unfold sineT7.
  unfold sineT7fpDown.
  interval with (i_bisect_taylor x 7).
Qed.

Lemma sineT7_rounding_error_up x :
  0 <= x <= 75/100 -> 
  Rabs (sineT7 x - sineT7fpUp ((1/2)^23) ((1/2)^126) x) <= 1/10 .
Proof.
  intros.
  unfold sineT7.
  unfold sineT7fpUp.
  interval with (i_bisect_taylor x 7).
Qed.
