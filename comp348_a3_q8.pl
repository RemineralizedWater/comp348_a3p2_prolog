student(23456789).
student(34567890).
student(45678901).
student(12345678).

course(comp472, 'Artificial Intelligence').
course(comp353, 'Databases').
course(comp348, 'Principles of Programming Languages').
course(comp352, 'Data Structures').
course(encs393, 'Social and Ethical Dimensions of Information and Communication Technologies').
course(mark201, 'Introduction to Marketing').
course(phil210, 'Critical Thinking').

takes(23456789, comp348).
takes(23456789, comp352).
takes(34567890, comp348).
takes(45678901, comp348).
takes(12345678, comp348).
takes(34567890, comp353).
takes(45678901, comp472).
takes(12345678, encs393).
takes(12345678, mark201).
takes(26101267, phil210).
takes(45678901, phil210).

get_courses :-
  findall(Y, takes(X, Y), L),
  write(L), nl.

get_group_size :-
  findall(X, student(X), L), length(L, N),
  write(N), nl.

get_unique_courses :-
  findall(X, course(X, Y), L),
  write(L), nl,
  sort(L, SL),
  write(SL), nl.
