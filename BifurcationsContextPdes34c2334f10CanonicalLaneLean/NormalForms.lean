import HautevilleHouse.BifurcationsContextPdes34c2334f10CanonicalLaneLean.BifurcationPointDetection

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure NormalFormsPackage {P : ParameterSpacePackage}
    (B : BifurcationPointDetectionPackage P) where
  normalFormType : String
  unfoldingParameters : Type u
  versalDeformation : Prop
  bifurcationDiagramClassified : Prop
  normalFormComputed : Prop
  versalDeformationTerm : versalDeformation
  bifurcationDiagramClassifiedTerm : bifurcationDiagramClassified
  normalFormComputedTerm : normalFormComputed

structure NormalFormsEvidence {P : ParameterSpacePackage}
    {B : BifurcationPointDetectionPackage P} (N : NormalFormsPackage B) where
  versalDeformationClosed : N.versalDeformation
  bifurcationDiagramClassifiedClosed : N.bifurcationDiagramClassified
  normalFormComputedClosed : N.normalFormComputed

def NormalFormsClosed {P : ParameterSpacePackage}
    {B : BifurcationPointDetectionPackage P} (N : NormalFormsPackage B) : Prop :=
  N.versalDeformation ∧ N.bifurcationDiagramClassified ∧ N.normalFormComputed

theorem normal_forms_closed_from_evidence {P : ParameterSpacePackage}
    {B : BifurcationPointDetectionPackage P} (N : NormalFormsPackage B)
    (E : NormalFormsEvidence N) : NormalFormsClosed N := by
  exact And.intro E.versalDeformationClosed
    (And.intro E.bifurcationDiagramClassifiedClosed E.normalFormComputedClosed)

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse