import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FiniteTypeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse