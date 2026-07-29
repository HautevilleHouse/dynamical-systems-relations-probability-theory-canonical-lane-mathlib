import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure StochasticProcessPackage where
  timeIndex : Type u
  stateSpace : Type v
  sampleSpace : Type w
  probabilityMeasure : Prop
  adapted : Prop
  cadlag : Prop
  initialCondition : Prop

structure StochasticProcessEvidence (P : StochasticProcessPackage) where
  probabilityMeasureClosed : P.probabilityMeasure
  adaptedClosed : P.adapted
  cadlagClosed : P.cadlag
  initialConditionClosed : P.initialCondition

def StochasticProcessClosed (P : StochasticProcessPackage) : Prop :=
  P.probabilityMeasure ∧ P.adapted ∧ P.cadlag ∧ P.initialCondition

theorem stochastic_process_closed_from_evidence (P : StochasticProcessPackage)
    (E : StochasticProcessEvidence P) : StochasticProcessClosed P := by
  exact And.intro E.probabilityMeasureClosed (And.intro E.adaptedClosed (And.intro E.cadlagClosed E.initialConditionClosed))

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse