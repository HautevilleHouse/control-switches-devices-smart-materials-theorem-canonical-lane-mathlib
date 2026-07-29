import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure ElasticityTensorPackage (C : CrystalStructurePackage) where
  stressTensor : Type u
  strainTensor : Type v
  stiffnessTensor : Type w
  complianceTensor : Type x
  hookesLaw : Prop
  elasticSymmetries : Prop

structure ElasticityTensorEvidence {C : CrystalStructurePackage} (E : ElasticityTensorPackage C) where
  hookesLawClosed : E.hookesLaw
  elasticSymmetriesClosed : E.elasticSymmetries

def ElasticityTensorClosed {C : CrystalStructurePackage} (E : ElasticityTensorPackage C) : Prop :=
  E.hookesLaw ∧ E.elasticSymmetries

theorem elasticity_tensor_closed_from_evidence {C : CrystalStructurePackage} (E : ElasticityTensorPackage C) (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.hookesLawClosed Ev.elasticSymmetriesClosed

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse