import HautevilleHouse.ConvergenceGeneralTopologySequencesFilters.FilterLimits

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFilters

structure SequentialCompactnessPackage where
  bolzanoWeierstrass : Prop
  sequentialCompactnessEquivCountableCompactness : Prop
  subsequenceProperties : Prop

structure SequentialCompactnessEvidence (S : SequentialCompactnessPackage) where
  bolzanoWeierstrassClosed : S.bolzanoWeierstrass
  sequentialCompactnessEquivCountableCompactnessClosed : S.sequentialCompactnessEquivCountableCompactness
  subsequencePropertiesClosed : S.subsequenceProperties

def SequentialCompactnessClosed (S : SequentialCompactnessPackage) : Prop :=
  S.bolzanoWeierstrass ∧ S.sequentialCompactnessEquivCountableCompactness ∧ S.subsequenceProperties

theorem sequential_compactness_closed_from_evidence (S : SequentialCompactnessPackage) (E : SequentialCompactnessEvidence S) :
    SequentialCompactnessClosed S := by
  exact And.intro E.bolzanoWeierstrassClosed
    (And.intro E.sequentialCompactnessEquivCountableCompactnessClosed E.subsequencePropertiesClosed)

end ConvergenceGeneralTopologySequencesFilters
end HautevilleHouse
