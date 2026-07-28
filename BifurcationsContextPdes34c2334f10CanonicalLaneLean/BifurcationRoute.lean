import HautevilleHouse.BifurcationsContextPdes34c2334f10CanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure BifurcationRouteObligations where
  parameterSpaceClosed : Prop
  bifurcationPointDetected : Prop
  normalFormsComputed : Prop
  unfoldingCompleted : Prop
  endpointReached : Prop

structure BifurcationRouteEvidence (R : BifurcationRouteObligations) where
  parameterSpaceClosedEvidence : R.parameterSpaceClosed
  bifurcationPointDetectedEvidence : R.bifurcationPointDetected
  normalFormsComputedEvidence : R.normalFormsComputed
  unfoldingCompletedEvidence : R.unfoldingCompleted
  endpointReachedEvidence : R.endpointReached

def BifurcationRouteClosed (R : BifurcationRouteObligations) : Prop :=
  R.parameterSpaceClosed ∧ R.bifurcationPointDetected ∧
  R.normalFormsComputed ∧ R.unfoldingCompleted ∧ R.endpointReached

theorem bifurcation_route_closed_from_evidence (R : BifurcationRouteObligations)
    (E : BifurcationRouteEvidence R) : BifurcationRouteClosed R := by
  exact And.intro E.parameterSpaceClosedEvidence
    (And.intro E.bifurcationPointDetectedEvidence
      (And.intro E.normalFormsComputedEvidence
        (And.intro E.unfoldingCompletedEvidence E.endpointReachedEvidence)))

structure BifurcationCanonicalLaneRoute (A : AdmissibleClass) where
  obligations : BifurcationRouteObligations
  evidence : BifurcationRouteEvidence obligations
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem bifurcation_route_yields_constrained_closure
    (A : AdmissibleClass) (R : BifurcationCanonicalLaneRoute A) :
    ConstrainedBifurcationClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse