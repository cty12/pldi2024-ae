module ExamplePrograms.Simulation.RefNSU2 where

open import Data.List using ([])
open import Data.Unit
open import Data.Bool renaming (Bool to 𝔹)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

open import Common.Types
open import Common.BlameLabels
open import Surface.SurfaceLang

{- less precise -}
M =
  `let ($ true of high) ∶ ` Bool of ⋆ at pos 0 `in
  `let if ((` 0) ∶ ` Bool of ⋆ at pos 1)
       then ref⟦ high ⟧ $ false of low at pos 3
       else ref⟦ high ⟧ $ true of low at pos 4
       at pos 2 `in
  (! (` 0))

⊢M : [] ; l low ⊢ᴳ M ⦂ ` Bool of ⋆
⊢M =
  ⊢let (⊢ann ⊢const (≲-ty ≾-⋆r ≲-ι))
  (⊢let (⊢if (⊢ann (⊢var refl) ≲-refl)
             (⊢ref ⊢const (≲-ty (≾-l l≼h) ≲-ι) ≾-⋆l)
             (⊢ref ⊢const (≲-ty (≾-l l≼h) ≲-ι) ≾-⋆l) refl)
    (⊢deref (⊢var refl)))

{- more precise -}
M′ =
  `let ($ true of high) ∶ ` Bool of l high at pos 0 `in
  `let if ((` 0) ∶ ` Bool of ⋆ at pos 1)
       then ref⟦ high ⟧ $ false of low at pos 3
       else ref⟦ high ⟧ $ true of low at pos 4
       at pos 2 `in
  (! (` 0))

⊢M′ : [] ; l low ⊢ᴳ M′ ⦂ ` Bool of ⋆
⊢M′ =
  ⊢let (⊢ann ⊢const ≲-refl)
  (⊢let (⊢if (⊢ann (⊢var refl) (≲-ty ≾-⋆r ≲-ι))
             (⊢ref ⊢const (≲-ty (≾-l l≼h) ≲-ι) ≾-⋆l)
             (⊢ref ⊢const (≲-ty (≾-l l≼h) ≲-ι) ≾-⋆l) refl)
    (⊢deref (⊢var refl)))
