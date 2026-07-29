import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage (E : ElasticityTensorPackage C) where
  crackPropagation : Prop
  stressIntensityFactor : Prop
  fractureToughness : Prop
  griffithCriterion : Prop
  parisLaw : Prop

structure FractureMechanicsEvidence {E : ElasticityTensorPackage C} (F : FractureMechanicsPackage E) where
  crackPropagationClosed : F.crackPropagation
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  griffithCriterionClosed : F.griffithCriterion
  parisLawClosed : F.parisLaw

def FractureMechanicsClosed {E : ElasticityTensorPackage C} (F : FractureMechanicsPackage E) : Prop :=
  F.crackPropagation ∧ F.stressIntensityFactor ∧ F.fractureToughness ∧ F.griffithCriterion ∧ F.parisLaw

theorem fracture_mechanics_closed_from_evidence {E : ElasticityTensorPackage C} (F : FractureMechanicsPackage E) (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro Ev.crackPropagationClosed (And.intro Ev.stressIntensityFactorClosed (And.intro Ev.fractureToughnessClosed (And.intro Ev.griffithCriterionClosed Ev.parisLawClosed)))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse