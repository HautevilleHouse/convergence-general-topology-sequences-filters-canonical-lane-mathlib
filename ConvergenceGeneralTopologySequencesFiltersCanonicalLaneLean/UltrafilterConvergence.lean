import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFilters

structure Ultrafilter (X : Type u) where
  filter : Filter X
  maximal : ∀ (F : Filter X), filter ≤ F → F = filter

structure UltrafilterConvergence (X : Type u) [TopologicalSpace X] where
  ultrafilter : Ultrafilter X
  limit : X
  convergence : ultrafilter.filter ≤ 𝓝 limit

structure UltrafilterConvergenceClosed (C : UltrafilterConvergence X) : Prop where
  convergenceClosed : C.convergence

theorem ultrafilter_convergence_closed_from_evidence (C : UltrafilterConvergence X) : UltrafilterConvergenceClosed C :=
  { convergenceClosed := C.convergence }

end ConvergenceGeneralTopologySequencesFilters
end HautevilleHouse