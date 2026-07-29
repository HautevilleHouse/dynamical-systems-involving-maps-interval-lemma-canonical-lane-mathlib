import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure IntervalLemmaPackage {f : IntervalMap} (D : DynamicsPackage f) where
  crossRatioCondition : Prop
  boundedVariation : Prop
  wanderingInterval : Prop
  distortionControl : Prop
  lemmaConclusion : Prop

structure IntervalLemmaEvidence {f : IntervalMap} {D : DynamicsPackage f} (L : IntervalLemmaPackage D) where
  crossRatioConditionClosed : L.crossRatioCondition
  boundedVariationClosed : L.boundedVariation
  wanderingIntervalClosed : L.wanderingInterval
  distortionControlClosed : L.distortionControl
  lemmaConclusionClosed : L.lemmaConclusion

def IntervalLemmaClosed {f : IntervalMap} {D : DynamicsPackage f} (L : IntervalLemmaPackage D) : Prop :=
  L.crossRatioCondition ∧ L.boundedVariation ∧ L.wanderingInterval ∧ L.distortionControl ∧ L.lemmaConclusion

theorem interval_lemma_closed_from_evidence {f : IntervalMap} {D : DynamicsPackage f}
    (L : IntervalLemmaPackage D) (E : IntervalLemmaEvidence L) : IntervalLemmaClosed L := by
  exact And.intro E.crossRatioConditionClosed
    (And.intro E.boundedVariationClosed
      (And.intro E.wanderingIntervalClosed
        (And.intro E.distortionControlClosed E.lemmaConclusionClosed)))

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse
