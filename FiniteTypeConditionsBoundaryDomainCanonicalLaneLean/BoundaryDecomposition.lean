import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure BoundaryDecomposition where
  manifold : Type u
  topology : TopologicalSpace manifold
  boundaryComponents : Nat
  decomposition : List (Σ (C : Type u), C → manifold)
  decompositionConsistent : Prop
  decompositionConsistentTerm : decompositionConsistent

def BoundaryDecompositionClosed (B : BoundaryDecomposition) : Prop :=
  B.decompositionConsistent

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse