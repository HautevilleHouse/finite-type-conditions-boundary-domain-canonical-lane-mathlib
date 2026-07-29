import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.FiniteTypeBoundary

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure BoundaryConditionRegularityPackage {B : FiniteTypeBoundaryPackage} where
  regularityCondition : Prop
  regularityConditionClosed : regularityCondition

structure BoundaryConditionRegularityEvidence {B : FiniteTypeBoundaryPackage}
    (R : BoundaryConditionRegularityPackage B) where
  regularityConditionClosed : R.regularityCondition

def BoundaryConditionRegularityClosed {B : FiniteTypeBoundaryPackage}
    (R : BoundaryConditionRegularityPackage B) : Prop :=
  R.regularityCondition

theorem boundary_condition_regularity_closed_from_evidence {B : FiniteTypeBoundaryPackage}
    (R : BoundaryConditionRegularityPackage B)
    (E : BoundaryConditionRegularityEvidence R) : BoundaryConditionRegularityClosed R := by
  exact E.regularityConditionClosed

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse