cls:- write('\33\[2J').
pai(ivo,eva).
pai(gil,ra�).
pai(gil,cl�).
pai(gil,ary).
pai(ra�,no�).
pai(ary,gal).

m�e(ana,eva).
m�e(bia,ra�).
m�e(bia,cl�).
m�e(bia,ary).
m�e(eva,no�).
m�e(lia,gal).

homem(ivo).
homem(gil).
homem(ra�).
homem(ary).
homem(no�).

mulher(ana).
mulher(eva).
mulher(bia).
mulher(lia).
mulher(gal).
mulher(cl�).

gerou(X,Y) :- pai(X,Y); m�e(X,Y).

feliz(X) :- gerou(X, _).

casal(X, Y) :- gerou(X, Z), gerou(Y, Z), X \= Y.
