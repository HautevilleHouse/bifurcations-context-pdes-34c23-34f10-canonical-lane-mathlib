import HautevilleHouse.BifurcationsContextPdes34c2334f10CanonicalLaneLean.CenterManifoldReduction

/-!
# Hopf Bifurcation Theorem Package
-/

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure HopfBifurcationPackage {P : BifurcationPDEPackage}
    {C : CenterManifoldPackage P} where
  pairOfEigenvaluesCrossImaginaryAxis : Prop
  nonresonanceCondition : Prop
  periodicOrbitExists : Prop
  stabilityOfOrbit : Prop

structure HopfBifurcationEvidence {P : BifurcationPDEPackage}
    {C : CenterManifoldPackage P} (H : HopfBifurcationPackage C) where
  pairOfEigenvaluesCrossImaginaryAxisClosed : H.pairOfEigenvaluesCrossImaginaryAxis
  nonresonanceConditionClosed : H.nonresonanceCondition
  periodicOrbitExistsClosed : H.periodicOrbitExists
  stabilityOfOrbitClosed : H.stabilityOfOrbit

def HopfBifurcationClosed {P : BifurcationPDEPackage}
    {C : CenterManifoldPackage P} (H : HopfBifurcationPackage C) : Prop :=
  H.pairOfEigenvaluesCrossImaginaryAxis ∧ H.nonresonanceCondition ∧
  H.periodicOrbitExists ∧ H.stabilityOfOrbit

theorem hopf_bifurcation_closed_from_evidence {P : BifurcationPDEPackage}
    {C : CenterManifoldPackage P} (H : HopfBifurcationPackage C)
    (E : HopfBifurcationEvidence H) : HopfBifurcationClosed H := by
  exact And.intro E.pairOfEigenvaluesCrossImaginaryAxisClosed
    (And.intro E.nonresonanceConditionClosed
      (And.intro E.periodicOrbitExistsClosed E.stabilityOfOrbitClosed))

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse