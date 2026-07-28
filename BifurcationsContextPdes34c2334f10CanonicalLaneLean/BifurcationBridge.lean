import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse