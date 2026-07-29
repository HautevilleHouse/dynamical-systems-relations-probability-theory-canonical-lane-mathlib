import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.WeakConvergence

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure RandomProcessStructurePackage where
  processDefined : Prop
  cadlagModification : Prop
  stoppingTimesStructure : Type u
  markovProperty : Prop
  strongMarkovProperty : Prop

def RandomProcessStructureClosed (R : RandomProcessStructurePackage) : Prop :=
  R.processDefined ∧ R.cadlagModification ∧ R.markovProperty ∧ R.strongMarkovProperty

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
