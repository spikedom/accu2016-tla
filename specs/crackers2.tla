------------------------------ MODULE crackers2 ------------------------------

CONSTANTS Things, People
VARIABLES desires, holds

Init == /\ desires = [p \in People |-> {}]
        /\ holds   = [p \in People |-> {}]
       
Desire == \E p \in People : 
             /\ desires[p] = {}
             /\ \E t \in Things :
                /\ desires' = [desires EXCEPT ![p] = {t}]
                /\ UNCHANGED holds 

Acquire == \E p \in People : 
             \E t \in desires[ p ] :
               /\ t \notin holds[ p ]
               /\ holds' = [holds EXCEPT ![p] = holds[p] \cup {t}]
               /\ UNCHANGED desires 

Next == \/ Desire
        \/ Acquire
-----------------------------------------------------------------------------

Spec == Init /\ [][Next]_<<desires, holds>>

=============================================================================
