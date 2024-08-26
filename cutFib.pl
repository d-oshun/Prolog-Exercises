fibonacci(0,0) :- !.
fibonacci(1,1) :- !.
fibonacci(Number, Result) :- Number > 1, Number1 is Number - 1, Number2 is Number - 2, fibonacci(Number1, Result1), fibonacci(Number2, Result2), Result is Result1 + Result2.

fib(X,Y) :- fibonacci(X, F), F == Y.
