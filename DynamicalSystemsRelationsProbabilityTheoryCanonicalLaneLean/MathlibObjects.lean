import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicalSystemsProbabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalSystemsProbabilityAdmittedObject where
  space : DynamicalSystemsProbabilitySpace
  measurePreserving : Prop
  ergodic : Prop
  limitTheorem : Prop
  stochasticProcess : Type
  processTopology : TopologicalSpace stochasticProcess
  conclusion : limitTheorem

structure DynamicalSystemsProbabilityEndgameState where
  object : DynamicalSystemsProbabilityAdmittedObject

def DynamicalSystemsProbabilityWitnessClosed (O : DynamicalSystemsProbabilityAdmittedObject) : Prop :=
  O.limitTheorem

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse