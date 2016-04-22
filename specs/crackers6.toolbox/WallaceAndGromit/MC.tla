---- MODULE MC ----
EXTENDS crackers6, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101276460357000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146101276461958000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101276463459000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_146101276465060000 ==
TidiesUp
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_146101276466561000 ==
Exclusivity
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 21:52:44 BST 2016 by gbrobind
