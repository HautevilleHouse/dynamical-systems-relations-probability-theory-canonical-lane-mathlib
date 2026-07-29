import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure LimitTheoremPackage where
  lawOfLargeNumbers : Prop
  centralLimitTheorem : Prop
  largeDeviations : Prop
  lawOfLargeNumbersTerm : lawOfLargeNumbers
  centralLimitTheoremTerm : centralLimitTheorem
  largeDeviationsTerm : largeDeviations

structure LimitTheoremEvidence (L : LimitTheoremPackage) where
  lawOfLargeNumbersClosed : L.lawOfLargeNumbers
  centralLimitTheoremClosed : L.centralLimitTheorem
  largeDeviationsClosed : L.largeDeviations

def LimitTheoremClosed (L : LimitTheoremPackage) : Prop :=
  L.lawOfLargeNumbers ∧ L.centralLimitTheorem ∧ L.largeDeviations

theorem limit_theorem_closed_from_evidence (L : LimitTheoremPackage)
    (E : LimitTheoremEvidence L) : LimitTheoremClosed L := by
  exact And.intro E.lawOfLargeNumbersClosed
    (And.intro E.centralLimitTheoremClosed E.largeDeviationsClosed)

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
