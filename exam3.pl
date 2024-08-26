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

mother(X, Y) :- female(X), parent(X, Y).
father(X, Y) :- male(X), parent(X, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), (X \= Y).
brother(X, Y) :- male(X), sibling(X, Y).
uncle(X, Y) :- parent(Z, Y), brother(X, Z).

cousin(X, Y) :- parent(Z, X), parent(S, Y), sibling(Z, S).
paternalgrandmother(X, Y) :- father(Z, Y), mother(X, Z).

sum(0, []).
sum(X, [H|T]) :- sum(Z, T), (H mod 2 =:= 1 -> X is Z+H ;(X = Z)).

maximum(Max,[]) :- fail.
maximum(H,[H]).
maximum(M, [H|T]) :- maximum(Z, T), ((H > Z), (M = H) ; (M = Z)).

