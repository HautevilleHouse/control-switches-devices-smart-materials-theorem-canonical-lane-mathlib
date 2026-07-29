import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure SmartMaterialAdmittedObject where
  materialType : String
  actuationMechanism : Prop
  sensingCapability : Prop
  controlInputRange : Prop
  responseTime : Prop
  bandwidthLimitation : Prop
  conclusion : Prop

structure SmartMaterialAdmissibleClass where
  object : SmartMaterialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def smartMaterialWitnessClosed (O : SmartMaterialAdmittedObject) : Prop :=
  O.conclusion

def admittedClosure (A : SmartMaterialAdmissibleClass) : Prop :=
  smartMaterialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
