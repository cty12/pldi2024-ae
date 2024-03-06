(In this document we refer to the surface language as LambdaIFCStar and
the cast calculus as LambdaIFCc. )

### Building (optional):

If you would like to build the Docker image from scratch,
from the root of the project repository, run:

```
docker build --progress=plain -t pldi2024-ae .
```

It takes about 65 minutes to type check the entire project.

### Code structure:

Files for noteworthy proofs in the paper:

+ [**The Gradual Guarantee**](./src/CC2/GradualGuarantee.agda):
  **Our main result:**
  the gradual guarantee proof of LambdaIFCStar (Theorem 18: `gradual-guarantee`)
+ [Compilation preserves types](./src/CC2/Compile.agda): Lemma 16 and Theorem 17
+ [Progress](./src/CC2/Progress.agda) and [Preservation](./src/CC2/Preservation.agda):
  The proof for type safety of LambdaIFCc (Theorem 12: `progress` and Theorem 13: `pres`)
+ [Simulation](./src/Simulation/Simulation.agda): The main simulation lemma
  for LambdaIFCc (Lemma 15: `sim`)
+ [Simulation of coercion](./src/CoercionExpr/Simulation.agda): Simulation between
  related coercion sequences (Lemma 11: `sim`)

Files for noteworthy definitions:

+ [Definition of security labels and label operators](./src/Common/SecurityLabels.agda): Figure 1, Figure 7, and Figure 14
+ [Definition of types and type operators](./src/Common/Types.agda): Figure 3, Figure 7, and Figure 14
+ [Syntax of LambdaIFCStar](./src/Surface2/Syntax.agda): Figure 6
+ [Typing rules of LambdaIFCStar](./src/Surface2/Typing.agda): Figure 6
+ [Syntax of LambdaIFCc](./src/CC2/Syntax.agda): Figure 4
+ [Typing of LambdaIFCc](./src/CC2/Typing.agda): Figure 4, Figure 16
+ [**Operational semantics of LambdaIFCc**](./src/CC2/Reduction.agda): Figure 5
+ [**Precision relation of LambdaIFCc**](./src/CC2/Precision.agda): Figure 17
+ [The compile function from LambdaIFCStar to LambdaIFCc](./src/CC2/Compile.agda):
  the cast insertion rule in Section 6.2
+ [Single coercions](./src/CoercionExpr/Coercions.agda): Figure 1, Figure 8
+ [Coercion sequences](./src/CoercionExpr/CoercionExpr.agda): Figure 1, Figure 8, Figure 9
+ [Composition of coercion sequences](./src/CoercionExpr/SyntacComp.agda): Figure 10
+ [Stamping of coercion in NF](./src/CoercionExpr/Stamping.agda): Figure 10
+ [**Precision of coercion sequences**](./src/CoercionExpr/Precision.agda): Figure 15
+ [Coercions on values](./src/Common/Coercions.agda): Figure 3, Figure 13
+ [Semantics for coercions on values](./src/CC2/CastReduction.agda): Figure 3
+ [Label expressions](./src/LabelExpr/LabelExpr.agda): Figure 2, Figure 11
+ [Stamping on label expressions in NF](./src/LabelExpr/Stamping.agda): Figure 12
+ [Security of label expressions NF](./src/LabelExpr/Security.agda): Figure 12
