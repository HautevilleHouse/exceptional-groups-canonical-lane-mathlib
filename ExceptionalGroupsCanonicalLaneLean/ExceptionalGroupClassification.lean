import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure ExceptionalGroupClassificationPackage where
  rootSystemPackage : RootSystemPackage
  lieAlgebraPackage : ExceptionalLieAlgebraPackage
  weylGroupPackage : WeylGroupPackage
  constructionPackage : ExceptionalGroupConstructionPackage
  classificationComplete : Prop
  listIncludesE6E7E8F4G2 : Prop

structure ExceptionalGroupClassificationEvidence (C : ExceptionalGroupClassificationPackage) where
  classificationCompleteClosed : C.classificationComplete
  listIncludesE6E7E8F4G2Closed : C.listIncludesE6E7E8F4G2

def ExceptionalGroupClassificationClosed (C : ExceptionalGroupClassificationPackage) : Prop :=
  C.classificationComplete ∧ C.listIncludesE6E7E8F4G2

theorem exceptional_group_classification_closed_from_evidence
    (C : ExceptionalGroupClassificationPackage) (E : ExceptionalGroupClassificationEvidence C) :
    ExceptionalGroupClassificationClosed C := by
  exact And.intro E.classificationCompleteClosed E.listIncludesE6E7E8F4G2Closed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse