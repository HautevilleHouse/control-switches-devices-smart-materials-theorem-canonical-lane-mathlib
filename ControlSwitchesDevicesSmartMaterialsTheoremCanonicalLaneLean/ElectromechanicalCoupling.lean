import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure ElectromechanicalCouplingPackage where
  piezoelectricConstant : Type u
  dielectricPermittivity : Type v
  elasticStiffness : Type w
  couplingMatrix : Type x
  converseEffectProportionality : Prop
  directEffectProportionality : Prop
  energyHarvestingEfficiency : Prop
  couplingCoefficientDefined : Prop

structure ElectromechanicalCouplingEvidence (E : ElectromechanicalCouplingPackage) where
  converseEffectProportionalityClosed : E.converseEffectProportionality
  directEffectProportionalityClosed : E.directEffectProportionality
  energyHarvestingEfficiencyClosed : E.energyHarvestingEfficiency
  couplingCoefficientDefinedClosed : E.couplingCoefficientDefined

def ElectromechanicalCouplingClosed (E : ElectromechanicalCouplingPackage) : Prop :=
  E.converseEffectProportionality ∧ E.directEffectProportionality ∧
  E.energyHarvestingEfficiency ∧ E.couplingCoefficientDefined

theorem electromechanical_coupling_closed_from_evidence
    (E : ElectromechanicalCouplingPackage) (Ev : ElectromechanicalCouplingEvidence E) :
    ElectromechanicalCouplingClosed E := by
  exact And.intro Ev.converseEffectProportionalityClosed
    (And.intro Ev.directEffectProportionalityClosed
      (And.intro Ev.energyHarvestingEfficiencyClosed Ev.couplingCoefficientDefinedClosed))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
