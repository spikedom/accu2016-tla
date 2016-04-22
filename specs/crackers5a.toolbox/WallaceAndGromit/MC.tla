---- MODULE MC ----
EXTENDS crackers5a, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101270626952000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146101270628553000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101270630054000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_146101270631655000 ==
TidiesUp
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_146101270633156000 ==
Exclusivity
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 21:51:46 BST 2016 by gbrobind
