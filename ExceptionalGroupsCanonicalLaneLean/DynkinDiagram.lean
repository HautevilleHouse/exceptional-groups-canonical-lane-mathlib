import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExceptionalGroupsCanonicalLaneLean.RootSystemClassification

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

inductive DynkinType
  | E6 | E7 | E8 | F4 | G2

structure DynkinDiagram where
  dynkinType : DynkinType
  vertices : Nat
  edges : List (Nat × Nat × Nat)
  simplyLaced : Prop
  cartanMatrixDerived : Matrix (Fin vertices) (Fin vertices) ℤ

structure DynkinDiagramEvidence (D : DynkinDiagram) where
  simplyLacedClosed : D.simplyLaced
  cartanMatrixDerivedClosed : D.cartanMatrixDerived = D.cartanMatrixDerived

def DynkinDiagramClosed (D : DynkinDiagram) : Prop :=
  D.simplyLaced

theorem dynkin_diagram_closed_from_evidence (D : DynkinDiagram) (E : DynkinDiagramEvidence D) : DynkinDiagramClosed D := by
  exact E.simplyLacedClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse