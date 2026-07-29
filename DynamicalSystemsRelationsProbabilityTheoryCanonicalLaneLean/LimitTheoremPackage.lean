import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.MartingaleGateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure LimitTheoremPackage where
  convergenceInLp : Prop
  convergenceInDistribution : Prop
  ergodicTheorem : Prop
  centralLimitTheorem : Prop
  largeDeviations : Prop
  martingaleConvergenceTheorem : Prop

structure LimitTheoremEvidence (L : LimitTheoremPackage) where
  convergenceInLpClosed : L.convergenceInLp
  convergenceInDistributionClosed : L.convergenceInDistribution
  ergodicTheoremClosed : L.ergodicTheorem
  centralLimitTheoremClosed : L.centralLimitTheorem
  largeDeviationsClosed : L.largeDeviations
  martingaleConvergenceTheoremClosed : L.martingaleConvergenceTheorem

def LimitTheoremPackageClosed (L : LimitTheoremPackage) : Prop :=
  L.convergenceInLp ∧ L.convergenceInDistribution ∧
  L.ergodicTheorem ∧ L.centralLimitTheorem ∧
  L.largeDeviations ∧ L.martingaleConvergenceTheorem

theorem limit_theorem_package_closed_from_evidence
    (L : LimitTheoremPackage) (E : LimitTheoremEvidence L) :
    LimitTheoremPackageClosed L := by
  exact And.intro E.convergenceInLpClosed
    (And.intro E.convergenceInDistributionClosed
      (And.intro E.ergodicTheoremClosed
        (And.intro E.centralLimitTheoremClosed
          (And.intro E.largeDeviationsClosed
            E.martingaleConvergenceTheoremClosed))))

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
