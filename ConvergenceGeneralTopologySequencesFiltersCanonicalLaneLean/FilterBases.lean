import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFilters

structure FilterBase (X : Type u) where
  sets : Set (Set X)
  nonempty : sets.Nonempty
  downwardDirected : ∀ A ∈ sets, ∀ B ∈ sets, ∃ C ∈ sets, C ⊆ A ∩ B

structure FilterBaseClosed (F : FilterBase X) : Prop where
  nonemptyClosed : F.nonempty
  downwardDirectedClosed : F.downwardDirected

theorem filter_base_closed_from_evidence (F : FilterBase X) (h : F.nonempty) (h' : F.downwardDirected) : FilterBaseClosed F :=
  { nonemptyClosed := h, downwardDirectedClosed := h' }

end ConvergenceGeneralTopologySequencesFilters
end HautevilleHouse