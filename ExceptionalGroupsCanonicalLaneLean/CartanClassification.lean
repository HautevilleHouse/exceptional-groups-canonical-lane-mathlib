import ExceptionalGroupsCanonicalLaneLean.RootSystemPackage

/-!
# Cartan Classification Package
-/

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure CartanClassificationPackage {G : LieAlgebraPackage}
    (R : RootSystemPackage G) where
  cartanSubalgebra : Type u
  cartanMatrix : Type v
  dynkinDiagram : Type w
  classificationEnumeration : Prop
  exceptionalTypesIdentified : Prop

structure CartanClassificationEvidence {G : LieAlgebraPackage}
    {R : RootSystemPackage G} (C : CartanClassificationPackage R) where
  classificationEnumerationClosed : C.classificationEnumeration
  exceptionalTypesIdentifiedClosed : C.exceptionalTypesIdentified

def CartanClassificationClosed {G : LieAlgebraPackage}
    {R : RootSystemPackage G} (C : CartanClassificationPackage R) : Prop :=
  C.classificationEnumeration ∧ C.exceptionalTypesIdentified

theorem cartan_classification_closed_from_evidence
    {G : LieAlgebraPackage} {R : RootSystemPackage G}
    (C : CartanClassificationPackage R) (E : CartanClassificationEvidence C) :
    CartanClassificationClosed C := by
  exact And.intro E.classificationEnumerationClosed E.exceptionalTypesIdentifiedClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse