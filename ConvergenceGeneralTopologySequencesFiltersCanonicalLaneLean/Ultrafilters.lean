import HautevilleHouse.ConvergenceGeneralTopologySequencesFilters.FilterBases

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFilters

structure UltrafilterPackage where
  maximalFilter : Prop
  existenceViaZorn : Prop
  equivalenceToFinitelyAdditiveMeasure : Prop
  convergenceInCompactSpaces : Prop

structure UltrafilterEvidence (U : UltrafilterPackage) where
  maximalFilterClosed : U.maximalFilter
  existenceViaZornClosed : U.existenceViaZorn
  equivalenceToFinitelyAdditiveMeasureClosed : U.equivalenceToFinitelyAdditiveMeasure
  convergenceInCompactSpacesClosed : U.convergenceInCompactSpaces

def UltrafilterClosed (U : UltrafilterPackage) : Prop :=
  U.maximalFilter ∧ U.existenceViaZorn ∧ U.equivalenceToFinitelyAdditiveMeasure ∧ U.convergenceInCompactSpaces

theorem ultrafilter_closed_from_evidence (U : UltrafilterPackage) (E : UltrafilterEvidence U) :
    UltrafilterClosed U := by
  exact And.intro E.maximalFilterClosed
    (And.intro E.existenceViaZornClosed
      (And.intro E.equivalenceToFinitelyAdditiveMeasureClosed E.convergenceInCompactSpacesClosed))

end ConvergenceGeneralTopologySequencesFilters
end HautevilleHouse
