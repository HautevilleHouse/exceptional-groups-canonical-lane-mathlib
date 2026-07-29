import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure DynkinClassificationPackage (A : AdmissibleClass) where
  rootSystemClassified : Prop
  weylGroupOrderComputed : Prop
  cartanMatrixDerived : Prop
  coxeterLabelAssociated : Prop

structure DynkinClassificationEvidence {A : AdmissibleClass} (D : DynkinClassificationPackage A) where
  rootSystemClassifiedClosed : D.rootSystemClassified
  weylGroupOrderComputedClosed : D.weylGroupOrderComputed
  cartanMatrixDerivedClosed : D.cartanMatrixDerived
  coxeterLabelAssociatedClosed : D.coxeterLabelAssociated

def DynkinClassificationClosed {A : AdmissibleClass} (D : DynkinClassificationPackage A) : Prop :=
  D.rootSystemClassified ∧ D.weylGroupOrderComputed ∧ D.cartanMatrixDerived ∧ D.coxeterLabelAssociated

theorem dynkin_classification_closed_from_evidence
    {A : AdmissibleClass} (D : DynkinClassificationPackage A) (E : DynkinClassificationEvidence D) :
    DynkinClassificationClosed D := by
  exact And.intro E.rootSystemClassifiedClosed
    (And.intro E.weylGroupOrderComputedClosed
      (And.intro E.cartanMatrixDerivedClosed E.coxeterLabelAssociatedClosed))

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse