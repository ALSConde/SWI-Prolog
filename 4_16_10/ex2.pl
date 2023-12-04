para_binario_aux(0, [0]).
para_binario_aux(1, [1]).

para_binario_aux(N, [Resto|BinRestante]) :-
    N > 1,
    Quociente is N div 2,
    Resto is N mod 2,
    para_binario_aux(Quociente, BinRestante).

reverter_lista([], []).
reverter_lista([H|T], Revertida) :-
    reverter_lista(T, RevertidaT),
    append(RevertidaT, [H], Revertida).

para_binario(N, Binario) :-
    para_binario_aux(N, BinAux),
    reverter_lista(BinAux, Binario).
