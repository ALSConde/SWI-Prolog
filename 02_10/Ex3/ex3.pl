% filme(T�tulo, G�nero, Ano, Dura��o)
filme('Uma linda mulher', romance, 1990, 119).
filme('Sexto sentido', suspense, 2001, 108).
filme('A cor p�rpura', drama, 1985, 152).
filme('Copacabana', com�dia, 2001, 92).
filme('E o vento levou', drama, 1939, 233).
filme('Carrington', romance, 1995, 130).

longo(T) :-  filme(T,_,_,D), D > 150.
lan�amento(T) :- filme(T,_,A,_),(2002 - A) =< 1.

