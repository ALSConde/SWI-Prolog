vertical(ponto(X1,_), ponto(X2,_)) :- X1 = X2.
horizontal(ponto(_,Y1), ponto(_,Y2)) :- Y1 = Y2.

regular(retangulo(A,B,C,D)) :-
    (vertical(A,B), horizontal(B,C), vertical(C,D), horizontal(D,A)) ;
    (horizontal(A,B), vertical(B,C), horizontal(C,D), vertical(D,A)).

distancia(ponto(X1,Y1), ponto(X2,Y2), D) :-
    D is sqrt((X2-X1)**2 + (Y2-Y1)**2).

quadrado(R) :-
    regular(R),
    R = retangulo(A,B,C,D),
    distancia(A,B,D1),
    distancia(B,C,D2),
    distancia(C,D,D3),
    distancia(D,A,D4),
    D1 = D2, D2 = D3, D3 = D4.
