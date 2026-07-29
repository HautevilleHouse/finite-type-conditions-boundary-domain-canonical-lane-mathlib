import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure FiniteTypeBoundaryCell where
  dimension : Nat
  boundaryFaces : List (Nat × FiniteTypeBoundaryCell)
  compactSupport : Prop
  combinatorialType : String

structure BoundaryFaceRelation where
  sourceDimension : Nat
  targetDimension : Nat
  faceMap : FiniteTypeBoundaryCell → FiniteTypeBoundaryCell
  incidenceMatrix : List (List Nat)

structure FiniteTypeBoundaryPackage where
  cells : List FiniteTypeBoundaryCell
  relations : List BoundaryFaceRelation
  boundaryMapsSquareToZero : Prop
  homologyGroupsComputed : Prop

structure FiniteTypeBoundaryEvidence (P : FiniteTypeBoundaryPackage) where
  boundaryMapsSquareToZeroClosed : P.boundaryMapsSquareToZero
  homologyGroupsComputedClosed : P.homologyGroupsComputed

def FiniteTypeBoundaryClosed (P : FiniteTypeBoundaryPackage) : Prop :=
  P.boundaryMapsSquareToZero ∧ P.homologyGroupsComputed

theorem finite_type_boundary_closed_from_evidence (P : FiniteTypeBoundaryPackage)
    (E : FiniteTypeBoundaryEvidence P) : FiniteTypeBoundaryClosed P := by
  exact And.intro E.boundaryMapsSquareToZeroClosed E.homologyGroupsComputedClosed

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse
