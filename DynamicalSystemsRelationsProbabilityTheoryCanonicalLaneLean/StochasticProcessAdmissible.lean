import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure StochasticProcessAdmissibleClass where
  processSpace : Type u
  measureSpace : Type v
  sigmaAlgebra : Prop
  filtration : Prop
  adapted : Prop
  samplePathRegularity : Prop

structure StochasticBridgeEvidence where
  limitExists : Prop
  convergenceInProbability : Prop
  almostSureConvergence : Prop
  distributionConvergence : Prop
  markovPropertyPreserved : Prop

structure MartingaleAdmissibleObject where
  space : StochasticProcessAdmissibleClass
  hasExpectation : Prop
  martingaleProperty : Prop
  convergenceResult : Prop

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
