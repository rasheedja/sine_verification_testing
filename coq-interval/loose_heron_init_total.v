Require Import Reals.
Require Import Interval.Interval_tactic.

Open Scope R_scope.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition heron_invariant x y := 
    Rabs (sqrt x - y) <= 1/10.

Lemma heron_init_total_error_up x :
  let eps := 1 / (2^23) in
  let sn := 1 / (2^126) in
  let onePe := 1 + eps in
  let oneMe := 1 - eps in
  let RU x := (x + sn) * onePe in
  let RD x := (x - sn) * oneMe in
  let y1 := RU(RU(1 + x)/2) in
  1/2 <= x <= 2 -> 
  heron_invariant x y1.
Proof.
  intros.
  unfold heron_invariant, y1, RU, onePe, eps, sn, INR.
  (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
  interval with (i_bisect x).
Qed.

Lemma heron_init_total_error_dn x :
  let eps := 1 / (2^23) in
  let sn := 1 / (2^126) in
  let onePe := 1 + eps in
  let oneMe := 1 - eps in
  let RU x := (x + sn) * onePe in
  let RD x := (x - sn) * oneMe in
  let y1 := RD(RD(1 + x)/2) in
  1/2 <= x <= 2 -> 
  heron_invariant x y1.
Proof.
  intros.
  unfold heron_invariant, y1, RD, oneMe, eps, sn, INR.
  (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
  interval with (i_bisect x).
Qed.
