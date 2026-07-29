import ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean.ConvergenceSpaceClassificationPackage

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure UltrafilterConvergencePackage where
  ultrafilterLimitExists : Prop
  uniquenessInHausdorff : Prop
  compactnessViaUltrafilter : Prop
  convergenceReflectsContinuity : Prop

structure UltrafilterConvergenceEvidence (U : UltrafilterConvergencePackage) where
  limitExistsClosed : U.ultrafilterLimitExists
  uniquenessClosed : U.uniquenessInHausdorff
  compactnessClosed : U.compactnessViaUltrafilter
  continuityClosed : U.convergenceReflectsContinuity

def UltrafilterConvergenceClosed (U : UltrafilterConvergencePackage) : Prop :=
  U.ultrafilterLimitExists ∧ U.uniquenessInHausdorff ∧
  U.compactnessViaUltrafilter ∧ U.convergenceReflectsContinuity

theorem ultrafilter_convergence_closed_from_evidence
    (U : UltrafilterConvergencePackage) (E : UltrafilterConvergenceEvidence U) :
    UltrafilterConvergenceClosed U := by
  exact And.intro E.limitExistsClosed
    (And.intro E.uniquenessClosed
      (And.intro E.compactnessClosed E.continuityClosed))

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse