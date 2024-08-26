/*List Operations*/
myElem(X, A) :- member(X, A).

myHead(X,[Head|_] ) :- (Head == X).

lastElem(X, [X]).
lastElem(X, [_|Tail]) :- lastElem(X, Tail).
myLast(X, A) :- lastElem(Last, A), (X == Last).

myTail(A, [_|Tail]) :- (Tail == A).

myAppend([],L, L).
myAppend([X|L1], L2, [X|L3]) :- myAppend(L1, L2, L3).

reverse([], []).
reverse([X|Y], Reversed) :- reverse(Y, Rest), append(Rest, [X], Reversed).
myReverse(A, B) :- reverse(A, Reversed), (Reversed == B).

delete(X, [X|Tail], Tail).
delete(X, [Head|Tail], [Head|Tail2]) :- delete(X, Tail, Tail2).
myDelete(X, A, B) :- delete(X, A, New), (B == New).
