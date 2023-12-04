:- dynamic pos/2.
pos(rob�, garagem).
pos(tv, sala).

ande(Dest) :-
    retract(pos(rob�, Origem)),
    write('anda de '), write(Origem), write(' at� '), writeln(Dest),
    asserta(pos(rob�, Dest)).

pegue(Obj) :-
    pos(rob�, LocRobo),
    pos(Obj, LocObj),
    (
        LocRobo = LocObj  % Se o rob� e o objeto est�o no mesmo local
        ->
        retract(pos(Obj, LocObj)),
        write('pega '), writeln(Obj)
        ;
        ande(LocObj),  % Fa�a o rob� ir at� o local do objeto
        retract(pos(Obj, LocObj)),
        write('pega '), writeln(Obj)
    ).

solte(Obj) :-
    pos(rob�, Loc),
    asserta(pos(Obj, Loc)),
    write('solta '), writeln(Obj).
