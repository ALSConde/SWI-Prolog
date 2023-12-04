% filme(Título, Gênero, Ano, Duração)
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor púrpura', drama, 1985, 152).
filme('Copacabana', comédia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

longo(T) :-  filme(T,_,_,D), D > 150.
lançamento(T) :- filme(T,_,A,_),(2002 - A) =< 1.

