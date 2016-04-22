---- MODULE MC ----
EXTENDS crackers7a, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Gromit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_14613598645955000 == 
{Wallace, Gromit}
----

\* MV CONSTANT definitions Things
const_14613598646116000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_14613598646267000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_14613598646428000 ==
TidiesUp
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_14613598646579000 ==
Exclusivity
----
\* INVARIANT definition @modelCorrectnessInvariants:2
inv_146135986467310000 ==
Ordering
----
=============================================================================
\* Modification History
\* Created Fri Apr 22 22:17:44 BST 2016 by gbrobind
