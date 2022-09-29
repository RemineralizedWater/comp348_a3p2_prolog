initial(a).
final(e).
final(f).
arc(a,0,d).
arc(a,1,b).
arc(b,0,f).
arc(b,1,c).
arc(c,0,c).
arc(c,1,c).
arc(d,0,a).
arc(d,1,e).
arc(e,0,f).
arc(e,1,c).
arc(f,0,f).
arc(f,1,c).

check(Path) :-
    initial(Node),
    discover(Node,Path).

discover(Node,[]) :-
    final(Node).

discover(Src,Old) :-
    arc(Src,Value,Dst),
    move(Value,Old,New),
    discover(Dst,New).

move(First,[First|Remain],Remain).

% check([0]). % False
% check([1]). % False
% check([0,1]). % True
% check([1,0]). % True
% check([0,0,1,0,0,0,0,0,0,0]). % True
% check([0,0,1,0,0,0,0,0,0,0,1]). % False
