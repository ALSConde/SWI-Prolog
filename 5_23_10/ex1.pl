�ltimo([X], X).
�ltimo([_|Resto], U) :- �ltimo(Resto, U).
