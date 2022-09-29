%Q11
helper(0, 2) :- !.
helper(1, 1) :- !.
helper(N, ELT) :-
    N > 1,
    N1 is N - 1, N2 is N - 2,
    helper(N1, LHS), helper(N2, RHS),
    ELT is LHS + RHS.

lucas(Num, Result) :-
    numlist(0, Num, List), maplist(helper, List, Result).

% ?-lucas(0,0).
% false
% 
% ?-lucas(0,2).
% false

% ?-lucas(1,1).
% false

% ?-lucas(7,Result).
% Result = [2, 1, 3, 4, 7, 11, 18, 29]

% ?-lucas(10,Result).
% Result = [2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123]
