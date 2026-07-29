import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

structure FilterBase (X : Type u) where
  sets : Set (Set X)
  nonempty : sets.Nonempty
  downwards : ∀ s t, s ∈ sets → t ⊆ s → t ∈ sets
  upwards : ∀ s t, s ∈ sets → s ⊆ t → t ∈ sets

def FilterBase.closed (F : FilterBase X) : Prop :=
  F.nonempty ∧ F.downwards ∧ F.upwards

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse
