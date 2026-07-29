import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure ExceptionalGroupConstructionPackage where
  type : String
  lieAlgebra : ExceptionalLieAlgebraPackage
  weylGroup : WeylGroupPackage
  simplyConnected : Prop
  adjointForm : Prop

structure ExceptionalGroupConstructionEvidence (G : ExceptionalGroupConstructionPackage) where
  simplyConnectedClosed : G.simplyConnected
  adjointFormClosed : G.adjointForm

def ExceptionalGroupConstructionClosed (G : ExceptionalGroupConstructionPackage) : Prop :=
  G.simplyConnected ∧ G.adjointForm

theorem exceptional_group_construction_closed_from_evidence
    (G : ExceptionalGroupConstructionPackage) (E : ExceptionalGroupConstructionEvidence G) :
    ExceptionalGroupConstructionClosed G := by
  exact And.intro E.simplyConnectedClosed E.adjointFormClosed

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse