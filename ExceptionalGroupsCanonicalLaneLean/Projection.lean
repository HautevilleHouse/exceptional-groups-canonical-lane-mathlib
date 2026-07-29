import ExceptionalGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def exceptialProjection : Projection ExceptionalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem exceptial_projection_idempotent (x : ExceptionalEndgameState) :
    exceptialProjection.toFun (exceptialProjection.toFun x) = exceptialProjection.toFun x := by
  exact exceptialProjection.idempotent x

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse
