Require Import Reals.
Require Import Interval.Interval_tactic.

From mathcomp Require Import all_ssreflect.
Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope R_scope.

Definition Eps := (1/2)^23.
Definition onePe := (1 + Eps).
Definition oneMe := (1 - Eps).

Lemma heron_preservation_TRM x y:
  let RU x := (x) * onePe in
  let RD x := (x) * oneMe in
  let y'R := RD(RD(y + RD(x/y))/2) in
  let y'E := (y + (x/y))/2 in
  (sqrt x - y'R) = (sqrt x - y'E) - (y'R - y'E) ->
  Rabs (sqrt x - y'E) - Rabs (y'R - y'E) <= Rabs (sqrt x - y'R).
Proof. 
  intros.
  rewrite H.
  apply Rabs_triang_inv.
Qed.

Lemma heron_preservation_R x y:
  let RU x := (x) * onePe in
  let RD x := (x) * oneMe in
  let y'R := RD(RD(y + RD(x/y))/2) in
  let y'E := (y + (x/y))/2 in
  0.5 <= x <= 2.0 ->
  0.7 <= y <= 1.8 ->
  0.7 <= y'R <= 1.8 ->
  0.7 <= y'E <= 1.8 ->
  Rabs (y'E - y'R) <= 6 * Eps.
Proof.
  intros.
Admitted.

Lemma heron_preservation_M x y (N : nat) (i : nat):
  let RU x := (x) * onePe in
  let RD x := (x) * oneMe in
  let y'R := RD(RD(y + RD(x/y))/2) in
  let y'E := (y + (x/y))/2 in
  0.5 <= x <= 2.0 ->
  0.7 <= y <= 1.8 ->
  0.7 <= y'R <= 1.8 ->
  0.7 <= y'E <= 1.8 ->
  ge N 1 -> le N 5 ->
  le i N ->
  Rabs(sqrt(x) - y) <= (((1/2)^2)^(i - 1)) + (6 * INR(i - 1) * Eps) ->
  Rabs(sqrt(x) - y'E) <= (((1/2)^2)^i) + (6 * INR(i - 1) * Eps).
Proof.
  intros.
Admitted.

Lemma heron_preservation_T x y (N : nat) (i : nat):
  let RU x := (x) * onePe in
  let RD x := (x) * oneMe in
  let y'R := RD(RD(y + RD(x/y))/2) in
  let y'E := (y + (x/y))/2 in
  0.5 <= x <= 2.0 ->
  0.7 <= y <= 1.8 ->
  0.7 <= y'R <= 1.8 ->
  0.7 <= y'E <= 1.8 ->
  ge N 1 -> le N 5 ->
  le i N ->
  Rabs(sqrt(x) - y) <= (((1/2)^2)^(i - 1)) + (6 * INR(i - 1) * Eps) ->
  Rabs(sqrt(x) - y'R) <= (((1/2)^2)^i) + (6 * INR(i) * Eps).
Proof.
  intros.
  destruct (heron_preservation_R H H0).
  apply H1. apply H2.
  destruct (heron_preservation_M H H0 H1 H2 H3 H4 H5).
  apply H6.
Admitted. 