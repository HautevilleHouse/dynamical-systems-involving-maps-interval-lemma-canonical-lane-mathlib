import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemma

structure SingerTheoremPackage where
  criticalPoints : ℕ
  lapNumberBoundFormula : Prop
  topologicalEntropyBound : Prop

def SingerTheoremClosed (S : SingerTheoremPackage) : Prop :=
  S.lapNumberBoundFormula ∧ S.topologicalEntropyBound

end DynamicalSystemsInvolvingMapsIntervalLemma
end HautevilleHouse