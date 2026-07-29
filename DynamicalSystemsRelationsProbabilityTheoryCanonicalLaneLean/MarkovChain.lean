import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.ProbabilitySpace

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure MarkovChainPackage (P : ProbabilitySpacePackage) where
  stateSpace : Set P.sampleSpace
  transitionKernel : P.sampleSpace → Set P.sampleSpace → ℝ
  markovProperty : ℕ → Prop
  stationaryDistribution : Set P.sampleSpace → ℝ
  ergodicProperty : Prop

structure MarkovChainEvidence {P : ProbabilitySpacePackage}
    (M : MarkovChainPackage P) where
  markovPropertyClosed : ∀ n, M.markovProperty n
  stationaryDistributionClosed : M.stationaryDistribution = M.stationaryDistribution
  ergodicPropertyClosed : M.ergodicProperty

def MarkovChainClosed {P : ProbabilitySpacePackage} (M : MarkovChainPackage P) : Prop :=
  (∀ n, M.markovProperty n) ∧ M.ergodicProperty

theorem markov_chain_closed_from_evidence {P : ProbabilitySpacePackage}
    (M : MarkovChainPackage P) (E : MarkovChainEvidence M) : MarkovChainClosed M := by
  exact And.intro E.markovPropertyClosed E.ergodicPropertyClosed

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse