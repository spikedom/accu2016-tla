------------------------------ MODULE crackers4a ----------------------------

CONSTANTS Things, People
VARIABLES desires, holds

Init == /\ desires = [p \in People |-> {}]
        /\ holds   = [p \in People |-> {}]
-----------------------------------------------------------------------------
Desire(p) == /\ desires[p] = {}
             /\ holds[p] = {} 
             /\ \E t \in Things :
                /\ desires' = [desires EXCEPT ![p] = {t}]
                /\ UNCHANGED holds 

Acquire(p) == \E t \in desires[ p ] :
                 /\ t \notin holds[ p ]
                 /\ holds' = [holds EXCEPT ![p] = holds[p] \cup {t}]
                 /\ UNCHANGED desires 

Satiated(p) == /\ desires[p] # {}
               /\ \A t \in desires[p] : t \in holds[p] 
               /\ desires' = [desires EXCEPT ![p] = {}]
               /\ UNCHANGED holds
               
TidyUp(p) == /\ desires[p] = {}
             /\ \E t \in holds[p] :
                /\ holds' = [holds EXCEPT ![p] = holds[p] \ {t}]
                /\ UNCHANGED desires

Next == \E p \in People :
           \/ Desire(p)
           \/ Acquire(p)
           \/ Satiated(p)
           \/ TidyUp(p)
           
-----------------------------------------------------------------------------
TidiesUp == ~\E p \in People : 
               /\ desires[p] # {} 
               /\ \E l \in holds[p] : l \notin desires[p]
-----------------------------------------------------------------------------

Spec == Init /\ [][Next]_<<desires, holds>>

=============================================================================