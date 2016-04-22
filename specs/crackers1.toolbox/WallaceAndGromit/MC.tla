---- MODULE MC ----
EXTENDS crackers1, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_14613597038692000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_14613597038853000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_14613597039004000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Fri Apr 22 22:15:03 BST 2016 by gbrobind
