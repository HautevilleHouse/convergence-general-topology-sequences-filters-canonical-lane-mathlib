import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure ConvergenceAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  sequenceConvergenceDefined : Prop
  filterConvergenceDefined : Prop
  equivalenceEstablished : Prop
  conclusion : Prop

def convergenceWitnessClosed (O : ConvergenceAdmittedObject) : Prop :=
  O.equivalenceEstablished

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse