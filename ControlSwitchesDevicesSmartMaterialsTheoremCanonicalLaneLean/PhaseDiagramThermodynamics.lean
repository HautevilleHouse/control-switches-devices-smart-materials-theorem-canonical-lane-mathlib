import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure PhaseDiagram where
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Type u
  triplePoint : Prop
  criticalPoint : Prop

structure ThermodynamicState where
  phaseDiagram : PhaseDiagram
  gibbsFreeEnergy : Prop
  entropy : Prop
  enthalpy : Prop
  specificHeat : Prop

structure ThermodynamicsEvidence (T : ThermodynamicState) where
  phaseDiagramClosed : T.phaseDiagram.triplePoint ∧ T.phaseDiagram.criticalPoint
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  entropyClosed : T.entropy
  enthalpyClosed : T.enthalpy
  specificHeatClosed : T.specificHeat

def ThermodynamicsClosed (T : ThermodynamicState) : Prop :=
  (T.phaseDiagram.triplePoint ∧ T.phaseDiagram.criticalPoint) ∧
  T.gibbsFreeEnergy ∧ T.entropy ∧ T.enthalpy ∧ T.specificHeat

theorem thermodynamics_closed_from_evidence (T : ThermodynamicState) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.phaseDiagramClosed (And.intro E.gibbsFreeEnergyClosed (And.intro E.entropyClosed (And.intro E.enthalpyClosed E.specificHeatClosed)))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse