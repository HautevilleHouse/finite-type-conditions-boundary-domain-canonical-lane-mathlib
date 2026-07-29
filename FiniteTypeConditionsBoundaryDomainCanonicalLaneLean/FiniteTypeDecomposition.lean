import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.BoundaryConditionRegularity

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure FiniteTypeDecompositionPackage {B : FiniteTypeBoundaryPackage}
    {R : BoundaryConditionRegularityPackage B} where
  decomposition : Prop
  decompositionClosed : decomposition

structure FiniteTypeDecompositionEvidence {B : FiniteTypeBoundaryPackage}
    {R : BoundaryConditionRegularityPackage B}
    (D : FiniteTypeDecompositionPackage B R) where
  decompositionClosed : D.decomposition

def FiniteTypeDecompositionClosed {B : FiniteTypeBoundaryPackage}
    {R : BoundaryConditionRegularityPackage B}
    (D : FiniteTypeDecompositionPackage B R) : Prop :=
  D.decomposition

theorem finite_type_decomposition_closed_from_evidence {B : FiniteTypeBoundaryPackage}
    {R : BoundaryConditionRegularityPackage B}
    (D : FiniteTypeDecompositionPackage B R)
    (E : FiniteTypeDecompositionEvidence D) : FiniteTypeDecompositionClosed D := by
  exact E.decompositionClosed

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse