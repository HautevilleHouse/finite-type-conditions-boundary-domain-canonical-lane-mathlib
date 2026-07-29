import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure BoundaryTheoryAnalyticEvidence {F : FiniteTypePackage} (C : BoundaryAnalyticCertificate F) where
  boundaryClassification : C.boundaryClassification
  finiteTypeCheck : C.finiteTypeCheck
  coveringProperty : C.coveringProperty
  boundaryClosed : BoundaryClosed F

def BoundaryAnalyticCertificate.evidenceTerms {F : FiniteTypePackage} (C : BoundaryAnalyticCertificate F) :
    BoundaryTheoryAnalyticEvidence C := {
  boundaryClassification := C.boundaryClassificationClosed
  finiteTypeCheck := C.finiteTypeCheckClosed
  coveringProperty := C.coveringPropertyClosed
  boundaryClosed := boundary_closed_from_evidence F C.boundaryEvidence
}

structure TypeConditionAnalyticEvidence {F : FiniteTypePackage} (C : TypeConditionAnalyticCertificate F) where
  typeConditionEstablished : C.typeConditionEstablished
  localFiniteness : C.localFiniteness
  compactnessChecked : C.compactnessChecked
  typeConditionClosed : TypeConditionClosed F

def TypeConditionAnalyticCertificate.evidenceTerms {F : FiniteTypePackage} (C : TypeConditionAnalyticCertificate F) :
    TypeConditionAnalyticEvidence C := {
  typeConditionEstablished := C.typeConditionEstablishedClosed
  localFiniteness := C.localFinitenessClosed
  compactnessChecked := C.compactnessCheckedClosed
  typeConditionClosed := type_condition_closed_from_evidence F C.typeConditionEvidence
}

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse