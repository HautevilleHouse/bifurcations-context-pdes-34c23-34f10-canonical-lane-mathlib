import HautevilleHouse.BifurcationsContextPdes34c2334f10CanonicalLaneLean.BifurcationPDE

/-!
# Center Manifold Reduction Package
-/

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure CenterManifoldPackage {P : BifurcationPDEPackage} where
  centerManifoldExists : Prop
  reductionValid : Prop
  dimension : Nat
  localDynamics : Prop

structure CenterManifoldEvidence {P : BifurcationPDEPackage}
    (C : CenterManifoldPackage P) where
  centerManifoldExistsClosed : C.centerManifoldExists
  reductionValidClosed : C.reductionValid
  localDynamicsClosed : C.localDynamics

def CenterManifoldClosed {P : BifurcationPDEPackage}
    (C : CenterManifoldPackage P) : Prop :=
  C.centerManifoldExists ∧ C.reductionValid ∧ C.localDynamics

theorem center_manifold_closed_from_evidence {P : BifurcationPDEPackage}
    (C : CenterManifoldPackage P) (E : CenterManifoldEvidence C) :
    CenterManifoldClosed C := by
  exact And.intro E.centerManifoldExistsClosed
    (And.intro E.reductionValidClosed E.localDynamicsClosed)

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse