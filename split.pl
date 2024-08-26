/*Without Cuts*/

split([], [], []).
split([H|T], [H|Positive], Negative) :- H >= 0, split(T, Positive, Negative).
split([H|T], Positive, [H|Negative]) :- H < 0, split(T, Positive, Negative).

/*With Cuts*/

split([], [], []).
split([H|T], [H|Positive], Negative) :- H >= 0, split(T, Positive, Negative), !.
split([H|T], Positive, [H|Negative]) :- H < 0, split(T, Positive, Negative).
