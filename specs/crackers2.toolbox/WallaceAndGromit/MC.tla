---- MODULE MC ----
EXTENDS crackers2, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Grommit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101354504192000 == 
{Wallace, Grommit}
----

\* MV CONSTANT definitions Things
const_146101354505693000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146101354507294000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 22:05:45 BST 2016 by gbrobind
