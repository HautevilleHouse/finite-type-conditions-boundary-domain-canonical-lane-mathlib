import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

def ConstrainedFiniteTypeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_type_endgame (A : AdmissibleClass) :
    ConstrainedFiniteTypeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse