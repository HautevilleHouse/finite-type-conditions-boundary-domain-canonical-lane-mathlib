import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.FiniteTypeAdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

def bridgeClosed (A : FiniteTypeAdmissibleClass) : Prop :=
  AdmissibleClass.bridgeClosed A.object

theorem bridge_from_finite_type_admissible_class (A : FiniteTypeAdmissibleClass) :
    bridgeClosed A := by
  exact AdmissibleClass.bridge_from_admissible_class A.object

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse