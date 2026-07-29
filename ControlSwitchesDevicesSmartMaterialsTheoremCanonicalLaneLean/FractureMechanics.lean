import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Prop
  stressField : Prop
  strainField : Prop
  energyReleaseRate : Prop
  fractureToughness : Prop
  propagationCriterion : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackGeometryClosed : F.crackGeometry
  stressFieldClosed : F.stressField
  strainFieldClosed : F.strainField
  energyReleaseRateClosed : F.energyReleaseRate
  fractureToughnessClosed : F.fractureToughness
  propagationCriterionClosed : F.propagationCriterion

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackGeometry ∧ F.stressField ∧ F.strainField ∧
  F.energyReleaseRate ∧ F.fractureToughness ∧ F.propagationCriterion

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro Ev.crackGeometryClosed (
    And.intro Ev.stressFieldClosed (
      And.intro Ev.strainFieldClosed (
        And.intro Ev.energyReleaseRateClosed (
          And.intro Ev.fractureToughnessClosed Ev.propagationCriterionClosed))))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
