------------------------------ MODULE crackers7a ----------------------------
EXTENDS Naturals, FiniteSets
CONSTANTS Things, People
VARIABLES desires, holds

Init == /\ desires = [p \in People |-> {}]
        /\ holds   = [p \in People |-> {}]
-----------------------------------------------------------------------------
RECURSIVE _SetOrdinals(_,_)
_SetOrdinals(s,f) == IF s = {} 
                     THEN f
                     ELSE LET e == CHOOSE x \in s : TRUE
                          IN  _SetOrdinals(s \ {e}, [f EXCEPT ![e] = Cardinality(s)]) 
SetOrdinals(S) == _SetOrdinals(S, [x \in S |-> 0])

ResourceOrdinals == SetOrdinals(Things)
ChooseBefore(a,b) == ResourceOrdinals[a] < ResourceOrdinals[b] 
-----------------------------------------------------------------------------
Held(t) == \E p \in People : t \in holds[ p ] 
-----------------------------------------------------------------------------
Desire(p) == /\ holds[p] # {} => desires[p] # {} 
             /\ \E t \in Things :
                /\ t \notin desires[ p ]
                /\ desires' = [desires EXCEPT ![p] = desires[p] \cup {t}]
                /\ UNCHANGED holds 
                
Acquire(p) == \E t \in desires[ p ] :
                 /\ ~Held(t)
                 /\ ~\E t2 \in desires[ p ] : t2 \notin holds[ p ] /\ ChooseBefore(t2,t)
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

Relinquish(p) == \E t \in desires[ p ] :
                    /\ t \notin holds[ p ]
                    /\ \E t2 \in holds[ p ] :
                         /\ ChooseBefore(t, t2)
                         /\ holds' = [holds EXCEPT ![p] = holds[p] \ {t2}]
                         /\ UNCHANGED desires

Next == \E p \in People :
           \/ Desire(p)
           \/ Acquire(p)
           \/ Satiated(p)
           \/ TidyUp(p)
           \/ Relinquish(p)
           
-----------------------------------------------------------------------------
TidiesUp == ~\E p \in People : 
               /\ desires[p] # {} 
               /\ \E l \in holds[p] : l \notin desires[p]
               
Exclusivity == ~\E p, q \in People : p # q /\ ( holds[p] \cap holds[q] ) # {} 

Ordering == /\ \A x,y,z \in Things : 
               ChooseBefore(x,y) /\ ChooseBefore(y,z) => ChooseBefore(x,z)
            /\ \A x \in Things : ~ChooseBefore(x,x)
-----------------------------------------------------------------------------

Spec == Init /\ [][Next]_<<desires, holds>>

=============================================================================