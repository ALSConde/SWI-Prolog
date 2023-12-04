tam([], 0).
tam([_|Resto], N) :-
    tam(Resto, N1),
    N is N1 + 1.

