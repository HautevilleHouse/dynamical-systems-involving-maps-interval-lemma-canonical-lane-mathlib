import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure DistortionControlPackage {f : IntervalMap} (D : DynamicsPackage f) where
  derivativeBound : Prop
  distorationExponent : ℝ
  separationProperty : Prop
  distortionFinite : Prop

structure DistortionControlEvidence {f : IntervalMap} {D : DynamicsPackage f} (C : DistortionControlPackage D) where
  derivativeBoundClosed : C.derivativeBound
  separationPropertyClosed : C.separationProperty
  distortionFiniteClosed : C.distortionFinite

def DistortionControlClosed {f : IntervalMap} {D : DynamicsPackage f} (C : DistortionControlPackage D) : Prop :=
  C.derivativeBound ∧ C.separationProperty ∧ C.distortionFinite

theorem distortion_control_closed_from_evidence {f : IntervalMap} {D : DynamicsPackage f}
    (C : DistortionControlPackage D) (E : DistortionControlEvidence C) : DistortionControlClosed C := by
  exact And.intro E.derivativeBoundClosed (And.intro E.separationPropertyClosed E.distortionFiniteClosed)

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse
