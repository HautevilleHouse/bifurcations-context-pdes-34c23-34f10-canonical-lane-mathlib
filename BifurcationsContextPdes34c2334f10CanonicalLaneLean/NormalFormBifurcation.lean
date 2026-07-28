import BifurcationsContextPdes34c2334f10CanonicalLaneLean.BifurcationParameterSpace

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure NormalFormBifurcation {P : BifurcationParameterSpace} where
  criticalPoint : P.parameterManifold × Type
  normalFormType : String
  unfoldingParameters : Prop
  modaularStability : Prop

structure NormalFormBifurcationEvidence {P : BifurcationParameterSpace}
    (N : NormalFormBifurcation P) where
  normalFormTypeClosed : N.normalFormType = "saddle-node"
  unfoldingParametersClosed : N.unfoldingParameters
  modaularStabilityClosed : N.modaularStability

def NormalFormBifurcationClosed {P : BifurcationParameterSpace}
    (N : NormalFormBifurcation P) : Prop :=
  N.normalFormType = "saddle-node" ∧ N.unfoldingParameters ∧ N.modaularStability

theorem normal_form_bifurcation_closed_from_evidence
    {P : BifurcationParameterSpace} (N : NormalFormBifurcation P)
    (E : NormalFormBifurcationEvidence N) : NormalFormBifurcationClosed N := by
  exact And.intro E.normalFormTypeClosed (And.intro E.unfoldingParametersClosed E.modaularStabilityClosed)

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse