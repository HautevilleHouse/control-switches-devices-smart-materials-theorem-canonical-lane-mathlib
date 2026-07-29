import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage (C : CrystalStructurePackage) where
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  criticalPoints : Prop
  thermodynamicStability : Prop

structure PhaseDiagramEvidence {C : CrystalStructurePackage} (P : PhaseDiagramPackage C) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  criticalPointsClosed : P.criticalPoints
  thermodynamicStabilityClosed : P.thermodynamicStability

def PhaseDiagramClosed {C : CrystalStructurePackage} (P : PhaseDiagramPackage C) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundaries ∧ P.criticalPoints ∧ P.thermodynamicStability

theorem phase_diagram_closed_from_evidence {C : CrystalStructurePackage} (P : PhaseDiagramPackage C) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.pressureRangeClosed (And.intro E.phaseBoundariesClosed (And.intro E.criticalPointsClosed E.thermodynamicStabilityClosed)))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse