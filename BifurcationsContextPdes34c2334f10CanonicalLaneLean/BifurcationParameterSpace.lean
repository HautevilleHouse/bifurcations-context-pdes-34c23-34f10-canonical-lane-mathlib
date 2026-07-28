import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure BifurcationParameterSpace where
  parameterManifold : Type u
  topology : TopologicalSpace parameterManifold
  dimension : ℕ
  smoothStructure : Prop
  localCoordinates : Prop

structure BifurcationParameterSpaceEvidence (P : BifurcationParameterSpace) where
  dimensionClosed : P.dimension = 1
  smoothStructureClosed : P.smoothStructure
  localCoordinatesClosed : P.localCoordinates

def BifurcationParameterSpaceClosed (P : BifurcationParameterSpace) : Prop :=
  P.dimension = 1 ∧ P.smoothStructure ∧ P.localCoordinates

theorem bifurcation_parameter_space_closed_from_evidence
    (P : BifurcationParameterSpace) (E : BifurcationParameterSpaceEvidence P) :
    BifurcationParameterSpaceClosed P := by
  exact And.intro E.dimensionClosed (And.intro E.smoothStructureClosed E.localCoordinatesClosed)

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse