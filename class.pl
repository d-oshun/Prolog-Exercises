class(X, negative) :- X < 0, !.
class(0, zero) :- !.
class(X, positive) :- X > 0.
