import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : ExceptionalGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExceptionalGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse