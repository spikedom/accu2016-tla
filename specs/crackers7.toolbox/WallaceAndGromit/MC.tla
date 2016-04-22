---- MODULE MC ----
EXTENDS crackers7, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101298780268000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146101298781869000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101298783470000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_146101298784971000 ==
TidiesUp
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_146101298786572000 ==
Exclusivity
----
\* INVARIANT definition @modelCorrectnessInvariants:2
inv_146101298788073000 ==
Ordering
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 21:56:27 BST 2016 by gbrobind
