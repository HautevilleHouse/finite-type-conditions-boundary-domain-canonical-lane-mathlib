import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure FiniteTypeBoundaryDomain where
  carrier : Type u
  boundary : Set carrier
  finiteTypeCondition : Prop
  boundaryAdmissible : Prop
  closureCondition : Prop

structure BoundaryAdmittedObject where
  domain : FiniteTypeBoundaryDomain
  boundaryClassified : Prop
  remainderRecorded : Prop
  witness : boundaryClassified ∨ remainderRecorded

def AdmissibleClass' (A : BoundaryAdmittedObject) : AdmissibleClass := {
  object := (),
  endpointSatisfied := A.boundaryClassified,
  remainderRecorded := A.remainderRecorded,
  gateWitness := A.witness
}

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse