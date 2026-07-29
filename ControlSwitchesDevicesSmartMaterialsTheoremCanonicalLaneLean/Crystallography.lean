import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLattice : Type u
  unitCellVolume : Prop
  symmetryGroup : Prop
  basisVectors : Prop

structure CrystalLatticeEvidence (C : CrystalLatticePackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellVolumeClosed : C.unitCellVolume
  symmetryGroupClosed : C.symmetryGroup
  basisVectorsClosed : C.basisVectors

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.bravaisLattice ∧ C.unitCellVolume ∧ C.symmetryGroup ∧ C.basisVectors

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage) (E : CrystalLatticeEvidence C) : CrystalLatticeClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.unitCellVolumeClosed (And.intro E.symmetryGroupClosed E.basisVectorsClosed))

end ControlSwitchesDevicesSmartMaterialsTheoremCanonicalLaneLean
end HautevilleHouse