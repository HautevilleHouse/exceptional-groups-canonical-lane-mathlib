import Mathlib.Algebra.Lie.Basic

/-!
# Lie Algebra Package
-/

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure LieAlgebraPackage where
  field : Type u
  lieAlgebra : Type v
  lieBracket : lieAlgebra → lieAlgebra → lieAlgebra
  jacobiIdentity : Prop
  antiSymmetry : Prop
  finiteDimensional : Prop
  semisimple : Prop
  killingForm : Type w
  killingFormNondegenerate : Prop

structure LieAlgebraEvidence (G : LieAlgebraPackage) where
  jacobiIdentityClosed : G.jacobiIdentity
  antiSymmetryClosed : G.antiSymmetry
  finiteDimensionalClosed : G.finiteDimensional
  semisimpleClosed : G.semisimple
  killingFormNondegenerateClosed : G.killingFormNondegenerate

def LieAlgebraClosed (G : LieAlgebraPackage) : Prop :=
  G.jacobiIdentity ∧ G.antiSymmetry ∧ G.finiteDimensional ∧
  G.semisimple ∧ G.killingFormNondegenerate

theorem lie_algebra_closed_from_evidence (G : LieAlgebraPackage)
    (E : LieAlgebraEvidence G) : LieAlgebraClosed G := by
  exact And.intro E.jacobiIdentityClosed
    (And.intro E.antiSymmetryClosed
      (And.intro E.finiteDimensionalClosed
        (And.intro E.semisimpleClosed E.killingFormNondegenerateClosed)))

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse