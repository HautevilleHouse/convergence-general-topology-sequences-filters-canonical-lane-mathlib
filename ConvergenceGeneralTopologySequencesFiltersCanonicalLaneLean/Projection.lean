import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def convergenceProjection : Projection ConvergenceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem convergence_projection_idempotent (x : ConvergenceEndgameState) :
    convergenceProjection.toFun (convergenceProjection.toFun x) = convergenceProjection.toFun x :=
  rfl

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse
