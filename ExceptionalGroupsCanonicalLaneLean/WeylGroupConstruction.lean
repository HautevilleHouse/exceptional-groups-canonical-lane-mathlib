import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure WeylGroupPackage where
  rootSystem : RootSystemData
  generators : List (ℕ → ℕ)
  relations : List (String × String)
  finite : Prop
  crystallographic : Prop

structure WeylGroupEvidence (W : WeylGroupPackage) where
  finiteClosed : W.finite
  crystallographicClosed : W.crystallographic

def WeylGroupClosed (W : WeylGroupPackage) : Prop :=
  W.finite ∧ W.crystallographic

theorem weyl_group_closed_from_evidence (W : WeylGroupPackage) (E : WeylGroupEvidence W) :
    WeylGroupClosed W := by
  exact And.intro E.finiteClosed E.crystallographicClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse