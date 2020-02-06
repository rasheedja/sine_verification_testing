Require Import Reals.
Require Import Interval.Interval_tactic.

Open Scope R_scope.

Definition heron_invariant x y i ieps eps := 
  y - sqrt x <= 1/(2^(2^i)) + INR(ieps) * eps.

Lemma heron_preservation_model_error x y i :
  let eps := 1 / (2^23) in
  let y' := (y + x/y)/2 in
  1/2 <= x <= 2 -> 
  7/10 <= y <= 18/10 -> 
  (1 <= i < 5)%nat -> 
  heron_invariant x y i i eps ->
  heron_invariant x y' (i + 1) i eps.
Proof.
  intros.
  unfold heron_invariant, y'.
  interval with (i_bisect_taylor x 7, i_bisect_taylor y 7).
  Admitted. (* it seems that interval cannot prove it *)
Qed.
