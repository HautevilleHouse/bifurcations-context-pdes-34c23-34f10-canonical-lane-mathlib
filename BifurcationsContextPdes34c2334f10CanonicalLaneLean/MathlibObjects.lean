import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure BifurcationParameter where
  value : ℝ
  critical : Prop
  bifurcationType : String

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.conclusion

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse