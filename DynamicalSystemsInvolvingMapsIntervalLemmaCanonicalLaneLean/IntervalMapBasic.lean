import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure IntervalMap where
  domain : ℝ
  codomain : ℝ
  map : ℝ → ℝ
  continuity : Prop
  monotonicity : Prop
  piecewiseMonotone : Prop

structure IntervalMapEvidence (f : IntervalMap) where
  continuityClosed : f.continuity
  monotonicityClosed : f.monotonicity
  piecewiseMonotoneClosed : f.piecewiseMonotone

def IntervalMapClosed (f : IntervalMap) : Prop :=
  f.continuity ∧ f.monotonicity ∧ f.piecewiseMonotone

theorem interval_map_closed_from_evidence (f : IntervalMap) (E : IntervalMapEvidence f) :
    IntervalMapClosed f := by
  exact And.intro E.continuityClosed (And.intro E.monotonicityClosed E.piecewiseMonotoneClosed)

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse
