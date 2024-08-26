/*FACTS*/
parent(carol, paul).
parent(carol, jane).
parent(harry, tom).
parent(harry, mary).
parent(jim, tom).
parent(jim, mary).
parent(ann, tom).
parent(ann, mary).
parent(tim, harry).
parent(tim, carol).
parent(george, harry).
parent(george, carol).
parent(jenny, harry).
parent(jenny, carol).
parent(david, jim).
parent(david, joan).
parent(kate, jim).
parent(kate, joan).
parent(susan, dominic).
parent(susan, ann).
male(paul).
male(tom).
male(harry).
male(jim).
male(dominic).
male(tim).
male(george).
male(david).
female(jane).
female(mary).
female(carol).
female(joan).
female(ann).
female(jenny).
female(kate).
female(susan).

/*Relationships*/

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), (X \= Y).
sister(X, Y) :- female(X), sibling(X, Y).
aunt(X, Y) :- parent(Z, Y), sister(X, Z).

cousin(X, Y) :- parent(Z, X), parent(S, Y), sibling(Z, S).
paternalgrandmother(X, Y) :- father(Z, Y), mother(X, Z).

fizz([]).
fizz([H|T]) :- (0 is H mod 3); (0 is H mod 5), fizz(T).
fizzbang(X, L) :- forall(member(A, X), member(A, L)), fizz(L).
