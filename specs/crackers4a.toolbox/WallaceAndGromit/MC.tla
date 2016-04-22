---- MODULE MC ----
EXTENDS crackers4a, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101252230743000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146101252232344000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101252233945000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_146101252235446000 ==
TidiesUp
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 21:48:42 BST 2016 by gbrobind
