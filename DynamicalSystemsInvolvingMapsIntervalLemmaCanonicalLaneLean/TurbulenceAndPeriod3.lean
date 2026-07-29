import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure TurbulenceAndPeriod3Package {I : IntervalMapDynamicsPackage}
    {P : PeriodicPointCombinatoricsPackage I} where
  period3ImpliesChaos : Prop
  turbulenceImpliesPeriod3 : Prop
  intervalMapTurbulent : Prop

data TurbulenceAndPeriod3Evidence {I : IntervalMapDynamicsPackage}
    {P : PeriodicPointCombinatoricsPackage I} (T : TurbulenceAndPeriod3Package I P) where
  period3ImpliesChaosClosed : T.period3ImpliesChaos
  turbulenceImpliesPeriod3Closed : T.turbulenceImpliesPeriod3
  intervalMapTurbulentClosed : T.intervalMapTurbulent

def TurbulenceAndPeriod3Closed {I : IntervalMapDynamicsPackage}
    {P : PeriodicPointCombinatoricsPackage I} (T : TurbulenceAndPeriod3Package I P) : Prop :=
  T.period3ImpliesChaos ∧ T.turbulenceImpliesPeriod3 ∧ T.intervalMapTurbulent

theorem turbulence_and_period3_closed_from_evidence
    {I : IntervalMapDynamicsPackage} {P : PeriodicPointCombinatoricsPackage I}
    (T : TurbulenceAndPeriod3Package I P) (E : TurbulenceAndPeriod3Evidence T) :
    TurbulenceAndPeriod3Closed T := by
  exact And.intro E.period3ImpliesChaosClosed
    (And.intro E.turbulenceImpliesPeriod3Closed E.intervalMapTurbulentClosed)

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse
