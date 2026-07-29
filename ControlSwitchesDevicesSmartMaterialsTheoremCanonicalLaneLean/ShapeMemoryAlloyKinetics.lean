import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure ShapeMemoryAlloyKineticsPackage where
  martensiteStartTemperature : Type u
  martensiteFinishTemperature : Type v
  austeniteStartTemperature : Type w
  austeniteFinishTemperature : Type x
  transformationStrain : Prop
  recoveryStress : Prop
  cyclicStability : Prop
  actuationWorkDensity : Prop

structure ShapeMemoryAlloyKineticsEvidence (S : ShapeMemoryAlloyKineticsPackage) where
  transformationStrainClosed : S.transformationStrain
  recoveryStressClosed : S.recoveryStress
  cyclicStabilityClosed : S.cyclicStability
  actuationWorkDensityClosed : S.actuationWorkDensity

def ShapeMemoryAlloyKineticsClosed (S : ShapeMemoryAlloyKineticsPackage) : Prop :=
  S.transformationStrain ∧ S.recoveryStress ∧
  S.cyclicStability ∧ S.actuationWorkDensity

theorem shape_memory_alloy_kinetics_closed_from_evidence
    (S : ShapeMemoryAlloyKineticsPackage) (Ev : ShapeMemoryAlloyKineticsEvidence S) :
    ShapeMemoryAlloyKineticsClosed S := by
  exact And.intro Ev.transformationStrainClosed
    (And.intro Ev.recoveryStressClosed
      (And.intro Ev.cyclicStabilityClosed Ev.actuationWorkDensityClosed))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
