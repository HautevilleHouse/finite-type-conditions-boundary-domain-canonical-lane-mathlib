import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.FiniteTypeAdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

def gateClosed (A : FiniteTypeAdmissibleClass) : Prop :=
  A.boundarySatisfied

theorem gate_from_finite_type_admissible_class (A : FiniteTypeAdmissibleClass) :
    gateClosed A := by
  exact A.boundarySatisfiedTerm

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse