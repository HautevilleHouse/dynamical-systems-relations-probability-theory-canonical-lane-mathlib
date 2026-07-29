import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure RandomProcessPackage where
  stateSpace : Type u
  indexSet : Type v
  sampleContinuity : Prop
  markovProperty : Prop
  stationarity : Prop
  sampleContinuityTerm : sampleContinuity
  markovPropertyTerm : markovProperty
  stationarityTerm : stationarity

structure RandomProcessEvidence (R : RandomProcessPackage) where
  sampleContinuityClosed : R.sampleContinuity
  markovPropertyClosed : R.markovProperty
  stationarityClosed : R.stationarity

def RandomProcessClosed (R : RandomProcessPackage) : Prop :=
  R.sampleContinuity ∧ R.markovProperty ∧ R.stationarity

theorem random_process_closed_from_evidence (R : RandomProcessPackage)
    (E : RandomProcessEvidence R) : RandomProcessClosed R := by
  exact And.intro E.sampleContinuityClosed
    (And.intro E.markovPropertyClosed E.stationarityClosed)

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
