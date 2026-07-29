import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure SequenceConvergence (X : Type u) [TopologicalSpace X] where
  sequence : ℕ → X
  limit : X
  convergenceProperty : ∀ U ∈ 𝓝 limit, ∀ᶠ n in atTop, sequence n ∈ U

def SequenceConvergence.closed (C : SequenceConvergence X) : Prop :=
  ∀ U ∈ 𝓝 C.limit, ∀ᶠ n in atTop, C.sequence n ∈ U

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse
