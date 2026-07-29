import HautevilleHouse.ConvergenceGeneralTopologySequencesFilters.ConvergenceModes

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFilters

structure FilterLimitPackage where
  topologicalSpace : Type u
  limitUnique : Prop
  compositionWithContinuous : Prop
  clusterPoints : Prop

structure FilterLimitEvidence (F : FilterLimitPackage) where
  limitUniqueClosed : F.limitUnique
  compositionWithContinuousClosed : F.compositionWithContinuous
  clusterPointsClosed : F.clusterPoints

def FilterLimitClosed (F : FilterLimitPackage) : Prop :=
  F.limitUnique ∧ F.compositionWithContinuous ∧ F.clusterPoints

theorem filter_limit_closed_from_evidence (F : FilterLimitPackage) (E : FilterLimitEvidence F) :
    FilterLimitClosed F := by
  exact And.intro E.limitUniqueClosed
    (And.intro E.compositionWithContinuousClosed E.clusterPointsClosed)

end ConvergenceGeneralTopologySequencesFilters
end HautevilleHouse
