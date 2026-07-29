import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  symmetryProperties : Prop
  positiveDefiniteness : Prop
  isotropicComponent : Prop
  anisotropicComponent : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  stiffnessTensorClosed : E.stiffnessTensor
  complianceTensorClosed : E.complianceTensor
  symmetryPropertiesClosed : E.symmetryProperties
  positiveDefinitenessClosed : E.positiveDefiniteness
  isotropicComponentClosed : E.isotropicComponent
  anisotropicComponentClosed : E.anisotropicComponent

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.stiffnessTensor ∧ E.complianceTensor ∧ E.symmetryProperties ∧
  E.positiveDefiniteness ∧ E.isotropicComponent ∧ E.anisotropicComponent

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.stiffnessTensorClosed (
    And.intro Ev.complianceTensorClosed (
      And.intro Ev.symmetryPropertiesClosed (
        And.intro Ev.positiveDefinitenessClosed (
          And.intro Ev.isotropicComponentClosed Ev.anisotropicComponentClosed))))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
