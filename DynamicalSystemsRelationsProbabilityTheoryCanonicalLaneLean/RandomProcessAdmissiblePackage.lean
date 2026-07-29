import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.StochasticCalculusPackage

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure RandomProcessAdmissiblePackage {L : LimitTheoremPackage}
    (S : StochasticCalculusPackage L) where
  markovProcess : Prop
  stationaryDistribution : Prop
  mixingProperties : Prop
  ergodicity : Prop
  invariantMeasure : Prop

structure RandomProcessAdmissibleEvidence {L : LimitTheoremPackage}
    {S : StochasticCalculusPackage L} (R : RandomProcessAdmissiblePackage S) where
  markovProcessClosed : R.markovProcess
  stationaryDistributionClosed : R.stationaryDistribution
  mixingPropertiesClosed : R.mixingProperties
  ergodicityClosed : R.ergodicity
  invariantMeasureClosed : R.invariantMeasure

def RandomProcessAdmissibleClosed {L : LimitTheoremPackage}
    {S : StochasticCalculusPackage L} (R : RandomProcessAdmissiblePackage S) : Prop :=
  R.markovProcess ∧ R.stationaryDistribution ∧
  R.mixingProperties ∧ R.ergodicity ∧
  R.invariantMeasure

theorem random_process_admissible_closed_from_evidence
    {L : LimitTheoremPackage} {S : StochasticCalculusPackage L}
    (R : RandomProcessAdmissiblePackage S) (E : RandomProcessAdmissibleEvidence R) :
    RandomProcessAdmissibleClosed R := by
  exact And.intro E.markovProcessClosed
    (And.intro E.stationaryDistributionClosed
      (And.intro E.mixingPropertiesClosed
        (And.intro E.ergodicityClosed
          E.invariantMeasureClosed)))

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
