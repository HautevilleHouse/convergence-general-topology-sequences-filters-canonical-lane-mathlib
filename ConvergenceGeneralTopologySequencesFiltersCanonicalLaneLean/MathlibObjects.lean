import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure ConvergenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ConvergenceAdmittedObject where
  space : ConvergenceSpace
  filterConvergence : Prop
  sequentialConvergence : Prop
  t2Separation : Prop
  conclusion : filterConvergence ↔ sequentialConvergence

structure ConvergenceEndgameState where
  object : ConvergenceAdmittedObject

def ConvergenceWitnessClosed (O : ConvergenceAdmittedObject) : Prop :=
  O.conclusion

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse
