import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure CrystalLattice (carrier : Type) where
  basisVectors : carrier → carrier → carrier
  periodicity : Prop
  symmetryGroup : Type

structure CrystallographyPhase where
  lattice : Type u
  bravaisClass : Prop
  reciprocalLattice : Type v
  structureFactor : Prop
  phaseIdentification : Prop

structure CrystallographyEvidence (C : CrystallographyPhase) where
  bravaisClassClosed : C.bravaisClass
  structureFactorClosed : C.structureFactor
  phaseIdentificationClosed : C.phaseIdentification

def CrystallographyClosed (C : CrystallographyPhase) : Prop :=
  C.bravaisClass ∧ C.structureFactor ∧ C.phaseIdentification

theorem crystallography_closed_from_evidence (C : CrystallographyPhase) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisClassClosed (And.intro E.structureFactorClosed E.phaseIdentificationClosed)

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse