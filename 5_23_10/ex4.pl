máx([X], X).
máx([Cabeca|Cauda], M) :-
    máx(Cauda, M1),
    (Cabeca > M1 ->
        M = Cabeca;
        M = M1
    ).
