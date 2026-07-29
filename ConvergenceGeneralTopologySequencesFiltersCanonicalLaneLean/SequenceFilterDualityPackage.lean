import ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean.ConvergenceAdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure SequenceFilterDualityPackage where
  sequenceConvergenceImpliesFilterConvergence : Prop
  filterConvergenceImpliesSequenceConvergence : Prop
  equivalenceEstablished : Prop

structure SequenceFilterDualityEvidence (D : SequenceFilterDualityPackage) where
  seqImpliesFilClosed : D.sequenceConvergenceImpliesFilterConvergence
  filImpliesSeqClosed : D.filterConvergenceImpliesSequenceConvergence
  equivalenceClosed : D.equivalenceEstablished

def SequenceFilterDualityClosed (D : SequenceFilterDualityPackage) : Prop :=
  D.sequenceConvergenceImpliesFilterConvergence ∧
  D.filterConvergenceImpliesSequenceConvergence ∧
  D.equivalenceEstablished

theorem sequence_filter_duality_closed_from_evidence
    (D : SequenceFilterDualityPackage) (E : SequenceFilterDualityEvidence D) :
    SequenceFilterDualityClosed D := by
  exact And.intro E.seqImpliesFilClosed
    (And.intro E.filImpliesSeqClosed E.equivalenceClosed)

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse