import FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.BoundaryAdmissibleConditions
import FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.BoundaryGateClosure

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure BoundaryEvidence (A : AdmissibleClass) where
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

def ConstrainedBoundaryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boundary_closure_from_evidence (A : AdmissibleClass)
    (E : BoundaryEvidence A) : ConstrainedBoundaryClosure A := by
  exact And.intro E.bridgeClosed E.gateClosed

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse