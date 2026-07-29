import FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.FiniteTypeBoundaryEvidence

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

def ConstrainedBoundaryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_endgame (A : AdmissibleClass) :
    ConstrainedBoundaryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse