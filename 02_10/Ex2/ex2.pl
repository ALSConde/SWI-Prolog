%func(C�digo, Nome, Sal�rio)
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).
func(4, leo, 2500.35).
func(5, cl�, 1800.00).
func(6, gil, 1100.00).

%dep(C�digo, Nome)
dep(1, ary).
dep(3, ra�).
dep(3, eva).
dep(4, lia).
dep(4, no�).
dep(5, eli).

%Consulta 1
%?- func(_,Y,Z), (Z >= 1500,Z=< 3000).

%Consulta 2
%?- func(C,N,S), S < 1200, \+ dep(C,_).

%Consulta 3
%?- dep(C,N), func(C,_,S), S>1700.
