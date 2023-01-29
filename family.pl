mother(jessica, louise).
mother(jessica, john).
mother(alice, martha).

male(john).
female(martha).
female(louise).

daughter(X, Y) :-
  female(X),
  mother(Y, X).

son(X, Y) :-
  male(X),
  mother(Y, X).

siblings(X, Y) :-
  mother(M, Y),
  mother(M, X).

some_son(X, Y) :-
  son(S, X),
  son(S, Y).