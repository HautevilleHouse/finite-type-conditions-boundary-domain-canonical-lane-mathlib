import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FiniteTypeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FiniteTypeAdmittedObject where
  space : FiniteTypeSpace
  finiteTypeProperty : Prop
  boundaryConditionHolds : Prop
  conclusion : boundaryConditionHolds

def FiniteTypeWitnessClosed (O : FiniteTypeAdmittedObject) : Prop :=
  O.boundaryConditionHolds

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse