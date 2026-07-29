import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure ErgodicTheoryPackage where
  dynamicalSystem : Type u
  invariantMeasure : Type v
  ergodicTheorem : Prop
  mixingProperties : Prop
  ergodicTheoremTerm : ergodicTheorem
  mixingPropertiesTerm : mixingProperties

structure ErgodicTheoryEvidence (E : ErgodicTheoryPackage) where
  ergodicTheoremClosed : E.ergodicTheorem
  mixingPropertiesClosed : E.mixingProperties

def ErgodicTheoryClosed (E : ErgodicTheoryPackage) : Prop :=
  E.ergodicTheorem ∧ E.mixingProperties

theorem ergodic_theory_closed_from_evidence (E : ErgodicTheoryPackage)
    (Ev : ErgodicTheoryEvidence E) : ErgodicTheoryClosed E := by
  exact And.intro Ev.ergodicTheoremClosed Ev.mixingPropertiesClosed

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
