import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure RepresentationTheoryPackage where
  groupType : String
  dimension : ℕ
  irreducible : Prop
  characterTable : List (List ℂ)
  tensorProductDecomposition : Prop

structure RepresentationTheoryEvidence (R : RepresentationTheoryPackage) where
  irreducibleClosed : R.irreducible
  tensorProductDecompositionClosed : R.tensorProductDecomposition

def RepresentationTheoryClosed (R : RepresentationTheoryPackage) : Prop :=
  R.irreducible ∧ R.tensorProductDecomposition

theorem representation_theory_closed_from_evidence (R : RepresentationTheoryPackage)
    (E : RepresentationTheoryEvidence R) : RepresentationTheoryClosed R := by
  exact And.intro E.irreducibleClosed E.tensorProductDecompositionClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse