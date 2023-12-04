%país(Nome, Área, População)
país(brasil, 9, 130).
país(china, 12, 1800).
país(eua, 9, 230).
país(índia, 3, 450).

%definir a densidade por pais
dens(P,D) :-  país(P,A,T), D is T/A.

%maior pop
pop(X,Y) :- país(X,_,Z) , país(Y,_,C), Z>C.
