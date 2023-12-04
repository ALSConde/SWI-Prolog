cls:- write('\33\[2J').
pai(ivo,eva).
pai(gil,raí).
pai(gil,clô).
pai(gil,ary).
pai(raí,noé).
pai(ary,gal).

mãe(ana,eva).
mãe(bia,raí).
mãe(bia,clô).
mãe(bia,ary).
mãe(eva,noé).
mãe(lia,gal).

homem(ivo).
homem(gil).
homem(raí).
homem(ary).
homem(noé).

mulher(ana).
mulher(eva).
mulher(bia).
mulher(lia).
mulher(gal).
mulher(clô).

gerou(X,Y) :- pai(X,Y); mãe(X,Y).

filho(X,Y) :- homem(X), pai(Y,X); mãe(Y,X).
filha(X,Y) :- mulher(X), pai(Y,X); mãe(Y,X).

irmão(X,Y) :- homem(X), pai(Z,X), pai(Z,Y), mãe(C,X), mãe(C,Y), X\=Y.
irmã(X,Y) :- mulher(X), pai(Z,X), pai(Z,Y), mãe(C,X), mãe(C,Y), X\=Y.

tio(X,Y) :- homem(X), (pai(Z,Y), irmão(X,Z); mãe(Z,Y), irmão(X,Z)).
tia(X,Y) :- mulher(X), (pai(Z,Y), irmã(X,Z); mãe(Z,Y), irmã(X,Z)).

primo(X,Y) :- homem(X), (pai(Z,X), tio(Z,Y); mãe(Z,X), tia(Z,Y)), X \= Y.
prima(X,Y) :- mulher(X), (pai(Z,X), tio(Z,Y); mãe(Z,X), tia(Z,Y)), X \= Y.

avô(X,Y) :- homem(X), (pai(X,Z), (pai(Z,Y); mãe(Z,Y))).
avó(X,Y) :- mulher(X), (mãe(X,Z), (pai(Z,Y); mãe(Z,Y))).


