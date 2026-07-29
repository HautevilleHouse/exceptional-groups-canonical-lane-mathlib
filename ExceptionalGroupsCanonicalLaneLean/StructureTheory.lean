import ExceptionalGroupsCanonicalLaneLean.CartanClassification

/-!
# Structure Theory Package
-/

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure StructureTheoryPackage {G : LieAlgebraPackage}
    {R : RootSystemPackage G} (C : CartanClassificationPackage R) where
  simpleRootsConstructed : Prop
  weylGroupConstructed : Prop
  dynkinDiagramConstructed : Prop
  serreRelationsValid : Prop
  highestWeightTheory : Prop

structure StructureTheoryEvidence {G : LieAlgebraPackage}
    {R : RootSystemPackage G} {C : CartanClassificationPackage R}
    (S : StructureTheoryPackage C) where
  simpleRootsConstructedClosed : S.simpleRootsConstructed
  weylGroupConstructedClosed : S.weylGroupConstructed
  dynkinDiagramConstructedClosed : S.dynkinDiagramConstructed
  serreRelationsValidClosed : S.serreRelationsValid
  highestWeightTheoryClosed : S.highestWeightTheory

def StructureTheoryClosed {G : LieAlgebraPackage}
    {R : RootSystemPackage G} {C : CartanClassificationPackage R}
    (S : StructureTheoryPackage C) : Prop :=
  S.simpleRootsConstructed ∧ S.weylGroupConstructed ∧
  S.dynkinDiagramConstructed ∧ S.serreRelationsValid ∧
  S.highestWeightTheory

theorem structure_theory_closed_from_evidence
    {G : LieAlgebraPackage} {R : RootSystemPackage G} {C : CartanClassificationPackage R}
    (S : StructureTheoryPackage C) (Ev : StructureTheoryEvidence S) :
    StructureTheoryClosed S := by
  exact And.intro Ev.simpleRootsConstructedClosed
    (And.intro Ev.weylGroupConstructedClosed
      (And.intro Ev.dynkinDiagramConstructedClosed
        (And.intro Ev.serreRelationsValidClosed Ev.highestWeightTheoryClosed)))

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse