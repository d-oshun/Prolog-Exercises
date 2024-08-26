/*FACTS*/
parents(george, david).
parents(george, jennifer).
parents(george, scott).
parents(noreen, david).
parents(noreen, jennifer).
parents(noreen, scott).
parents(david, clara).
parents(david, michael).
parents(edel, clara).
parents(edel, michael).
parents(scott, anna).
parents(siobhan, anna).
parents(kevin, helena).
parents(jennifer, helena).

male(david).
male(george).
male(scott).
male(michael).
male(kevin).
female(noreen).
female(jennifer).
female(clara).
female(edel).
female(anna).
female(helena).
female(siobhan).

/* Relationships */
different(X, Y) :- X \== Y.

mother(X, Y) :- female(X), parents(X, Y).
father(X, Y) :- male(X), parents(X, Y).

sibling(X, Y) :- parents(M, X), parents(M, Y), different(X, Y).
sister(X, Y) :- female(X), sibling(X, Y).
brother(X, Y) :- male(X), sibling(X, Y).

grandmother(X, Y) :- parents(Z, Y), mother(X, Z).
grandfather(X, Y) :- parents(Z, Y), father(X, Z).

uncle(X, Y) :- parents(Z, Y), brother(X, Z).
aunt(X, Y) :- parents(Z, Y), sister(X, Z).

cousin(X, Y) :- parents(Z, X), parents(V, Y), sibling(Z, V).

