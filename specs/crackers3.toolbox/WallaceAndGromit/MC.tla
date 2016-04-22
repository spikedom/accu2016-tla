---- MODULE MC ----
EXTENDS crackers3, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146135785433224000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_146135785434825000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_146135785436326000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Fri Apr 22 21:44:14 BST 2016 by gbrobind
