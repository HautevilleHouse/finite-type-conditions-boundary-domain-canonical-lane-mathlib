import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure SignatureTheorem where
  manifold : Type u
  topology : TopologicalSpace manifold
  boundaryComponents : Nat
  signature : Type v
  signatureInvariant : Prop
  signatureInvariantTerm : signatureInvariant

def SignatureTheoremClosed (S : SignatureTheorem) : Prop :=
  S.signatureInvariant

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse