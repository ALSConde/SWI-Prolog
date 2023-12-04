último([X], X).
último([_|Resto], U) :- último(Resto, U).
