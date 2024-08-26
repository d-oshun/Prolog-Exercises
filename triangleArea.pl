% Define the tA operator with precedence 400 and type yfx (left-to-right evaluation

:- op(400, yfx, tA).

% Predicate to calculate the area of a triangle and check if it matches the right operand
tA(A/B, X) :- X is A * B * 1/2.
