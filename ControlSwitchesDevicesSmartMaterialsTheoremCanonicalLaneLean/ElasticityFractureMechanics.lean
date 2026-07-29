import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheorem

structure ElasticityPackage where
  elasticTensor : Type u
  stressStrainRelation : Prop
  yieldCriterion : Prop
  fractureToughness : Prop
  crackPropagationModel : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticTensorDefined : E.elasticTensor
  stressStrainRelationClosed : E.stressStrainRelation
  yieldCriterionClosed : E.yieldCriterion
  fractureToughnessClosed : E.fractureToughness
  crackPropagationModelClosed : E.crackPropagationModel

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.yieldCriterion ∧ E.fractureToughness ∧ E.crackPropagationModel

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.yieldCriterionClosed
      (And.intro Ev.fractureToughnessClosed Ev.crackPropagationModelClosed))

end ControlSwitchesDevicesSmartMaterialsTheorem
end HautevilleHouse