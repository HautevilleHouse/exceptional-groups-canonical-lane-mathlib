import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure ExceptionalGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ExceptionalGroupAdmittedObject where
  space : ExceptionalGroupSpace
  simpleLieAlgebra : Prop
  rootSystem : Prop
  dynkinDiagram : Prop
  classificationConclusion : Prop
  conclusion : classificationConclusion

def ExceptionalGroupWitnessClosed (O : ExceptionalGroupAdmittedObject) : Prop :=
  O.classificationConclusion

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse