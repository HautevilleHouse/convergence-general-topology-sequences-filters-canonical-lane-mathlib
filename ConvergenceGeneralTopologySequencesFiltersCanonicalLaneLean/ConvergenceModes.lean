import HautevilleHouse.ConvergenceGeneralTopologySequencesFilters.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFilters

structure ConvergenceModePackage where
  sequenceConvergence : Prop
  filterConvergence : Prop
  netConvergence : Prop
  equivalenceForSequentialSpaces : Prop

structure ConvergenceModeEvidence (C : ConvergenceModePackage) where
  sequenceConvergenceClosed : C.sequenceConvergence
  filterConvergenceClosed : C.filterConvergence
  netConvergenceClosed : C.netConvergence
  equivalenceForSequentialSpacesClosed : C.equivalenceForSequentialSpaces

def ConvergenceModeClosed (C : ConvergenceModePackage) : Prop :=
  C.sequenceConvergence ∧ C.filterConvergence ∧ C.netConvergence ∧ C.equivalenceForSequentialSpaces

theorem convergence_mode_closed_from_evidence (C : ConvergenceModePackage) (E : ConvergenceModeEvidence C) :
    ConvergenceModeClosed C := by
  exact And.intro E.sequenceConvergenceClosed
    (And.intro E.filterConvergenceClosed
      (And.intro E.netConvergenceClosed E.equivalenceForSequentialSpacesClosed))

end ConvergenceGeneralTopologySequencesFilters
end HautevilleHouse
