import Mathlib

open Polynomial

/--
The logarithmic derivative of a complex polynomial (interpreted as a function from ℂ to ℂ)
is the sum of the inverses of its factors.
-/
lemma logDeriv_Polynomial (p : ℂ[X]) :
    logDeriv p.eval = fun z => ∑ r ∈ p.roots.toFinset, (z - r)⁻¹ := by
  sorry

/--
If z is a root of the derivative of a polynomial p, but not a root of p itself,
then the sum of the inverses of the differences between x and each root of p is zero.
-/
lemma sum_inv_sub_roots_eq_zero {p : ℂ[X]} {z : ℂ}
    (hz_mem_derivative : z ∈ p.derivative.roots) (hz_not_mem : z ∉ p.roots) :
    Multiset.sum (p.roots.map fun a => (z - a)⁻¹) = 0 := by
  sorry

/--
If z is a root of the derivative of a polynomial p, but not a root of p itself,
then it can be expressed as a weighted average of the roots of p.
-/
lemma deriv_root_as_weighted_average_of_roots {p : ℂ[X]} {z : ℂ}
    (hz_mem_derivative : z ∈ p.derivative.roots) (hz_not_mem : z ∉ p.roots) :
    z = Multiset.sum (p.roots.map fun a =>
          ((1 / ‖z - a‖^2) / Multiset.sum (p.roots.map fun a => 1 / ‖z - a‖^2)) • a) := by
  sorry
