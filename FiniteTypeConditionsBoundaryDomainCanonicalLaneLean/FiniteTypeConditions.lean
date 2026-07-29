import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure FiniteTypeCondition where
  manifold : Type u
  topology : TopologicalSpace manifold
  boundaryComponents : Nat
  boundaryComponentsFinite : Finset (Type u) 
  boundaryEmbeddings : List (Σ (C : Type u), C → manifold)
  finitenessCondition : Prop
  finitenessConditionTerm : finitenessCondition

def FiniteTypeConditionsClosed (F : FiniteTypeCondition) : Prop :=
  F.finitenessCondition

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse