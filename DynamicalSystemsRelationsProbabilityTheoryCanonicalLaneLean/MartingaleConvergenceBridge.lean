import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.StochasticProcessAdmissible

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

def bridgeClosed (A : StochasticProcessAdmissibleClass) : Prop :=
  A.sigmaAlgebra ∧ A.filtration ∧ A.adapted

theorem bridge_from_admissible_class (A : StochasticProcessAdmissibleClass) :
    bridgeClosed A := by
  refine And.intro A.sigmaAlgebra (And.intro A.filtration A.adapted)

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
