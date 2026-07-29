import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure IntervalMap where
  X : Type u
  _ : TopologicalSpace X
  f : X → X
  invariantInterval : Set X
  intervalTopology : TopologicalSpace X
  mapContinuous : Continuous f

structure IntervalMapEvidence (I : IntervalMap) where
  invariantIntervalNonempty : I.invariantInterval.Nonempty
  invariantIntervalCompact : IsCompact I.invariantInterval
  invariantIntervalConnected : IsConnected I.invariantInterval
  fInvariant : f '' I.invariantInterval ⊆ I.invariantInterval

structure IntervalLemmaPackage (I : IntervalMap) where
  periodicPointsDense : Prop
  topologicalTransitivity : Prop
  sensitiveDependence : Prop
  closureOfPeriodicPoints : Prop
  chainTransitivity : Prop
  mixingProperty : Prop
  
structure IntervalLemmaEvidence {I : IntervalMap} (P : IntervalLemmaPackage I) where
  periodicPointsDenseClosed : P.periodicPointsDense
  topologicalTransitivityClosed : P.topologicalTransitivity
  sensitiveDependenceClosed : P.sensitiveDependence
  closureOfPeriodicPointsClosed : P.closureOfPeriodicPoints
  chainTransitivityClosed : P.chainTransitivity
  mixingPropertyClosed : P.mixingProperty

def IntervalLemmaClosed {I : IntervalMap} (P : IntervalLemmaPackage I) : Prop :=
  P.periodicPointsDense ∧ P.topologicalTransitivity ∧ P.sensitiveDependence ∧
  P.closureOfPeriodicPoints ∧ P.chainTransitivity ∧ P.mixingProperty

theorem interval_lemma_closed_from_evidence
    {I : IntervalMap} (P : IntervalLemmaPackage I) (E : IntervalLemmaEvidence P) :
    IntervalLemmaClosed P := by
  exact And.intro E.periodicPointsDenseClosed
    (And.intro E.topologicalTransitivityClosed
      (And.intro E.sensitiveDependenceClosed
        (And.intro E.closureOfPeriodicPointsClosed
          (And.intro E.chainTransitivityClosed E.mixingPropertyClosed))))

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse