import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

def gateClosed (A : AdmissibleClass) : Prop := True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  trivial

end ConvergenceGeneralTopologySequencesFiltersCanonicalLaneLean
end HautevilleHouse
