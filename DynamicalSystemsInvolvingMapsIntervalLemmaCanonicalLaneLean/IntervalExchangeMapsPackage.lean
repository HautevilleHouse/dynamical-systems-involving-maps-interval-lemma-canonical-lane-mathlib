import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure IntervalExchangeMapsPackage {I : AdmittedIntervalMap} (F : IntervalMapFamily I) where
  partition : List (I.Point × I.Point)
  permuation : I.Point → I.Point
  rokhlinProperty : Prop
  mixingProperties : Prop

structure IntervalExchangeMapsEvidence {I : AdmittedIntervalMap} {F : IntervalMapFamily I}
    (P : IntervalExchangeMapsPackage F) where
  partitionClosed : P.partition ≠ []
  permuationClosed : P.permuation ∘ P.permuation = id
  rokhlinPropertyClosed : P.rokhlinProperty
  mixingPropertiesClosed : P.mixingProperties

def IntervalExchangeMapsClosed {I : AdmittedIntervalMap} {F : IntervalMapFamily I}
    (P : IntervalExchangeMapsPackage F) : Prop :=
  P.partition ≠ [] ∧
  P.permuation ∘ P.permuation = id ∧
  P.rokhlinProperty ∧
  P.mixingProperties

theorem interval_exchange_maps_closed_from_evidence
    {I : AdmittedIntervalMap} {F : IntervalMapFamily I}
    (P : IntervalExchangeMapsPackage F) (E : IntervalExchangeMapsEvidence P) :
    IntervalExchangeMapsClosed P := by
  exact And.intro E.partitionClosed
    (And.intro E.permuationClosed
      (And.intro E.rokhlinPropertyClosed E.mixingPropertiesClosed))

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse