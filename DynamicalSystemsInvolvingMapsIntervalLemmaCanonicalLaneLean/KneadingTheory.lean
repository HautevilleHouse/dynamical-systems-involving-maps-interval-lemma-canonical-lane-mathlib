import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemma

structure KneadingTheoryPackage where
  kneadingMatrix : Type u
  topologicalEntropyFormula : Prop
  symbolicDynamics : Prop
  admissibilityCondition : Prop
  inducedEntropyRelation : Prop

structure KneadingTheoryEvidence (K : KneadingTheoryPackage) where
  topologicalEntropyFormulaClosed : K.topologicalEntropyFormula
  symbolicDynamicsClosed : K.symbolicDynamics
  admissibilityConditionClosed : K.admissibilityCondition
  inducedEntropyRelationClosed : K.inducedEntropyRelation

def KneadingTheoryClosed (K : KneadingTheoryPackage) : Prop :=
  K.topologicalEntropyFormula ∧ K.symbolicDynamics ∧ K.admissibilityCondition ∧ K.inducedEntropyRelation

theorem kneading_theory_closed_from_evidence (K : KneadingTheoryPackage) (E : KneadingTheoryEvidence K) :
    KneadingTheoryClosed K := by
  exact And.intro E.topologicalEntropyFormulaClosed (And.intro E.symbolicDynamicsClosed (And.intro E.admissibilityConditionClosed E.inducedEntropyRelationClosed))

end DynamicalSystemsInvolvingMapsIntervalLemma
end HautevilleHouse