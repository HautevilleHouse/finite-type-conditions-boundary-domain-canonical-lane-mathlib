import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure FiniteTypePackage where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  boundaryClass : Type v
  typeCondition : Type w
  finiteTypeCondition : Prop
  boundaryCovering : Prop
  localFiniteCondition : Prop

structure FiniteTypeEvidence (F : FiniteTypePackage) where
  finiteTypeConditionClosed : F.finiteTypeCondition
  boundaryCoveringClosed : F.boundaryCovering
  localFiniteConditionClosed : F.localFiniteCondition

def FiniteTypeClosed (F : FiniteTypePackage) : Prop :=
  F.finiteTypeCondition ∧ F.boundaryCovering ∧ F.localFiniteCondition

theorem finite_type_closed_from_evidence (F : FiniteTypePackage) (E : FiniteTypeEvidence F) :
    FiniteTypeClosed F := by
  exact And.intro E.finiteTypeConditionClosed
    (And.intro E.boundaryCoveringClosed E.localFiniteConditionClosed)

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse