Require Import Reals.
Require Import Interval.Interval_tactic.
From mathcomp Require Import all_ssreflect.

Open Scope R_scope.

(* Taylor expansion of sine of degree 7 in Horner form *)
Definition sineT7 x := 
    let x2 := x*x in 
    x * (1 - x2 * (1/6 - x2 *(1/120 - x2*(1/5040)))).

Lemma sineT7_model_error x :
  0 <= x <= 75/100 -> 
  Rabs (sin x - sineT7 x) <= 1/10 .
Proof.
  intros.
  unfold sineT7.
  (* interval with (i_prec 1000, i_bisect_taylor x 7). *)
  interval with (i_bisect_taylor x 7).
Qed.
