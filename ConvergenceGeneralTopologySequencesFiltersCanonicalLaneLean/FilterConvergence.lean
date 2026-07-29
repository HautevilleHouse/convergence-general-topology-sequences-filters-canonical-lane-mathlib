import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure FilterConvergence (X : Type u) [TopologicalSpace X] where
  filter : Filter X
  limitSet : Set X
  convergenceProperty : limitSet ≤ filter

def FilterConvergence.closed (C : FilterConvergence X) : Prop :=
  C.limitSet ≤ C.filter

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse
