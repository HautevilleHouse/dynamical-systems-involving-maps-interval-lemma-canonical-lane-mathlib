import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure BoundedVariationPackage {f : IntervalMap} (D : DynamicsPackage f) where
  variation : ℝ → ℝ
  totalVariationFinite : Prop
  variationComposition : Prop
  variationChainRule : Prop

structure BoundedVariationEvidence {f : IntervalMap} {D : DynamicsPackage f} (B : BoundedVariationPackage D) where
  totalVariationFiniteClosed : B.totalVariationFinite
  variationCompositionClosed : B.variationComposition
  variationChainRuleClosed : B.variationChainRule

def BoundedVariationClosed {f : IntervalMap} {D : DynamicsPackage f} (B : BoundedVariationPackage D) : Prop :=
  B.totalVariationFinite ∧ B.variationComposition ∧ B.variationChainRule

theorem bounded_variation_closed_from_evidence {f : IntervalMap} {D : DynamicsPackage f}
    (B : BoundedVariationPackage D) (E : BoundedVariationEvidence B) : BoundedVariationClosed B := by
  exact And.intro E.totalVariationFiniteClosed
    (And.intro E.variationCompositionClosed E.variationChainRuleClosed)

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse
