import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.RandomProcessAdmissiblePackage

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure DynamicalSystemPackage {L : LimitTheoremPackage}
    {S : StochasticCalculusPackage L} {R : RandomProcessAdmissiblePackage S} where
  flowOperator : Prop
  invariantSets : Prop
  lyapunovExponents : Prop
  entropy : Prop
  topologicalTransitivity : Prop
  chaoticBehavior : Prop

structure DynamicalSystemEvidence {L : LimitTheoremPackage}
    {S : StochasticCalculusPackage L} {R : RandomProcessAdmissiblePackage S}
    (D : DynamicalSystemPackage R) where
  flowOperatorClosed : D.flowOperator
  invariantSetsClosed : D.invariantSets
  lyapunovExponentsClosed : D.lyapunovExponents
  entropyClosed : D.entropy
  topologicalTransitivityClosed : D.topologicalTransitivity
  chaoticBehaviorClosed : D.chaoticBehavior

def DynamicalSystemClosed {L : LimitTheoremPackage}
    {S : StochasticCalculusPackage L} {R : RandomProcessAdmissiblePackage S}
    (D : DynamicalSystemPackage R) : Prop :=
  D.flowOperator ∧ D.invariantSets ∧
  D.lyapunovExponents ∧ D.entropy ∧
  D.topologicalTransitivity ∧ D.chaoticBehavior

theorem dynamical_system_closed_from_evidence
    {L : LimitTheoremPackage} {S : StochasticCalculusPackage L}
    {R : RandomProcessAdmissiblePackage S} (D : DynamicalSystemPackage R)
    (E : DynamicalSystemEvidence D) : DynamicalSystemClosed D := by
  exact And.intro E.flowOperatorClosed
    (And.intro E.invariantSetsClosed
      (And.intro E.lyapunovExponentsClosed
        (And.intro E.entropyClosed
          (And.intro E.topologicalTransitivityClosed
            E.chaoticBehaviorClosed))))

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
