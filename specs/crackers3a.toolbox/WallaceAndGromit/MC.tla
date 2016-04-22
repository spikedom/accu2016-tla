---- MODULE MC ----
EXTENDS crackers3a, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101235181535000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146101235183036000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101235184637000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_146101235186238000 ==
TidiesUp
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 21:45:51 BST 2016 by gbrobind
