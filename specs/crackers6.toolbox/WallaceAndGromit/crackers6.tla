------------------------------ MODULE crackers6 ----------------------------

CONSTANTS Things, People
VARIABLES desires, holds

Init == /\ desires = [p \in People |-> {}]
        /\ holds   = [p \in People |-> {}]
-----------------------------------------------------------------------------
Held(t) == \E p \in People : t \in holds[ p ]
-----------------------------------------------------------------------------
Desire(p) == /\ holds[p] = {} 
             /\ \E t \in Things :
                /\ desires' = [desires EXCEPT ![p] = desires[p] \cup {t}]
                /\ UNCHANGED holds 

Acquire(p) == \E t \in desires[ p ] :
                 /\ ~Held(t)
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
               
Exclusivity == ~\E p, q \in People : p # q /\ ( holds[p] \cap holds[q] ) # {} 
-----------------------------------------------------------------------------

Spec == Init /\ [][Next]_<<desires, holds>>

=============================================================================