import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFilters

structure CompactnessViaFilters (X : Type u) [TopologicalSpace X] where
  isCompact : Prop
  ultrafilterCondition : ∀ (F : Ultrafilter X), F.filter ≤ 𝓝 (somePoint X)
  somePoint : X

structure CompactnessViaFiltersClosed (C : CompactnessViaFilters X) : Prop where
  ultrafilterConditionClosed : C.ultrafilterCondition

theorem compactness_via_filters_closed_from_evidence (C : CompactnessViaFilters X) : CompactnessViaFiltersClosed C :=
  { ultrafilterConditionClosed := C.ultrafilterCondition }

end ConvergenceGeneralTopologySequencesFilters
end HautevilleHouse