produto(0, _, 0).
produto(_, 0, 0).

produto(M, N, Resultado) :-
    N > 0,
    N1 is N - 1,
    produto(M, N1, TempResultado),
    Resultado is TempResultado + M.
