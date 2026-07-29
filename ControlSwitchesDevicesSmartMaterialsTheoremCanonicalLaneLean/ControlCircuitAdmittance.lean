import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure ControlCircuitAdmittancePackage where
  impedanceMatching : Type u
  resonantFrequency : Type v
  dampingRatio : Type w
  switchingSpeed : Type x
  closedLoopStability : Prop
  feedforwardCompensation : Prop
  disturbanceRejection : Prop
  setpointTracking : Prop

structure ControlCircuitAdmittanceEvidence (C : ControlCircuitAdmittancePackage) where
  closedLoopStabilityClosed : C.closedLoopStability
  feedforwardCompensationClosed : C.feedforwardCompensation
  disturbanceRejectionClosed : C.disturbanceRejection
  setpointTrackingClosed : C.setpointTracking

def ControlCircuitAdmittanceClosed (C : ControlCircuitAdmittancePackage) : Prop :=
  C.closedLoopStability ∧ C.feedforwardCompensation ∧
  C.disturbanceRejection ∧ C.setpointTracking

theorem control_circuit_admittance_closed_from_evidence
    (C : ControlCircuitAdmittancePackage) (Ev : ControlCircuitAdmittanceEvidence C) :
    ControlCircuitAdmittanceClosed C := by
  exact And.intro Ev.closedLoopStabilityClosed
    (And.intro Ev.feedforwardCompensationClosed
      (And.intro Ev.disturbanceRejectionClosed Ev.setpointTrackingClosed))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
