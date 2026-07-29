import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure MartingaleConvergencePackage where
  filtration : Type u
  adaptedProcess : Type v
  martingaleProperty : Prop
  almostSureConvergence : Prop
  martingalePropertyTerm : martingaleProperty
  almostSureConvergenceTerm : almostSureConvergence

structure MartingaleConvergenceEvidence (M : MartingaleConvergencePackage) where
  martingalePropertyClosed : M.martingaleProperty
  almostSureConvergenceClosed : M.almostSureConvergence

def MartingaleConvergenceClosed (M : MartingaleConvergencePackage) : Prop :=
  M.martingaleProperty ∧ M.almostSureConvergence

theorem martingale_convergence_closed_from_evidence (M : MartingaleConvergencePackage)
    (E : MartingaleConvergenceEvidence M) : MartingaleConvergenceClosed M := by
  exact And.intro E.martingalePropertyClosed E.almostSureConvergenceClosed

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
