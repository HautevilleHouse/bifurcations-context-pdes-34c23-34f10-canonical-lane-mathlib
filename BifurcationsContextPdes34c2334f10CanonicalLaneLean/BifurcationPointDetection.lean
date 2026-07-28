import HautevilleHouse.BifurcationsContextPdes34c2334f10CanonicalLaneLean.ParameterSpace

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure BifurcationPointDetectionPackage (P : ParameterSpacePackage) where
  candidatePoint : P.parameterManifold
  eigenvalueCrossing : Prop
  kernelDimensionChange : Prop
  bifurcationDetected : Prop
  eigenvalueCrossingTerm : eigenvalueCrossing
  kernelDimensionChangeTerm : kernelDimensionChange
  bifurcationDetectedTerm : bifurcationDetected

structure BifurcationPointDetectionEvidence {P : ParameterSpacePackage}
    (B : BifurcationPointDetectionPackage P) where
  eigenvalueCrossingClosed : B.eigenvalueCrossing
  kernelDimensionChangeClosed : B.kernelDimensionChange
  bifurcationDetectedClosed : B.bifurcationDetected

def BifurcationPointDetectionClosed {P : ParameterSpacePackage}
    (B : BifurcationPointDetectionPackage P) : Prop :=
  B.eigenvalueCrossing ∧ B.kernelDimensionChange ∧ B.bifurcationDetected

theorem bifurcation_point_detection_closed_from_evidence
    {P : ParameterSpacePackage} (B : BifurcationPointDetectionPackage P)
    (E : BifurcationPointDetectionEvidence B) : BifurcationPointDetectionClosed B := by
  exact And.intro E.eigenvalueCrossingClosed
    (And.intro E.kernelDimensionChangeClosed E.bifurcationDetectedClosed)

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse