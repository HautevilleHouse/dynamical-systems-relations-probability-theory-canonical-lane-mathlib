import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure DynamicalAdmissibleObject where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  probabilityMeasure : Type v
  measureInvariant : Prop
  ergodicTheorem : Prop
  conclusion : ergodicTheorem

def DynamicalWitnessClosed (O : DynamicalAdmissibleObject) : Prop :=
  O.ergodicTheorem

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
