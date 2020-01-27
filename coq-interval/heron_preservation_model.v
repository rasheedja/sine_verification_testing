Require Import Reals.
Require Import Interval.Interval_tactic.

Open Scope R_scope.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition heron_invariant x y i := 
  y - sqrt x <= 1/(2^(2^i)).

Lemma heron_preservation_model_error x y i :
  let y' := (y + x/y)/2 in
  1/2 <= x <= 2 -> 
  8/10 <= y <= 18/10 -> 
  sqrt x <= y ->
  (1 <= i < 5)%nat -> 
  heron_invariant x y 1 ->
  heron_invariant x y' 2.
Proof.
  intros.
  unfold heron_invariant, y'.
  interval with (i_bisect_taylor x 7, i_bisect_taylor y 7).
  Admitted. (* it seems that interval cannot prove it *)
Qed.
