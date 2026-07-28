import HautevilleHouse.BifurcationsContextPdes34c2334f10CanonicalLaneLean.CenterManifold

namespace HautevilleHouse
namespace BifurcationsContextPdes34c2334f10CanonicalLaneLean

structure NormalFormPackage {C : CenterManifoldPackage} where
  normalFormTransformation : Prop
  resonantTermsIdentified : Prop
  poincareNormalForm : Prop
  formalConjugation : Prop

structure NormalFormEvidence {C : CenterManifoldPackage}
    (N : NormalFormPackage C) where
  normalFormTransformationClosed : N.normalFormTransformation
  poincareNormalFormClosed : N.poincareNormalForm

def NormalFormClosed {C : CenterManifoldPackage}
    (N : NormalFormPackage C) : Prop :=
  N.normalFormTransformation ∧ N.poincareNormalForm

theorem normal_form_closed_from_evidence {C : CenterManifoldPackage}
    (N : NormalFormPackage C) (E : NormalFormEvidence N) :
    NormalFormClosed N := by
  exact And.intro E.normalFormTransformationClosed E.poincareNormalFormClosed

end BifurcationsContextPdes34c2334f10CanonicalLaneLean
end HautevilleHouse