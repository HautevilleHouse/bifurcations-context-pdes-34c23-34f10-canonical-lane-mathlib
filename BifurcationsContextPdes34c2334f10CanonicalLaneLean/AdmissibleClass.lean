import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure BifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BifurcationAdmittedObject where
  parameterSpace : BifurcationSpace
  stateSpace : BifurcationSpace
  smoothPDE : Prop
  equilibriumFamily : Prop
  bifurcationDetected : Prop
  conclusion : bifurcationDetected

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.bifurcationDetected

structure AdmissibleClass where
  object : BifurcationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse