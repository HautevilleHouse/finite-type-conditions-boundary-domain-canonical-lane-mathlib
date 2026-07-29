import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure FiniteTypeBoundaryPackage where
  boundarySet : Type u
  boundaryConditions : Prop
  boundaryConditionsClosed : boundaryConditions

structure FiniteTypeBoundaryEvidence (B : FiniteTypeBoundaryPackage) where
  boundaryConditionsClosed : B.boundaryConditions

def FiniteTypeBoundaryClosed (B : FiniteTypeBoundaryPackage) : Prop :=
  B.boundaryConditions

theorem finite_type_boundary_closed_from_evidence (B : FiniteTypeBoundaryPackage)
    (E : FiniteTypeBoundaryEvidence B) : FiniteTypeBoundaryClosed B := by
  exact E.boundaryConditionsClosed

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse