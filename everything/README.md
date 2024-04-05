(In this document we refer to the surface language as LambdaIFCStar and
the cast calculus as LambdaIFCc. )

### Building:

It takes about 65 minutes to type check the entire project.

#### Software dependencies for checking proofs:

- [Agda](https://wiki.portal.chalmers.se/agda) `2.6.4`
- [Standard library](https://github.com/agda/agda-stdlib) `v1.7.3 (0817da6)`
- [Abstract binding trees](https://github.com/jsiek/abstract-binding-trees/) `4753d00`
- [GNU Make](https://www.gnu.org/software/make/)

#### Steps:

+ To check the proofs only, run `make proofs`.
  The type-checker of Agda makes sure everything is correct.

### Code structure:

Files for noteworthy proofs in the paper:

+ [**The Gradual Guarantee**](./src/CC2/GradualGuarantee.agda):
  **Main result:**
  the gradual guarantee of LambdaIFCStar (Theorem 17: `gradual-guarantee`)
+ [Compilation preserves types](./src/CC2/Compile.agda): Theorem 15
+ [Progress](./src/CC2/Progress.agda) and [Preservation](./src/CC2/Preservation.agda):
  The proof for type safety of LambdaIFCc (Theorem 10: `progress` and Theorem 11: `pres`)
+ [Simulation](./src/Simulation/Simulation.agda): The main simulation lemma
  for LambdaIFCc (Lemma 13: `sim`)
+ [Simulation between coercion sequences](./src/CoercionExpr/Simulation.agda): Simulation between
  related coercion sequences (Lemma 8: `sim`)
+ [Noninterference of LambdaSEC](./src/Dyn/Noninterference.agda):
  Noninterference for the dynamic IFC language LambdaSEC (Lemma 21: `noninterference`)

Files for noteworthy definitions:

+ [Definition of security labels and label operators](./src/Common/SecurityLabels.agda): Figure 1, Figure 8, and Figure 9
+ [Definition of types and type operators](./src/Common/Types.agda): Figure 4, Figure 9, and Figure 8
+ [Syntax of LambdaIFCStar](./src/Surface2/Syntax.agda): Figure 7
+ [Typing rules of LambdaIFCStar](./src/Surface2/Typing.agda): Figure 7
+ [Syntax of LambdaIFCc](./src/CC2/Syntax.agda): Figure 5
+ [Typing of LambdaIFCc](./src/CC2/Typing.agda): Figure 5, Figure 14
+ [**Operational semantics of LambdaIFCc**](./src/CC2/Reduction.agda): Figure 6
+ [**Precision relation of LambdaIFCc**](./src/CC2/Precision.agda): Figure 15
+ [The compile function from LambdaIFCStar to LambdaIFCc](./src/CC2/Compile.agda):
  the cast insertion rule in Section 6.2
+ [Single coercions](./src/CoercionExpr/Coercions.agda): Figure 1
+ [Coercion sequences](./src/CoercionExpr/CoercionExpr.agda): Figure 1
+ [Composition of coercion sequences](./src/CoercionExpr/SyntacComp.agda): Figure 10
+ [Stamping of coercion in NF](./src/CoercionExpr/Stamping.agda): Figure 2
+ [**Precision of coercion sequences**](./src/CoercionExpr/Precision.agda): Figure 13
+ [Coercions on values](./src/Common/Coercions.agda): Figure 4, Figure 12
+ [Semantics for coercions on values](./src/CC2/CastReduction.agda): Figure 4
+ [Label expressions](./src/LabelExpr/LabelExpr.agda): Figure 3
+ [Stamping on label expressions in NF](./src/LabelExpr/Stamping.agda): Figure 10
+ [Security of label expressions NF](./src/LabelExpr/Security.agda): Figure 10
+ [Stamping on LambdaIFCc values](./src/CC2/Stamping.agda): Figure 11
+ [Semantics of LambdaSEC](./src/Dyn/BigStep.agda): big-step version of Figure 16
+ [Simulation relation between LambdaIFCc and LambdaSEC](./src/Security/SimRel.agda): Figure 17
