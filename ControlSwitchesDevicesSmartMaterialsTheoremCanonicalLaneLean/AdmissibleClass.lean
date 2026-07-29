import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ControlSwitchesDevicesSmartMaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ControlSwitchesDevicesSmartMaterialsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
