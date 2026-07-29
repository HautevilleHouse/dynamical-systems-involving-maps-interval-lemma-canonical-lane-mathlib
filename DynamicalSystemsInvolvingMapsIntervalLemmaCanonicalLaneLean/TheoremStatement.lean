import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean

structure IntervalMapAdmittedObject where
  interval : Type
  topInterval : TopologicalSpace interval
  map : interval → interval
  intervalMapProperty : Prop
  conclusion : intervalMapProperty

def IntervalMapWitnessClosed (O : IntervalMapAdmittedObject) : Prop :=
  O.intervalMapProperty

end DynamicalSystemsInvolvingMapsIntervalLemmaCanonicalLaneLean
end HautevilleHouse
