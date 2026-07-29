import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.MartingaleConvergenceBridge

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

def gateClosed (A : StochasticProcessAdmissibleClass) : Prop :=
  A.samplePathRegularity

theorem gate_from_admissible_class (A : StochasticProcessAdmissibleClass) :
    gateClosed A := by
  exact A.samplePathRegularity

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
