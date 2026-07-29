import canonicalLaneMathlib.AdmissibleClass
import ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

def gateClosed (A : SmartMaterialAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : SmartMaterialAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
