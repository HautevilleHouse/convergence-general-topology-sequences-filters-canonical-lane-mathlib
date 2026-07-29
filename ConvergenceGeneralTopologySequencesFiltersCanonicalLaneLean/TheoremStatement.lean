import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure ConvergentFilterObject where
  carrier : Type
  topology : TopologicalSpace carrier
  filter : Filter carrier
  convergenceWitness : Prop
  conclusion : convergenceWitness

def ConvergentWitnessClosed (O : ConvergentFilterObject) : Prop :=
  O.convergenceWitness

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse