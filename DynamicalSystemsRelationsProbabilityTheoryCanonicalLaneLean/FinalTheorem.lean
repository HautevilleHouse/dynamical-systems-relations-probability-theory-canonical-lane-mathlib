import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.DynamicalSystemPackage

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

def ConstrainedProbabilityClosure (A : StochasticProcessAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_probability_endgame (A : StochasticProcessAdmissibleClass) :
    ConstrainedProbabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
