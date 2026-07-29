import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure MapsIntervalLemmaPackage where
  interval : Type u
  intervalTopology : TopologicalSpace interval
  intervalOrder : Preorder interval
  map : interval → interval
  mapContinuous : Prop
  combinatorialMarkovPartition : Prop
  intervalCoverUniformity : Prop
  distortionBounds : Prop
  codingMap : Type v
  codingMapContinuous : codingMap → interval

structure MapsIntervalLemmaEvidence (P : MapsIntervalLemmaPackage) where
  mapContinuousClosed : P.mapContinuous
  combinatorialMarkovPartitionClosed : P.combinatorialMarkovPartition
  intervalCoverUniformityClosed : P.intervalCoverUniformity
  distortionBoundsClosed : P.distortionBounds

def MapsIntervalLemmaClosed (P : MapsIntervalLemmaPackage) : Prop :=
  P.mapContinuous ∧ P.combinatorialMarkovPartition ∧
  P.intervalCoverUniformity ∧ P.distortionBounds

theorem maps_interval_lemma_closed_from_evidence
    (P : MapsIntervalLemmaPackage) (E : MapsIntervalLemmaEvidence P) :
    MapsIntervalLemmaClosed P := by
  exact And.intro E.mapContinuousClosed
    (And.intro E.combinatorialMarkovPartitionClosed
      (And.intro E.intervalCoverUniformityClosed E.distortionBoundsClosed))

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse