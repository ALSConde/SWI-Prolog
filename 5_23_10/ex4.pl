m�x([X], X).
m�x([Cabeca|Cauda], M) :-
    m�x(Cauda, M1),
    (Cabeca > M1 ->
        M = Cabeca;
        M = M1
    ).
