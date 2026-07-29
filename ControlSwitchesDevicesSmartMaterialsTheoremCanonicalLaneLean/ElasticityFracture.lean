import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure ElasticityModuli where
  youngModulus : Prop
  shearModulus : Prop
  bulkModulus : Prop
  poissonRatio : Prop

structure FractureCriterion where
  stressIntensityFactor : Prop
  energyReleaseRate : Prop
  fractureToughness : Prop
  crackPropagationCondition : Prop

structure ElasticityFracture where
  moduli : ElasticityModuli
  fracture : FractureCriterion
  deformationTheory : Prop
  failureSurface : Prop

structure ElasticityFractureEvidence (E : ElasticityFracture) where
  moduliClosed : E.moduli.youngModulus ∧ E.moduli.shearModulus ∧ E.moduli.bulkModulus ∧ E.moduli.poissonRatio
  fractureClosed : E.fracture.stressIntensityFactor ∧ E.fracture.energyReleaseRate ∧ E.fracture.fractureToughness ∧ E.fracture.crackPropagationCondition
  deformationTheoryClosed : E.deformationTheory
  failureSurfaceClosed : E.failureSurface

def ElasticityFractureClosed (E : ElasticityFracture) : Prop :=
  (E.moduli.youngModulus ∧ E.moduli.shearModulus ∧ E.moduli.bulkModulus ∧ E.moduli.poissonRatio) ∧
  (E.fracture.stressIntensityFactor ∧ E.fracture.energyReleaseRate ∧ E.fracture.fractureToughness ∧ E.fracture.crackPropagationCondition) ∧
  E.deformationTheory ∧ E.failureSurface

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracture) (Ev : ElasticityFractureEvidence E) : ElasticityFractureClosed E := by
  exact And.intro Ev.moduliClosed (And.intro Ev.fractureClosed (And.intro Ev.deformationTheoryClosed Ev.failureSurfaceClosed))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse