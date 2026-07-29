import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure IndexTheory where
  manifold : Type u
  topology : TopologicalSpace manifold
  boundaryComponents : Nat
  index : ℤ
  indexComputed : Prop
  indexComputedTerm : indexComputed

def IndexTheoryClosed (I : IndexTheory) : Prop :=
  I.indexComputed

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse