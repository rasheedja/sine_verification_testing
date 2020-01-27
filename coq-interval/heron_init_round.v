Require Import Reals.
Require Import Interval.Interval_tactic.

Open Scope R_scope.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition heron_invariant_rounding eps yR yE i := 
    Rabs(yR - yE) <= 6*i*eps.

Lemma heron_init_rounding_error_up x :
  let eps := 1 / (2^23) in
  let onePe := 1 + eps in
  let oneMe := 1 - eps in
  let RU x := (x) * onePe in
  let RD x := (x) * oneMe in
  let y1E := (1 + x)/2 in
  let y1R := RU(RU(1 + x)/2) in
  1/2 <= x <= 2 -> 
  heron_invariant_rounding eps y1R y1E 1.
Proof.
  intros.
  unfold heron_invariant_rounding, y1E, y1R, RU, onePe, eps.
  (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
  interval with (i_bisect_taylor x 1).
Qed.

Lemma heron_init_rounding_error_dn x :
  let eps := 1 / (2^23) in
  let onePe := 1 + eps in
  let oneMe := 1 - eps in
  let RU x := (x) * onePe in
  let RD x := (x) * oneMe in
  let y1E := (1 + x)/2 in
  let y1R := RD(RD(1 + x)/2) in
  1/2 <= x <= 2 -> 
  heron_invariant_rounding eps y1R y1E 1.
Proof.
  intros.
  unfold heron_invariant_rounding, y1E, y1R, RD, oneMe, eps.
  (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
  interval with (i_bisect_taylor x 1).
Qed.
