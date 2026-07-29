import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ExceptionalGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse