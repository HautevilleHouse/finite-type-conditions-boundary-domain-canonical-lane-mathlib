import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteTypeConditionsBoundaryDomainCanonicalLaneLean.FiniteTypeBoundary

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure FiniteTypeAdmissibleClass where
  object : AdmissibleClass
  boundarySatisfied : Prop
  boundarySatisfiedTerm : boundarySatisfied

def FiniteTypeAdmittedClosure (A : FiniteTypeAdmissibleClass) : Prop :=
  AdmissibleClass.admittedClosure A.object ∧ A.boundarySatisfied

theorem finite_type_admitted_closure_from_evidence (A : FiniteTypeAdmissibleClass)
    (E : A.boundarySatisfied) : FiniteTypeAdmittedClosure A := by
  exact And.intro (AdmissibleClass.admittedClosure A.object) E

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse