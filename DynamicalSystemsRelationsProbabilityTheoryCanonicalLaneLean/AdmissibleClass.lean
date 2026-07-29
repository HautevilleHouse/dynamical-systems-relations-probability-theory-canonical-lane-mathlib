import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : DynamicalSystemsProbabilityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalSystemsProbabilityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse