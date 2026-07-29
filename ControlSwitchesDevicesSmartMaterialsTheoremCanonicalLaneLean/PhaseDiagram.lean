import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Prop
  pressureRange : Prop
  phases : Type u
  phaseBoundaries : Prop
  criticalPoints : Prop
  transitionLines : Prop
  eutectoidPoint : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  criticalPointsClosed : P.criticalPoints
  transitionLinesClosed : P.transitionLines
  eutectoidPointClosed : P.eutectoidPoint

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundaries ∧
  P.criticalPoints ∧ P.transitionLines ∧ P.eutectoidPoint

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed (
    And.intro E.pressureRangeClosed (
      And.intro E.phaseBoundariesClosed (
        And.intro E.criticalPointsClosed (
          And.intro E.transitionLinesClosed E.eutectoidPointClosed))))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
