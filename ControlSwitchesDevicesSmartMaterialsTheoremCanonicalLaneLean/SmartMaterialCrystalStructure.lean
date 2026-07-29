import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure CrystalStructurePackage where
  latticeVectors : Type u
  bravaisLattice : Prop
  unitCellVolume : Prop
  symmetryGroup : Prop
  xrayDiffractionPattern : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellVolumeClosed : C.unitCellVolume
  symmetryGroupClosed : C.symmetryGroup
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.bravaisLattice ∧ C.unitCellVolume ∧ C.symmetryGroup ∧ C.xrayDiffractionPattern

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.unitCellVolumeClosed (And.intro E.symmetryGroupClosed E.xrayDiffractionPatternClosed))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse