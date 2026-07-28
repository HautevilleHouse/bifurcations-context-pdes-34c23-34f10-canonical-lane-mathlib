import BifurcationsContextPdes34c2334f10CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse