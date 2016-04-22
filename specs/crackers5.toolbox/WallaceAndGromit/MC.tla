---- MODULE MC ----
EXTENDS crackers5, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101263341947000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146101263343548000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101263345049000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_146101263346650000 ==
TidiesUp
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_146101263348151000 ==
Exclusivity
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 21:50:33 BST 2016 by gbrobind
