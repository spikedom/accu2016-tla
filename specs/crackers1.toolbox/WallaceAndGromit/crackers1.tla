------------------------------ MODULE crackers1 ------------------------------

CONSTANTS Things, People
VARIABLES desires

Init == desires = [p \in People |-> {}]
       
Desire == \E p \in People : 
             /\ desires[p] = {}
             /\ \E t \in Things :
                /\ desires' = [desires EXCEPT ![p] = {t}]

Next == Desire
-----------------------------------------------------------------------------

Spec == Init /\ [][Next]_<<desires>>

=============================================================================
