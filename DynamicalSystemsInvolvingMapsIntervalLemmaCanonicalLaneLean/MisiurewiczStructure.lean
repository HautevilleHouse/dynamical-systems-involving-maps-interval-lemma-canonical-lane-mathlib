import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemma

structure MisiurewiczStructure where
  mapFamily : Type u
  parameterSpace : Type v
  chaoticRegion : Prop
  kneadingSequence : List ℕ
  topologicalEntropyStrictlyPositive : Prop
  periodicWindow : Prop

structure MisiurewiczEvidence (M : MisiurewiczStructure) where
  chaoticRegionClosed : M.chaoticRegion
  topologicalEntropyPositiveClosed : M.topologicalEntropyStrictlyPositive
  periodicWindowClosed : M.periodicWindow

def MisiurewiczClosed (M : MisiurewiczStructure) : Prop :=
  M.chaoticRegion ∧ M.topologicalEntropyStrictlyPositive ∧ M.periodicWindow

theorem misiurewicz_closed_from_evidence (M : MisiurewiczStructure) (E : MisiurewiczEvidence M) :
    MisiurewiczClosed M := by
  exact And.intro E.chaoticRegionClosed (And.intro E.topologicalEntropyPositiveClosed E.periodicWindowClosed)

end DynamicalSystemsInvolvingMapsIntervalLemma
end HautevilleHouse