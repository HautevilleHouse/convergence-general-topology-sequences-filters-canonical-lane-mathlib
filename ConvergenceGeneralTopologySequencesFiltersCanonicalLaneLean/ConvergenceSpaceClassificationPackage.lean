import ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean.SequenceFilterDualityPackage

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure ConvergenceSpaceClassificationPackage where
  firstCountableImpliesSequential : Prop
  uniformizableImpliesFilterConvergence : Prop
  metricSpaceSequentialCompactness : Prop
  sequentiallyCompactImpliesCountablyCompact : Prop

structure ConvergenceSpaceClassificationEvidence
    (C : ConvergenceSpaceClassificationPackage) where
  firstCountableSeqClosed : C.firstCountableImpliesSequential
  uniformizableFilClosed : C.uniformizableImpliesFilterConvergence
  metricSeqCompactClosed : C.metricSpaceSequentialCompactness
  seqCompactCountablyCompactClosed : C.sequentiallyCompactImpliesCountablyCompact

def ConvergenceSpaceClassificationClosed (C : ConvergenceSpaceClassificationPackage) : Prop :=
  C.firstCountableImpliesSequential ∧
  C.uniformizableImpliesFilterConvergence ∧
  C.metricSpaceSequentialCompactness ∧
  C.sequentiallyCompactImpliesCountablyCompact

theorem convergence_space_classification_closed_from_evidence
    (C : ConvergenceSpaceClassificationPackage)
    (E : ConvergenceSpaceClassificationEvidence C) :
    ConvergenceSpaceClassificationClosed C := by
  exact And.intro E.firstCountableSeqClosed
    (And.intro E.uniformizableFilClosed
      (And.intro E.metricSeqCompactClosed E.seqCompactCountablyCompactClosed))

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse