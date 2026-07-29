import ExceptionalGroupsCanonicalLaneLean.LieAlgebraClassification

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure CartanMatrixData where
  type : String
  rank : Nat
  matrix : Matrix (Fin rank) (Fin rank) ℤ
  det : ℤ
  isPositiveDefinite : Prop
  symmetrizable : Prop

structure CartanMatrixPackage where
  matrices : List CartanMatrixData
  allExceptional : ∀ M ∈ matrices, M.type ∈ ["E6", "E7", "E8", "F4", "G2"]
  detCorrect : ∀ M ∈ matrices, M.det = 1 ∨ (M.type = "E6" ∧ M.det = 3) ∨ (M.type = "E7" ∧ M.det = 2)

structure CartanMatrixEvidence (C : CartanMatrixPackage) where
  allExceptionalClosed : C.allExceptional
  detCorrectClosed : C.detCorrect

def CartanMatrixClosed (C : CartanMatrixPackage) : Prop :=
  C.allExceptional ∧ C.detCorrect

theorem cartan_matrix_closed_from_evidence
    (C : CartanMatrixPackage) (E : CartanMatrixEvidence C) :
    CartanMatrixClosed C := by
  exact And.intro E.allExceptionalClosed E.detCorrectClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse
