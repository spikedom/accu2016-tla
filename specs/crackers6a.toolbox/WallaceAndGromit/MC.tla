---- MODULE MC ----
EXTENDS crackers6a, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101285979062000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146101285980663000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101285982164000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_146101285983765000 ==
TidiesUp
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_146101285985266000 ==
Exclusivity
----
\* INVARIANT definition @modelCorrectnessInvariants:2
inv_146101285986867000 ==
Ordering
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 21:54:19 BST 2016 by gbrobind
