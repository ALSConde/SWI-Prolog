%pa�s(Nome, �rea, Popula��o)
pa�s(brasil, 9, 130).
pa�s(china, 12, 1800).
pa�s(eua, 9, 230).
pa�s(�ndia, 3, 450).

%definir a densidade por pais
dens(P,D) :-  pa�s(P,A,T), D is T/A.

%maior pop
pop(X,Y) :- pa�s(X,_,Z) , pa�s(Y,_,C), Z>C.
