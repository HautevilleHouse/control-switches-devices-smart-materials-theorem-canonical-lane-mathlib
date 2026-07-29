import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheorem

structure PhaseDiagramPackage where
  temperatureRange : Type u
  pressureRange : Type v
  phaseBoundaryDefined : Prop
  criticalPointsEnumerated : Prop
  hysteresisCharacterized : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundaryDefinedClosed : P.phaseBoundaryDefined
  criticalPointsEnumeratedClosed : P.criticalPointsEnumerated
  hysteresisCharacterizedClosed : P.hysteresisCharacterized

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaryDefined ∧ P.criticalPointsEnumerated ∧ P.hysteresisCharacterized

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundaryDefinedClosed
    (And.intro E.criticalPointsEnumeratedClosed E.hysteresisCharacterizedClosed)

end ControlSwitchesDevicesSmartMaterialsTheorem
end HautevilleHouse