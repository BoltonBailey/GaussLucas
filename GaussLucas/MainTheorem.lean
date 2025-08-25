import GaussLucas.BackgroundLemmas

open Polynomial

/--
The Gauss-Lucas theorem
states that the roots of the derivative of a non-constant polynomial
lie in the convex hull of the roots of the polynomial itself.
-/
theorem gauss_lucas (p : ℂ[X]) (z : ℂ) (z_mem_roots_p_derivative : z ∈ p.derivative.roots) :
    z ∈ convexHull ℝ (p.roots.toFinset : Set ℂ) := by
  sorry
