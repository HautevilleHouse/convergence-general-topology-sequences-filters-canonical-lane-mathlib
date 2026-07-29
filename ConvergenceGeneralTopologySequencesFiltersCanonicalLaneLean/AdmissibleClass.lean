import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure AdmissibleClass where
  object : ConvergenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvergenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse
