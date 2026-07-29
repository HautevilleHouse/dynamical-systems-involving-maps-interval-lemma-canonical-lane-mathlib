import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure SymbolicDynamicsPackage where
  symbols : Type u
  shiftMap : (symbols → ℕ) → (symbols → ℕ)
  codingMap : (symbols → ℕ) → interval
  codingIsSemiconjugacy : Prop
  subshiftOfFiniteType : Prop
  markovChainTransition : Prop

def SymbolicDynamicsClosed (S : SymbolicDynamicsPackage) : Prop :=
  S.codingIsSemiconjugacy ∧ S.subshiftOfFiniteType

theorem symbolic_dynamics_closed (S : SymbolicDynamicsPackage) :
    SymbolicDynamicsClosed S := by
  exact And.intro S.codingIsSemiconjugacy S.subshiftOfFiniteType

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse