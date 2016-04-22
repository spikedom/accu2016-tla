------------------------------ MODULE crackers2a ------------------------------

CONSTANTS Things, People
VARIABLES desires, holds

Init == /\ desires = [p \in People |-> {}]
        /\ holds   = [p \in People |-> {}]
       
Desire(p) == /\ desires[p] = {}
             /\ \E t \in Things :
                /\ desires' = [desires EXCEPT ![p] = {t}]
                /\ UNCHANGED holds 

Acquire(p) == \E t \in desires[ p ] :
                 /\ t \notin holds[ p ]
                 /\ holds' = [holds EXCEPT ![p] = holds[p] \cup {t}]
                 /\ UNCHANGED desires 

Next == \E p \in People :
           \/ Desire(p)
           \/ Acquire(p)
-----------------------------------------------------------------------------

Spec == Init /\ [][Next]_<<desires, holds>>

=============================================================================