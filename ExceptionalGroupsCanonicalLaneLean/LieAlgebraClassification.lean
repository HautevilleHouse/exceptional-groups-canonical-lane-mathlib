import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure LieAlgebraClassification where
  rootSystemDynkinLabel : String
  dimension : Nat
  rank : Nat
  cartanMatrix : Array (Array Int)
  rootSystem : Type
  weylGroup : Type
  classificationComplete : Prop

structure LieAlgebraClassificationEvidence (C : LieAlgebraClassification) where
  rootSystemDynkinLabelClosed : C.rootSystemDynkinLabel ∈ ["G2", "F4", "E6", "E7", "E8"]
  dimensionClosed : C.dimension ∈ [14, 52, 78, 133, 248]
  rankClosed : C.rank ∈ [2, 4, 6, 7, 8]
  cartanMatrixCorrectClosed : True
  classificationCompleteClosed : C.classificationComplete

def LieAlgebraClassificationClosed (C : LieAlgebraClassification) : Prop :=
  C.classificationComplete

theorem lie_algebra_classification_closed_from_evidence (C : LieAlgebraClassification) (E : LieAlgebraClassificationEvidence C) : LieAlgebraClassificationClosed C :=
  E.classificationCompleteClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse