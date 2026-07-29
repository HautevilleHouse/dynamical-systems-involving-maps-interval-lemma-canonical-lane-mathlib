import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure MisiurewiczMap where
  intervalMap : IntervalMap
  topologicalEntropyPositive : Prop
  horseshoePresent : Prop
  chaoticBehavior : Prop
  
structure MisiurewiczEvidence (M : MisiurewiczMap) where
  topologicalEntropyPositiveClosed : M.topologicalEntropyPositive
  horseshoePresentClosed : M.horseshoePresent
  chaoticBehaviorClosed : M.chaoticBehavior

def MisiurewiczClosed (M : MisiurewiczMap) : Prop :=
  M.topologicalEntropyPositive ∧ M.horseshoePresent ∧ M.chaoticBehavior

theorem misiurewicz_closed_from_evidence (M : MisiurewiczMap) (E : MisiurewiczEvidence M) :
    MisiurewiczClosed M := by
  exact And.intro E.topologicalEntropyPositiveClosed
    (And.intro E.horseshoePresentClosed E.chaoticBehaviorClosed)

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse