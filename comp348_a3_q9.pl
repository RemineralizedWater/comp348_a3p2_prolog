%Q9
sublist(_, 0, 0, []). % Base Case
% Recursive Case when start index is H
sublist([H | T], 0, L, [H | TN]):-
 	LN is L - 1, sublist(T, 0, LN, TN).
 % Recursive Case when start index is not H
sublist([_ | T], S, L, O):-
	SN is S - 1, sublist(T, SN, L, O).

% ?- sublist([1,2,3,4],1,2,O).
% O = [2,3]

% ?- sublist([1,2,3,4],0,0,O).
% O = []

% ?- sublist([1,2,3,4],0,10,O).
% false

% ?- sublist([1,2,3,4],3,1,O).
% O = [4]

% ?- sublist([1,2,3,4],0,2,O).
% O = [1, 2]
