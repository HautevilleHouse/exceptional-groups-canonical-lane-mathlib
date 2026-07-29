import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure ExceptionalIsomorphismPackage (D : DynkinClassificationPackage (A : AdmissibleClass)) where
  g2Construction : Prop
  f4Construction : Prop
  e6Construction : Prop
  e7Construction : Prop
  e8Construction : Prop
  isomorphismToLieGroup : Prop

structure ExceptionalIsomorphismEvidence {A : AdmissibleClass}
    {D : DynkinClassificationPackage A} (I : ExceptionalIsomorphismPackage D) where
  g2ConstructionClosed : I.g2Construction
  f4ConstructionClosed : I.f4Construction
  e6ConstructionClosed : I.e6Construction
  e7ConstructionClosed : I.e7Construction
  e8ConstructionClosed : I.e8Construction
  isomorphismToLieGroupClosed : I.isomorphismToLieGroup

def ExceptionalIsomorphismClosed {A : AdmissibleClass}
    {D : DynkinClassificationPackage A} (I : ExceptionalIsomorphismPackage D) : Prop :=
  I.g2Construction ∧ I.f4Construction ∧ I.e6Construction ∧ I.e7Construction ∧ I.e8Construction ∧ I.isomorphismToLieGroup

theorem exceptional_isomorphism_closed_from_evidence
    {A : AdmissibleClass} {D : DynkinClassificationPackage A}
    (I : ExceptionalIsomorphismPackage D) (E : ExceptionalIsomorphismEvidence I) :
    ExceptionalIsomorphismClosed I := by
  exact And.intro E.g2ConstructionClosed
    (And.intro E.f4ConstructionClosed
      (And.intro E.e6ConstructionClosed
        (And.intro E.e7ConstructionClosed
          (And.intro E.e8ConstructionClosed E.isomorphismToLieGroupClosed))))

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse