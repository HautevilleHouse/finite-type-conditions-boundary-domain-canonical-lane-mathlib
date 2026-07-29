import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.BoundaryConditionStructure

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure EllipticRegularityPackage (B : BoundaryConditionPackage) where
  operatorElliptic : Prop
  interiorSchauderEstimate : Prop
  boundarySchauderEstimate : Prop
  regularityGain : Prop

def EllipticRegularityClosed {B : BoundaryConditionPackage} (E : EllipticRegularityPackage B) : Prop :=
  E.operatorElliptic ∧ E.interiorSchauderEstimate ∧ E.boundarySchauderEstimate ∧ E.regularityGain

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse