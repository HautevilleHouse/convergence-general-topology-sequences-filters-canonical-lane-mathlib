import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure NetConvergence (X : Type u) [TopologicalSpace X] (I : Type u) [Preorder I] where
  net : I → X
  limit : X
  convergenceProperty : ∀ U ∈ 𝓝 limit, ∀ᶠ i in (Filter.atTop : Filter I), net i ∈ U

def NetConvergence.closed (C : NetConvergence X I) : Prop :=
  ∀ U ∈ 𝓝 C.limit, ∀ᶠ i in (Filter.atTop : Filter I), C.net i ∈ U

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse
