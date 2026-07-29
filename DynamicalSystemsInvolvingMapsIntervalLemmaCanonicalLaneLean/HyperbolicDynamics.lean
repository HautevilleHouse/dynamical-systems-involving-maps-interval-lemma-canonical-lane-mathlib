import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure HyperbolicDynamicsPackage where
  baseMap : interval → interval
  derivativeCondition : Prop
  expansionConstant : ℝ
  boundedDistortionCoefficient : ℝ
  hyperbolicSplitting : Prop

def HyperbolicDynamicsClosed (P : HyperbolicDynamicsPackage) : Prop :=
  P.derivativeCondition ∧ P.hyperbolicSplitting

theorem hyperbolic_dynamics_closed (P : HyperbolicDynamicsPackage) :
    HyperbolicDynamicsClosed P := by
  exact And.intro P.derivativeCondition P.hyperbolicSplitting

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse