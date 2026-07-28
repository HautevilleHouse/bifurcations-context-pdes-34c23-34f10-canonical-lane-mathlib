import HautevilleHouse.BifurcationsContextPdes34c2334f10CanonicalLaneLean.NormalForm

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure BifurcationPDEPackage {C : CenterManifoldPackage}
    {N : NormalFormPackage C} where
  pdeEquation : Type
  bifurcationParameterSpace : Type
  steadyStateEquation : pdeEquation × bifurcationParameterSpace → Prop
  bifurcationDiagram : Prop
  genericBifurcationType : Prop

structure BifurcationPDEEvidence {C : CenterManifoldPackage}
    {N : NormalFormPackage C} (B : BifurcationPDEPackage C N) where
  bifurcationDiagramClosed : B.bifurcationDiagram
  genericBifurcationTypeClosed : B.genericBifurcationType

def BifurcationPDEClosed {C : CenterManifoldPackage}
    {N : NormalFormPackage C} (B : BifurcationPDEPackage C N) : Prop :=
  B.bifurcationDiagram ∧ B.genericBifurcationType

theorem bifurcation_pde_closed_from_evidence {C : CenterManifoldPackage}
    {N : NormalFormPackage C} (B : BifurcationPDEPackage C N)
    (E : BifurcationPDEEvidence B) : BifurcationPDEClosed B := by
  exact And.intro E.bifurcationDiagramClosed E.genericBifurcationTypeClosed

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse