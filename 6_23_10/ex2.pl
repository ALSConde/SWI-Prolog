:- dynamic estado/1.
estado(apagada).

liga :-
    retract(estado(apagada)),  % Remove o estado atual da l�mpada se for 'apagada'.
    asserta(estado(acessa)).   % Adiciona o estado 'acessa' para a l�mpada.

desliga :-
    retract(estado(acessa)),   % Remove o estado atual da l�mpada se for 'acessa'.
    asserta(estado(apagada)).  % Adiciona o estado 'apagada' para a l�mpada.

l�mpada(X) :-
    estado(X).
