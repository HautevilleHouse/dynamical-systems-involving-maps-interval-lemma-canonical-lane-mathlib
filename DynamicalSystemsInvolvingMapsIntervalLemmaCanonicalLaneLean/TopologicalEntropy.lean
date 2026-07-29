import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure TopologicalEntropyPackage {I : IntervalMapDynamicsPackage} where
  entropyDefinition : Prop
  positiveEntropyImpliesChaos : Prop
  zeroEntropyEquivalent : Prop

data TopologicalEntropyEvidence {I : IntervalMapDynamicsPackage}
    (E : TopologicalEntropyPackage I) where
  entropyDefinitionClosed : E.entropyDefinition
  positiveEntropyImpliesChaosClosed : E.positiveEntropyImpliesChaos
  zeroEntropyEquivalentClosed : E.zeroEntropyEquivalent

def TopologicalEntropyClosed {I : IntervalMapDynamicsPackage}
    (E : TopologicalEntropyPackage I) : Prop :=
  E.entropyDefinition ∧ E.positiveEntropyImpliesChaos ∧ E.zeroEntropyEquivalent

theorem topological_entropy_closed_from_evidence
    {I : IntervalMapDynamicsPackage} (E : TopologicalEntropyPackage I)
    (Ev : TopologicalEntropyEvidence E) : TopologicalEntropyClosed E := by
  exact And.intro Ev.entropyDefinitionClosed
    (And.intro Ev.positiveEntropyImpliesChaosClosed Ev.zeroEntropyEquivalentClosed)

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse
