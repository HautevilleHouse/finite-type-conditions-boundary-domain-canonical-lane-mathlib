import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure BoundaryAnalyticCertificate (F : FiniteTypePackage) where
  boundaryClassification : Prop
  finiteTypeCheck : Prop
  coveringProperty : Prop
  boundaryClassificationClosed : boundaryClassification
  finiteTypeCheckClosed : finiteTypeCheck
  coveringPropertyClosed : coveringProperty
  boundaryEvidence : FiniteTypeEvidence F

def BoundaryAnalyticCertificateClosed {F : FiniteTypePackage} (C : BoundaryAnalyticCertificate F) : Prop :=
  C.boundaryClassification ∧ C.finiteTypeCheck ∧ C.coveringProperty ∧ FiniteTypeClosed F

theorem boundary_analytic_certificate_closed {F : FiniteTypePackage} (C : BoundaryAnalyticCertificate F) :
    BoundaryAnalyticCertificateClosed C := by
  exact And.intro C.boundaryClassificationClosed
    (And.intro C.finiteTypeCheckClosed
      (And.intro C.coveringPropertyClosed (finite_type_closed_from_evidence F C.boundaryEvidence)))

structure TypeConditionAnalyticCertificate (F : FiniteTypePackage) where
  typeConditionEstablished : Prop
  localFiniteness : Prop
  compactnessChecked : Prop
  typeConditionEstablishedClosed : typeConditionEstablished
  localFinitenessClosed : localFiniteness
  compactnessCheckedClosed : compactnessChecked
  typeConditionEvidence : FiniteTypeEvidence F

def TypeConditionAnalyticCertificateClosed {F : FiniteTypePackage} (C : TypeConditionAnalyticCertificate F) : Prop :=
  C.typeConditionEstablished ∧ C.localFiniteness ∧ C.compactnessChecked ∧ FiniteTypeClosed F

theorem type_condition_analytic_certificate_closed {F : FiniteTypePackage} (C : TypeConditionAnalyticCertificate F) :
    TypeConditionAnalyticCertificateClosed C := by
  exact And.intro C.typeConditionEstablishedClosed
    (And.intro C.localFinitenessClosed
      (And.intro C.compactnessCheckedClosed (finite_type_closed_from_evidence F C.typeConditionEvidence)))

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse