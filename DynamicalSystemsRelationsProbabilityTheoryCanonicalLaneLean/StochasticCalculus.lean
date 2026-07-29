import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure StochasticCalculusPackage where
  stochasticIntegral : Type u
  itoFormula : Prop
  quadraticVariation : Prop
  stochasticIntegralDefined : Prop
  itoFormulaTerm : itoFormula
  quadraticVariationTerm : quadraticVariation

structure StochasticCalculusEvidence (S : StochasticCalculusPackage) where
  stochasticIntegralDefinedClosed : S.stochasticIntegralDefined
  itoFormulaClosed : S.itoFormula
  quadraticVariationClosed : S.quadraticVariation

def StochasticCalculusClosed (S : StochasticCalculusPackage) : Prop :=
  S.stochasticIntegralDefined ∧ S.itoFormula ∧ S.quadraticVariation

theorem stochastic_calculus_closed_from_evidence (S : StochasticCalculusPackage)
    (E : StochasticCalculusEvidence S) : StochasticCalculusClosed S := by
  exact And.intro E.stochasticIntegralDefinedClosed
    (And.intro E.itoFormulaClosed E.quadraticVariationClosed)

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
