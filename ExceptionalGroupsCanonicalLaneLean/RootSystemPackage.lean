import ExceptionalGroupsCanonicalLaneLean.LieAlgebra

/-!
# Root System Package
-/

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure RootSystemPackage (G : LieAlgebraPackage) where
  rootSpace : Type u
  simpleRoots : List rootSpace
  positiveRoots : List rootSpace
  weylGroup : Type v
  weylGroupAction : Prop
  rootSystemAxioms : Prop

structure RootSystemEvidence {G : LieAlgebraPackage}
    (R : RootSystemPackage G) where
  weylGroupActionClosed : R.weylGroupAction
  rootSystemAxiomsClosed : R.rootSystemAxioms

def RootSystemClosed {G : LieAlgebraPackage}
    (R : RootSystemPackage G) : Prop :=
  R.weylGroupAction ∧ R.rootSystemAxioms

theorem root_system_closed_from_evidence
    {G : LieAlgebraPackage} (R : RootSystemPackage G)
    (E : RootSystemEvidence R) : RootSystemClosed R := by
  exact And.intro E.weylGroupActionClosed E.rootSystemAxiomsClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse