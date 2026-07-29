import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.LimitTheoremPackage

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure StochasticCalculusPackage (L : LimitTheoremPackage) where
  itoIntegral : Prop
  quadraticVariation : Prop
  itoFormula : Prop
  sdeExistence : Prop
  sdeUniqueness : Prop
  fellerProperty : Prop

structure StochasticCalculusEvidence {L : LimitTheoremPackage} (S : StochasticCalculusPackage L) where
  itoIntegralClosed : S.itoIntegral
  quadraticVariationClosed : S.quadraticVariation
  itoFormulaClosed : S.itoFormula
  sdeExistenceClosed : S.sdeExistence
  sdeUniquenessClosed : S.sdeUniqueness
  fellerPropertyClosed : S.fellerProperty

def StochasticCalculusClosed {L : LimitTheoremPackage} (S : StochasticCalculusPackage L) : Prop :=
  S.itoIntegral ∧ S.quadraticVariation ∧
  S.itoFormula ∧ S.sdeExistence ∧
  S.sdeUniqueness ∧ S.fellerProperty

theorem stochastic_calculus_closed_from_evidence
    {L : LimitTheoremPackage} (S : StochasticCalculusPackage L)
    (E : StochasticCalculusEvidence S) : StochasticCalculusClosed S := by
  exact And.intro E.itoIntegralClosed
    (And.intro E.quadraticVariationClosed
      (And.intro E.itoFormulaClosed
        (And.intro E.sdeExistenceClosed
          (And.intro E.sdeUniquenessClosed
            E.fellerPropertyClosed))))

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
