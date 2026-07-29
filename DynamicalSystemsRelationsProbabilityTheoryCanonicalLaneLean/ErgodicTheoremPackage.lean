import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.LimitTheorems

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure ErgodicTheoremPackage where
  invariantMeasureExists : Prop
  ergodicity : Prop
  pointwiseErgodicTheorem : Prop
  vonNeumannMeanErgodic : Prop
  mixingProperties : Prop

structure ErgodicTheoremEvidence (E : ErgodicTheoremPackage) where
  invariantMeasureExistsClosed : E.invariantMeasureExists
  ergodicityClosed : E.ergodicity
  pointwiseErgodicTheoremClosed : E.pointwiseErgodicTheorem
  vonNeumannMeanErgodicClosed : E.vonNeumannMeanErgodic
  mixingPropertiesClosed : E.mixingProperties

def ErgodicTheoremClosed (E : ErgodicTheoremPackage) : Prop :=
  E.invariantMeasureExists ∧ E.ergodicity ∧ E.pointwiseErgodicTheorem ∧
  E.vonNeumannMeanErgodic ∧ E.mixingProperties

theorem ergodic_theorem_closed_from_evidence (E : ErgodicTheoremPackage)
    (Ev : ErgodicTheoremEvidence E) : ErgodicTheoremClosed E := by
  exact And.intro Ev.invariantMeasureExistsClosed (And.intro Ev.ergodicityClosed
    (And.intro Ev.pointwiseErgodicTheoremClosed (And.intro Ev.vonNeumannMeanErgodicClosed Ev.mixingPropertiesClosed)))

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse