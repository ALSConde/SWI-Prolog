animal(c�o).
animal(can�rio).
animal(cobra).
animal(morcego).
animal(gaivota).

voa(can�rio).
voa(morcego).
voa(gaivota).

dif(X,X) :- !, fail.
dif(_,_).

p�ssaro(X) :- animal(X), voa(X), dif(X,morcego).
