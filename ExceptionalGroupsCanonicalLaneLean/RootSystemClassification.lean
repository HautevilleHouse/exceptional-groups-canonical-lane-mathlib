import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure RootSystemData where
  rank : ℕ
  simpleRoots : List (List ℤ)
  cartanMatrix : List (List ℤ)
  dynkinDiagram : Type

structure RootSystemPackage where
  rootSystem : RootSystemData
  crystallographic : Prop
  simplyLaced : Prop
  classificationComplete : Prop

structure RootSystemEvidence (R : RootSystemPackage) where
  crystallographicClosed : R.crystallographic
  simplyLacedClosed : R.simplyLaced
  classificationCompleteClosed : R.classificationComplete

def RootSystemClosed (R : RootSystemPackage) : Prop :=
  R.crystallographic ∧ R.simplyLaced ∧ R.classificationComplete

theorem root_system_closed_from_evidence (R : RootSystemPackage) (E : RootSystemEvidence R) :
    RootSystemClosed R := by
  exact And.intro E.crystallographicClosed
    (And.intro E.simplyLacedClosed E.classificationCompleteClosed)

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse