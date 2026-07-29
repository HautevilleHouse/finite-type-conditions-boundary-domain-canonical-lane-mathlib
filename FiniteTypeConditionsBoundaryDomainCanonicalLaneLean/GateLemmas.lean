import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse