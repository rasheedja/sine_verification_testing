Require Import Reals.
Require Import Interval.Interval_tactic.

Open Scope R_scope.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition heron_invariant x y := 
    Rabs (sqrt x - y) <= 1/10.

Lemma heron_init_model_error x :
  let y1 := (1 + x)/2 in
  1/2 <= x <= 2 -> 
  heron_invariant x y1.
Proof.
  intros.
  unfold heron_invariant, y1.
  (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
  interval with (i_bisect x).
Qed.
