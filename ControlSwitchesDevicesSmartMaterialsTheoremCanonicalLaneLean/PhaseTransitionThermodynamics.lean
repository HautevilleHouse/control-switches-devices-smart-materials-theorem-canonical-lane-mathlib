import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure PhaseTransitionPackage where
  criticalTemperature : Type u
  orderParameter : Type v
  freeEnergyFunctional : Type w
  hysteresisWidth : Type x
  firstOrderTransition : Prop
  secondOrderTransition : Prop
  latentHeat : Prop
  entropyChange : Prop

structure PhaseTransitionEvidence (P : PhaseTransitionPackage) where
  firstOrderTransitionClosed : P.firstOrderTransition
  secondOrderTransitionClosed : P.secondOrderTransition
  latentHeatClosed : P.latentHeat
  entropyChangeClosed : P.entropyChange

def PhaseTransitionClosed (P : PhaseTransitionPackage) : Prop :=
  P.firstOrderTransition ∧ P.secondOrderTransition ∧
  P.latentHeat ∧ P.entropyChange

theorem phase_transition_closed_from_evidence
    (P : PhaseTransitionPackage) (Ev : PhaseTransitionEvidence P) :
    PhaseTransitionClosed P := by
  exact And.intro Ev.firstOrderTransitionClosed
    (And.intro Ev.secondOrderTransitionClosed
      (And.intro Ev.latentHeatClosed Ev.entropyChangeClosed))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
