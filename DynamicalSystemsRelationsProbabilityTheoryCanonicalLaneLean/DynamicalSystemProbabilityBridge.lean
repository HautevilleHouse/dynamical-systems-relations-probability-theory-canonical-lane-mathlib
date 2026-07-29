import DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProbabilisticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse