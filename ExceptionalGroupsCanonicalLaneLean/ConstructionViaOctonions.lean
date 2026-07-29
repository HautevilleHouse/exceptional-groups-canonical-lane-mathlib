import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExceptionalGroupsCanonicalLaneLean.LieAlgebraClassification

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure ConstructionViaOctonions where
  octonionAlgebra : Type
  derivationAlgebra : Type
  magicSquare : Prop
  freudenthalMagicSquare : Prop
  constructionComplete : Prop

structure ConstructionViaOctonionsEvidence (C : ConstructionViaOctonions) where
  octonionAlgebraDefined : C.octonionAlgebra = Quaternion × ℍ
  derivationAlgebraDefined : C.derivationAlgebra = 𝔤₂
  magicSquareClosed : C.magicSquare
  freudenthalMagicSquareClosed : C.freudenthalMagicSquare
  constructionCompleteClosed : C.constructionComplete

def ConstructionViaOctonionsClosed (C : ConstructionViaOctonions) : Prop :=
  C.constructionComplete

theorem construction_via_octonions_closed_from_evidence (C : ConstructionViaOctonions) (E : ConstructionViaOctonionsEvidence C) : ConstructionViaOctonionsClosed C :=
  E.constructionCompleteClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse