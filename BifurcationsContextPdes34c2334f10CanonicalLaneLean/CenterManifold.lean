import HautevilleHouse.BifurcationsContextPdes34c2334f10CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure CenterManifoldPackage where
  equilibrium : BifurcationSpace
  linearization : Type
  spectralDecomposition : Prop
  centerManifoldExists : Prop
  reductionTheorem : Prop
  centerManifoldDim : Nat

structure CenterManifoldEvidence (C : CenterManifoldPackage) where
  centerManifoldExistsClosed : C.centerManifoldExists
  reductionTheoremClosed : C.reductionTheorem

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop :=
  C.centerManifoldExists ∧ C.reductionTheorem

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage)
    (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.centerManifoldExistsClosed E.reductionTheoremClosed

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse