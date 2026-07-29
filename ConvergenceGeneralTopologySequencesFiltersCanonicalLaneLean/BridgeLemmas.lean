import ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean.AdmissibleObject

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  convergenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse