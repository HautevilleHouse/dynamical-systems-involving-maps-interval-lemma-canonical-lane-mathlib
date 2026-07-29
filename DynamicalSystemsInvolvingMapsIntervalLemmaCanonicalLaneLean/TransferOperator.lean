import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure TransferOperatorPackage where
  measureSpace : Type u
  measure : MeasureTheory.Measure measureSpace
  transferOperator : (measureSpace → ℝ) → (measureSpace → ℝ)
  boundedOperator : Prop
  spectralGapProperty : Prop
  mixingCondition : Prop

def TransferOperatorClosed (T : TransferOperatorPackage) : Prop :=
  T.boundedOperator ∧ T.spectralGapProperty

theorem transfer_operator_closed (T : TransferOperatorPackage) :
    TransferOperatorClosed T := by
  exact And.intro T.boundedOperator T.spectralGapProperty

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse