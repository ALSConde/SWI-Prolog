soma([], 0).
soma([Cabeca|Cauda], S) :-
    soma(Cauda, S1),
    S is Cabeca + S1.
