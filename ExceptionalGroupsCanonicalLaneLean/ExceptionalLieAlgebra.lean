import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure ExceptionalLieAlgebraPackage where
  type : String
  dimension : ℕ
  rootSystem : RootSystemData
  killingFormNondegenerate : Prop
  simple : Prop

structure ExceptionalLieAlgebraEvidence (L : ExceptionalLieAlgebraPackage) where
  killingFormNondegenerateClosed : L.killingFormNondegenerate
  simpleClosed : L.simple

def ExceptionalLieAlgebraClosed (L : ExceptionalLieAlgebraPackage) : Prop :=
  L.killingFormNondegenerate ∧ L.simple

theorem exceptional_lie_algebra_closed_from_evidence (L : ExceptionalLieAlgebraPackage)
    (E : ExceptionalLieAlgebraEvidence L) : ExceptionalLieAlgebraClosed L := by
  exact And.intro E.killingFormNondegenerateClosed E.simpleClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse