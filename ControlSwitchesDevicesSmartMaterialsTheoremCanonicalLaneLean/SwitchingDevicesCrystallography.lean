import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheorem

structure CrystallographyPackage where
  latticeSymmetryGroup : Type u
  unitCellBasis : Type v
  bravaisLatticeClassified : Prop
  atomicPositionsDetermined : Prop
  symmetryOperationsListed : Prop
  phaseTransitionTemperature : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  atomicPositionsDeterminedClosed : C.atomicPositionsDetermined
  symmetryOperationsListedClosed : C.symmetryOperationsListed
  phaseTransitionTemperatureClosed : C.phaseTransitionTemperature

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.atomicPositionsDetermined ∧
  C.symmetryOperationsListed ∧ C.phaseTransitionTemperature

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.atomicPositionsDeterminedClosed
      (And.intro E.symmetryOperationsListedClosed E.phaseTransitionTemperatureClosed))

end ControlSwitchesDevicesSmartMaterialsTheorem
end HautevilleHouse