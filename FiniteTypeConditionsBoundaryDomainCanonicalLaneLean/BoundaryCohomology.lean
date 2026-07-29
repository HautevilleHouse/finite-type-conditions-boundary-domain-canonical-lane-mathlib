import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure BoundaryCohomologyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  boundaryComponents : Nat
  cohomologyGroups : List (Type v)
  boundaryMaps : List (Type w → Type w)
  exactSequence : Prop
  exactSequenceTerm : exactSequence

def BoundaryCohomologyClosed (B : BoundaryCohomologyPackage) : Prop :=
  B.exactSequence

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse