import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.StochasticProcessBridge

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure MartingaleConvergencePackage {P : StochasticProcessPackage} where
  integrability : Prop
  martingaleProperty : Prop
  convergenceInLp : Prop
  almostSureConvergence : Prop

structure MartingaleConvergenceEvidence {P : StochasticProcessPackage}
    (M : MartingaleConvergencePackage P) where
  integrabilityClosed : M.integrability
  martingalePropertyClosed : M.martingaleProperty
  convergenceInLpClosed : M.convergenceInLp
  almostSureConvergenceClosed : M.almostSureConvergence

def MartingaleConvergenceClosed {P : StochasticProcessPackage}
    (M : MartingaleConvergencePackage P) : Prop :=
  M.integrability ∧ M.martingaleProperty ∧ M.convergenceInLp ∧ M.almostSureConvergence

theorem martingale_convergence_closed_from_evidence {P : StochasticProcessPackage}
    (M : MartingaleConvergencePackage P) (E : MartingaleConvergenceEvidence M) :
    MartingaleConvergenceClosed M := by
  exact And.intro E.integrabilityClosed (And.intro E.martingalePropertyClosed
    (And.intro E.convergenceInLpClosed E.almostSureConvergenceClosed))

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse