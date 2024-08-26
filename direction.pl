/*FACTS*/
east(a, b).
east(b, c).
east(c, d).
east(d, e).
east(f, g).
east(g, h).
east(h, i).
east(i, j).
east(k, l).
east(l, m).
east(m, n).
east(n, o).
east(p, q).
east(q, r).
east(r, s).
east(s, t).

south(a, f).
south(f, k).
south(k, p).
south(b, g).
south(g, l).
south(l, q).
south(c, h).
south(h, m).
south(m, r).
south(d, i).
south(i, n).
south(n, s).
south(e, j).
south(j, o).
south(o, t).

/*Direction*/
west(A, B) :- east(B, A).
north(A, B) :- south(B, A).

northWest(A, B) :- north(A, C), west(C, B).
northEast(A, B) :- north(A, C), east(C, B).
southWest(A, B) :- south(A, C), west(C, B).
southEast(A, B) :- south(A, C), east(C, B).
