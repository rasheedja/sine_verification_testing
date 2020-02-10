Require Import Reals.
Require Import Lra.
Require Import Interval.Interval_tactic.

From mathcomp Require Import all_ssreflect.
Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope R_scope.

Definition Eps := (1/2)^23.
Definition onePe := (1 + Eps).
Definition oneMe := (1 - Eps).
Definition RU x := (x) * onePe.
Definition RD x := (x) * oneMe.

Lemma heron_preservation_TRM x y:
  let y'R := RD(RD(y + RD(x/y))/2) in
  let y'E := (y + (x/y))/2 in
  Rabs (sqrt x - y'R) <= Rabs (sqrt x - y'E) + Rabs (y'E - y'R).
Proof. 
  intros.
  have->: (sqrt x - y'R) = (sqrt x - y'E) + (y'E - y'R)
    by lra.
  apply Rabs_triang.
Qed.

Lemma heron_preservation_R x y:
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

(* Without INR, this can be proved easily with lra *)
Lemma temp (i :nat): 
 (1 / 2 * (1 / 2 * 1)) ^ i + 6 * INR (i - 1) * Eps + 6 * Eps = 
 (1 / 2 * (1 / 2 * 1)) ^ i + 6 * INR i * Eps.
Proof.
Admitted.

Lemma heron_preservation_T x y (N : nat) (i : nat):
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
  have TRM //:= heron_preservation_TRM x y. fold y'R y'E in TRM. simpl in TRM.
  have R //:= heron_preservation_R H H0 H1 H2. fold y'R y'E in R.
  have M //:= (heron_preservation_M H H0 H1 H2 H3 H4 H5 H6). fold y'R y'E in M. simpl in M.
  have T: Rabs (sqrt x - y'E) + Rabs (y'E - y'R) <= (1 / 2 * (1 / 2 * 1)) ^ i + 6 * INR (i - 1) * Eps + 6 * Eps.
  by lra.
  simpl.
  apply (@Rle_trans (Rabs (sqrt x - y'R)) (Rabs (sqrt x - y'E) + Rabs (y'E - y'R)) ((1 / 2 * (1 / 2 * 1)) ^ i + 6 * INR i * Eps)).
  apply TRM.
  rewrite (temp i) in T.
  apply T.
Qed.
 