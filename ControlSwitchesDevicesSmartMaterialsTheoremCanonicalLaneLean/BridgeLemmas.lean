import canonicalLaneMathlib.AdmissibleClass
import ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean.SmartMaterialAdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

def bridgeClosed (A : SmartMaterialAdmissibleClass) : Prop :=
  smartMaterialWitnessClosed A.object

theorem bridge_from_admissible_class (A : SmartMaterialAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
