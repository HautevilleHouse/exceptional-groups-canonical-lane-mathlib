import ExceptionalGroupsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.LinearAlgebra.Matrix.Determinant

namespace HautevilleHouse
namespace ExceptionalGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ExceptionalSpace where
  carrier : Type
  algebra : ExceptionalLieAlgebra

structure ExceptionalAdmittedObject where
  space : ExceptionalSpace
  isExceptional : Prop
  classificationComplete : Prop
  typeDetermined : isExceptional → classificationComplete
  conclusion : classificationComplete

structure ExceptionalEndgameState where
  object : ExceptionalAdmittedObject

def ExceptionalWitnessClosed (O : ExceptionalAdmittedObject) : Prop :=
  O.classificationComplete

end ExceptionalGroupsCanonicalLaneLean
end HautevilleHouse
