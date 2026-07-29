import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemma

structure LapNumberEvidence where
  lapNumberFinite : Prop
  lapNumberBound : ℕ
  monotonicity : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LapNumberEvidence.lapNumberFinite

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  exact (A.property).1

end DynamicalSystemsInvolvingMapsIntervalLemma
end HautevilleHouse