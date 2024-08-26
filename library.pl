/*FACTS*/
book(japan, yuki, comedy, 210).
book(maths, mathGuy, study, 500).
book(fairyTail, hiroMashima, fiction, 300).
book(onePiece, oda, fiction, 10000).
book(kamisamaKiss, nanmi, drama, 430).


/*Library*/
buildLibrary(Lib) :- findall(book(Title, Author, Genre, Size), book(Title, Author,
Genre, Size), Lib).

holiday(book(Title, Author, Genre, Size), Lib) :-  member(book(Title, Author, Genre, Size), Lib),(Genre \== study, Genre \== reference), (Size < 400).

revision(book(Title, Author, Genre, Size), Lib) :-  member(book(Title, Author, Genre, Size), Lib),(Genre == study; Genre == reference), (Size > 300).

literary(book(Title, Author, Genre, Size), Lib) :-  member(book(Title, Author, Genre, Size), Lib),(Genre == drama).

leisure(book(Title, Author, Genre, Size), Lib) :-  member(book(Title, Author, Genre, Size), Lib),(Genre == comedy; Genre == fiction).
