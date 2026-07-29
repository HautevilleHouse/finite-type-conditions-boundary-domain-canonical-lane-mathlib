import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure DifferentialGradedAlgebra where
  chainGroups : Nat → Type
  differentials : (n : Nat) → (chainGroups n → chainGroups (n-1))
  differentialSquaredZero : (n : Nat) → (x : chainGroups n) → differentials n (differentials (n+1) x) = 0

structure DGBoundaryCondition where
  algebra : DifferentialGradedAlgebra
  filtrationBound : Nat
  dimensionBound : Nat
  boundaryOperatorClosed : Prop

structure DGBoundaryEvidence (B : DGBoundaryCondition) where
  boundaryOperatorClosedClosed : B.boundaryOperatorClosed

def DGBoundaryClosed (B : DGBoundaryCondition) : Prop :=
  B.boundaryOperatorClosed

theorem dg_boundary_closed_from_evidence (B : DGBoundaryCondition)
    (E : DGBoundaryEvidence B) : DGBoundaryClosed B := by
  exact E.boundaryOperatorClosedClosed

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse
