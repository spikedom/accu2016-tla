---- MODULE MC ----
EXTENDS crackers2a, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
Wallace, Grommit
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
crackers, cheese, tea
----

\* MV CONSTANT definitions People
const_146101358524498000 == 
{Wallace, Grommit}
----

\* MV CONSTANT definitions Things
const_146101358526099000 == 
{crackers, cheese, tea}
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_1461013585276100000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Mon Apr 18 22:06:25 BST 2016 by gbrobind
