import HautevilleHouse.ExceptionalGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure ExceptionalGroupAdmittedObject where
  groupType : Type
  classificationComplete : Prop
  conclusion : classificationComplete

def ExceptionalGroupWitnessClosed (O : ExceptionalGroupAdmittedObject) : Prop :=
  O.classificationComplete

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse