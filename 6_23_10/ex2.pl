:- dynamic estado/1.
estado(apagada).

liga :-
    retract(estado(apagada)),  % Remove o estado atual da lâmpada se for 'apagada'.
    asserta(estado(acessa)).   % Adiciona o estado 'acessa' para a lâmpada.

desliga :-
    retract(estado(acessa)),   % Remove o estado atual da lâmpada se for 'acessa'.
    asserta(estado(apagada)).  % Adiciona o estado 'apagada' para a lâmpada.

lâmpada(X) :-
    estado(X).
