import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure DualityPairing where
  manifold : Type u
  topology : TopologicalSpace manifold
  boundaryComponents : Nat
  fundamentalClass : Type v
  capProduct : Type w
  poincareDuality : Prop
  poincareDualityTerm : poincareDuality

def DualityPairingClosed (D : DualityPairing) : Prop :=
  D.poincareDuality

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse