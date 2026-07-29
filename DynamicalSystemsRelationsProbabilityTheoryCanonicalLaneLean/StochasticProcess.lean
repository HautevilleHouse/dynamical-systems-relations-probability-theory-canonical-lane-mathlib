import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.ProbabilitySpace

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure StochasticProcessPackage (P : ProbabilitySpacePackage) where
  indexSet : Type u
  process : indexSet → (P.sampleSpace → ℝ)
  measurableFiniteDim : Prop
  continuousPaths : Prop
  cadlagProperty : Prop

structure StochasticProcessEvidence {P : ProbabilitySpacePackage}
    (S : StochasticProcessPackage P) where
  measurableFiniteDimClosed : S.measurableFiniteDim
  continuousPathsClosed : S.continuousPaths
  cadlagPropertyClosed : S.cadlagProperty

def StochasticProcessClosed {P : ProbabilitySpacePackage}
    (S : StochasticProcessPackage P) : Prop :=
  S.measurableFiniteDim ∧ S.continuousPaths ∧ S.cadlagProperty

theorem stochastic_process_closed_from_evidence {P : ProbabilitySpacePackage}
    (S : StochasticProcessPackage P) (E : StochasticProcessEvidence S) :
    StochasticProcessClosed S := by
  exact And.intro E.measurableFiniteDimClosed
    (And.intro E.continuousPathsClosed E.cadlagPropertyClosed)

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse