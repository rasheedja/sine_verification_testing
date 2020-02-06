Require Import Reals.
Require Import Interval.Interval_tactic.

Open Scope R_scope.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition heron_invariant_rounding yR yE := 
    Rabs(yR - yE) <= 0.1.

    Lemma heron_init_rounding_error_up x y :
    let eps := 1 / (2^23) in
    let onePe := 1 + eps in
    let oneMe := 1 - eps in
    let RU x := (x) * onePe in
    let RD x := (x) * oneMe in
    let yE := (y + x/y)/2 in
    let yR := RU(RU(y + RU(x/y))/2) in
    1/2 <= x <= 2 -> 7/10 <= y <= 18/10 ->
    heron_invariant_rounding yR yE.
  Proof.
    intros.
    unfold heron_invariant_rounding, yE, yR, RU, onePe, eps.
    (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
    interval with (i_bisect_taylor x 1).
    Admitted.
  Qed.
  
  Lemma heron_init_rounding_error_dn x y :
    let eps := 1 / (2^23) in
    let onePe := 1 + eps in
    let oneMe := 1 - eps in
    let RU x := (x) * onePe in
    let RD x := (x) * oneMe in
    let yE := (y + x/y)/2 in
    let yR := RD(RD(y + RD(x/y))/2) in
    1/2 <= x <= 2 -> 7/10 <= y <= 18/10
    heron_invariant_rounding yR yE.
  Proof.
    intros.
    unfold heron_invariant_rounding, yE, yR, RD, oneMe, eps.
    (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
    interval with (i_bisect_taylor x 1).
    Admitted.
  Qed.
  