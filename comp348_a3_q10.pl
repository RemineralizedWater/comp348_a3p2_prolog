every-other([],[]).
every-other([X],[X]).
every-other([X, _ | L], [X | R]):-
   every-other(L,R).
