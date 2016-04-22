---- MODULE MC ----
EXTENDS crackers4, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101244656839000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146101244658440000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101244659941000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_146101244661542000 ==
TidiesUp
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 21:47:26 BST 2016 by gbrobind
