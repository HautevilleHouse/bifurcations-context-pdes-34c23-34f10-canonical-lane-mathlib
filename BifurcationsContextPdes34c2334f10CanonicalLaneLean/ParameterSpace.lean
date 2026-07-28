import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure ParameterSpacePackage where
  parameterManifold : Type u
  parameterTopology : TopologicalSpace parameterManifold
  pdeFamily : Type v
  smoothDependence : Prop
  bifurcationSet : Prop
  smoothDependenceTerm : smoothDependence
  bifurcationSetTerm : bifurcationSet

structure ParameterSpaceEvidence (P : ParameterSpacePackage) where
  smoothDependenceClosed : P.smoothDependence
  bifurcationSetClosed : P.bifurcationSet

def ParameterSpaceClosed (P : ParameterSpacePackage) : Prop :=
  P.smoothDependence ∧ P.bifurcationSet

theorem parameter_space_closed_from_evidence (P : ParameterSpacePackage)
    (E : ParameterSpaceEvidence P) : ParameterSpaceClosed P := by
  exact And.intro E.smoothDependenceClosed E.bifurcationSetClosed

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse