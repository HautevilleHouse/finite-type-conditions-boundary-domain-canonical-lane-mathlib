import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure BoundaryConditionPackage where
  domainType : Type u
  boundaryValue : Prop
  traceOperatorDefined : Prop
  sobolevCompatibility : Prop
  boundaryCondition : (domainType → ℝ) → Prop

def BoundaryConditionClosed (B : BoundaryConditionPackage) : Prop :=
  B.boundaryValue ∧ B.traceOperatorDefined ∧ B.sobolevCompatibility

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse