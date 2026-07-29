import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure ControlSwitchesDevicesSmartMaterialsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ControlSwitchesDevicesSmartMaterialsAdmittedObject where
  space : ControlSwitchesDevicesSmartMaterialsSpace
  controlSwitchProperty : Prop
  smartMaterialResponse : Prop
  deviceFunctionality : Prop
  conclusion : controlSwitchProperty ∧ smartMaterialResponse ∧ deviceFunctionality

def ControlSwitchesDevicesSmartMaterialsWitnessClosed (O : ControlSwitchesDevicesSmartMaterialsAdmittedObject) : Prop :=
  O.conclusion

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
