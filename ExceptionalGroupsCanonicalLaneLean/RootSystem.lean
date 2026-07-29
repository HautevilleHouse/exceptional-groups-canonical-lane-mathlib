import ExceptionalGroupsCanonicalLaneLean.LieAlgebraClassification

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure RootSystemData where
  type : String
  rootSet : Finset (Fin rank → ℤ)
  simpleRoots : List (Fin rank → ℤ)
  weylGroupOrder : ℕ
  isReduced : Prop
  isCrystallographic : Prop

structure RootSystemPackage where
  systems : List RootSystemData
  allExceptional : ∀ S ∈ systems, S.type ∈ ["E6", "E7", "E8", "F4", "G2"]
  weylOrdersCorrect : ∀ S ∈ systems, S.weylGroupOrder ∈ {51840, 2903040, 696729600, 1152, 12}

structure RootSystemEvidence (C : RootSystemPackage) where
  allExceptionalClosed : C.allExceptional
  weylOrdersCorrectClosed : C.weylOrdersCorrect

def RootSystemClosed (C : RootSystemPackage) : Prop :=
  C.allExceptional ∧ C.weylOrdersCorrect

theorem root_system_closed_from_evidence
    (C : RootSystemPackage) (E : RootSystemEvidence C) :
    RootSystemClosed C := by
  exact And.intro E.allExceptionalClosed E.weylOrdersCorrectClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse
