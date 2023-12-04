estrada(1,a,b).
estrada(2,a,d).
estrada(3,b,c).
estrada(5,b,e).
estrada(4,c,d).
estrada(6,c,f).
estrada(7,d,f).
estrada(8,e,f).


rota(A, B, R) :- rota_aux(A, B, [], R).

rota_aux(A, B, _, [N]) :-
    estrada(N, A, B).

rota_aux(A, B, Visitadas, [N|R]) :-
    estrada(N, A, C),
    C \= B,
    \+ member(C, Visitadas),
    rota_aux(C, B, [C|Visitadas], R).
