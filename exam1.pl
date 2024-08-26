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
father(X, Y) :-  male(X), parent(X,Y).
sibling(X, Y) :- parent(Z, X), parent(Z,Y), (X \= Y).
brother(X, Y) :- male(X), sibling(X, Y).
uncle(X, Y) :- brother(X, Z), parent(Z, Y).

cousin(X, Y) :- parent(Z, X), parent(S, Y), sibling(Z, S).
maternalgrandmother(X, Y) :- mother(Z, Y), mother(X, Z).

sum(0, []).
sum(D, [H|T]) :- sum(Y, T), (D is Y + H).
minimum(Min, []) :- fail.
minimum(H, [H]).
minimum(D, [H|T]) :- minimum(Y, T), Y < H , D = Y; D = H.


