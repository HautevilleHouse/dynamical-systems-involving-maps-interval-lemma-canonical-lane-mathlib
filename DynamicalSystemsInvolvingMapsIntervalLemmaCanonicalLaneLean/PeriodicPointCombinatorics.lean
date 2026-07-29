import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure PeriodicPointCombinatoricsPackage {I : IntervalMapDynamicsPackage} where
  periodicPointSet : Set I.interval
  periodCount : I.interval → ℕ
  primePeriod : I.interval → ℕ
  sharkovskyOrdering : Prop
  liouvilleNumbers : Prop
  periodicPointDensity : Prop

data PeriodicPointCombinatoricsEvidence {I : IntervalMapDynamicsPackage}
    (P : PeriodicPointCombinatoricsPackage I) where
  sharkovskyOrderingClosed : P.sharkovskyOrdering
  liouvilleNumbersClosed : P.liouvilleNumbers
  periodicPointDensityClosed : P.periodicPointDensity

def PeriodicPointCombinatoricsClosed {I : IntervalMapDynamicsPackage}
    (P : PeriodicPointCombinatoricsPackage I) : Prop :=
  P.sharkovskyOrdering ∧ P.liouvilleNumbers ∧ P.periodicPointDensity

theorem periodic_point_combinatorics_closed_from_evidence
    {I : IntervalMapDynamicsPackage} (P : PeriodicPointCombinatoricsPackage I)
    (E : PeriodicPointCombinatoricsEvidence P) : PeriodicPointCombinatoricsClosed P := by
  exact And.intro E.sharkovskyOrderingClosed
    (And.intro E.liouvilleNumbersClosed E.periodicPointDensityClosed)

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse
