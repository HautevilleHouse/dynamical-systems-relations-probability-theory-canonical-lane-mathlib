import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.StochasticCalculus

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure WeakConvergencePackage where
  sequenceDistributions : Type u
  limitDistribution : Type v
  tightnessCondition : Prop
  levyProkhorovMetric : Type w
  weakConvergenceEstablished : Prop

def WeakConvergenceClosed (W : WeakConvergencePackage) : Prop :=
  W.tightnessCondition ∧ W.weakConvergenceEstablished

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
