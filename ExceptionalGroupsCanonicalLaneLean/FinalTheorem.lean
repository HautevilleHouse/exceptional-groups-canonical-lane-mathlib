import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

def ConstrainedExceptionalGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_exceptional_group_endgame (A : AdmissibleClass) :
    ConstrainedExceptionalGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse