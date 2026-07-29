import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure ChainRecurrencePackage {I : AdmittedIntervalMap} (F : IntervalMapFamily I) where
  chainRecurrenceSet : I.Point → Prop
  chfClosed : Prop
  lyapunovFunction : Type
  shadowingProperty : Prop

structure ChainRecurrenceEvidence {I : AdmittedIntervalMap} {F : IntervalMapFamily I}
    (C : ChainRecurrencePackage F) where
  chainRecurrenceSetClosed : C.chainRecurrenceSet = 
    (λ x : I.Point => C.chfClosed ∧ x ∈ I.basin)
  lyapunovFunctionClosed : Nonempty C.lyapunovFunction
  shadowingPropertyClosed : C.shadowingProperty

def ChainRecurrenceClosed {I : AdmittedIntervalMap} {F : IntervalMapFamily I}
    (C : ChainRecurrencePackage F) : Prop :=
  (∀ x : I.Point, C.chainRecurrenceSet x ↔ (C.chfClosed ∧ x ∈ I.basin)) ∧
  Nonempty C.lyapunovFunction ∧
  C.shadowingProperty

theorem chain_recurrence_closed_from_evidence
    {I : AdmittedIntervalMap} {F : IntervalMapFamily I}
    (C : ChainRecurrencePackage F) (E : ChainRecurrenceEvidence C) :
    ChainRecurrenceClosed C := by
  exact And.intro E.chainRecurrenceSetClosed
    (And.intro E.lyapunovFunctionClosed E.shadowingPropertyClosed)

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse