import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure FilteredSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SequenceConvergenceObject where
  space : FilteredSpace
  sequence : ℕ → space.carrier
  limitPoint : space.carrier
  convergenceProperty : Prop
  conclusion : convergenceProperty

structure AdmissibleClass where
  object : SequenceConvergenceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SequenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SequenceWitnessClosed (O : SequenceConvergenceObject) : Prop :=
  O.convergenceProperty

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse