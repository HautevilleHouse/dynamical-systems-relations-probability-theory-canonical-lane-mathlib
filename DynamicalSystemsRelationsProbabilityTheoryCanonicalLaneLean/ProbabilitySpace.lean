import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean

structure ProbabilitySpacePackage where
  sampleSpace : Type u
  eventSigmaAlgebra : Type v
  probabilityMeasure : Type w
  sigmaAlgebraDefined : Prop
  probabilityMeasureDefined : Prop
  sigmaAlgebraDefinedTerm : sigmaAlgebraDefined
  probabilityMeasureDefinedTerm : probabilityMeasureDefined

structure ProbabilitySpaceEvidence (P : ProbabilitySpacePackage) where
  sigmaAlgebraDefinedClosed : P.sigmaAlgebraDefined
  probabilityMeasureDefinedClosed : P.probabilityMeasureDefined

def ProbabilitySpaceClosed (P : ProbabilitySpacePackage) : Prop :=
  P.sigmaAlgebraDefined ∧ P.probabilityMeasureDefined

theorem probability_space_closed_from_evidence (P : ProbabilitySpacePackage)
    (E : ProbabilitySpaceEvidence P) : ProbabilitySpaceClosed P := by
  exact And.intro E.sigmaAlgebraDefinedClosed E.probabilityMeasureDefinedClosed

end DynamicalSystemsRelationsProbabilityTheoryCanonicalLaneLean
end HautevilleHouse
