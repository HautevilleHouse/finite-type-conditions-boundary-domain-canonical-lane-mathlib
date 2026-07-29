import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteTypeConditionsBoundaryDomainCanonicalLaneLean

structure SpectralSequenceBoundary where
  pages : ℕ → (ℕ → ℕ → Type)
  differentialsPage : (r : ℕ) → (p q : ℕ) → (pages r p q → pages r (p-r) (q+r-1))
  pageInfinityComputed : Prop
  abutmentIdentified : Prop

structure SpectralBoundaryEvidence (S : SpectralSequenceBoundary) where
  pageInfinityComputedClosed : S.pageInfinityComputed
  abutmentIdentifiedClosed : S.abutmentIdentified

def SpectralBoundaryClosed (S : SpectralSequenceBoundary) : Prop :=
  S.pageInfinityComputed ∧ S.abutmentIdentified

theorem spectral_boundary_closed_from_evidence (S : SpectralSequenceBoundary)
    (E : SpectralBoundaryEvidence S) : SpectralBoundaryClosed S := by
  exact And.intro E.pageInfinityComputedClosed E.abutmentIdentifiedClosed

end FiniteTypeConditionsBoundaryDomainCanonicalLaneLean
end HautevilleHouse
