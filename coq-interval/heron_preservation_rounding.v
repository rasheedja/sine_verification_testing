Require Import Reals.
Require Import Interval.Interval_tactic.

Require Import Lra.

Open Scope R_scope.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition heron_invariant_rounding eps yR yE i := 
    Rabs(yR - yE) <= 6*i*eps.

  Lemma heron_init_rounding_error_up_2 x y :
    let eps := 1 / (2^23) in
    let onePe := 1 + eps in
    let oneMe := 1 - eps in
    let RU x := (x) * onePe in
    let RD x := (x) * oneMe in
    let yE := (y * y + x)/2 in
    let yR := RU(RU(y * y + RU(x))/2) in
    1/2 <= x <= 2 -> 7/10 <= y <= 18/10 ->
    Rabs(yR - yE) <= 1/10.
  Proof.
    intros.
    unfold yE, yR, RU, onePe, eps.
    interval_intro ((y * y + x * (1 + 1 / 2 ^ 23)) * (1 + 1 / 2 ^ 23) / 2 * (1 + 1 / 2 ^ 23) -
    (y * y + x) / 2) upper with 
      (
        i_bisect_diff y,
        i_depth 20
      ).
    (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
    (* interval with (i_bisect_diff y, i_depth 1000). *)
    Admitted.
  (* Qed. *)
  

    Lemma heron_init_rounding_error_up x y :
    let eps := 1 / (2^23) in
    let onePe := 1 + eps in
    let oneMe := 1 - eps in
    let RU x := (x) * onePe in
    let RD x := (x) * oneMe in
    let yE := (y + x/y)/2 in
    let yR := RU(RU(y + RU(x/y))/2) in
    1/2 <= x <= 2 -> 7/10 <= y <= 18/10 ->
    heron_invariant_rounding eps yR yE 1.
  Proof.
    intros.
    unfold heron_invariant_rounding, yE, yR, RU, onePe, eps.
    (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
    interval with (i_bisect_taylor x 7).
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
    1/2 <= x <= 2 -> 7/10 <= y <= 3/2
    heron_invariant_rounding eps yR yE 1.
  Proof.
    intros.
    unfold heron_invariant_rounding, yE, yR, RD, oneMe, eps.
    (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
    interval with (i_bisect_taylor x 1).
    Admitted.
  Qed.
  