:- dynamic pos/2.
pos(rob�, garagem).
pos(tv, sala).

ande(Dest) :-
    retract(pos(rob�, Origem)),
    write('anda de '), write(Origem), write(' at� '), writeln(Dest),
    asserta(pos(rob�, Dest)).

pegue(Obj) :-
    pos(rob�, LocRobo),
    (
        pos(Obj, LocObj)
        ->
        (
            LocRobo = LocObj
            ->
            retract(pos(Obj, LocObj)),
            write('pega '), writeln(Obj)
            ;
            ande(LocObj),
            retract(pos(Obj, LocObj)),
            write('pega '), writeln(Obj)
        )
        ;
        write('Onde est� '), write(Obj), write('? '), read(NewLoc),
        asserta(pos(Obj, NewLoc)),
        ande(NewLoc),
        retract(pos(Obj, NewLoc)),
        write('pega '), writeln(Obj)
    ).


solte(Obj) :-
    pos(rob�, Loc),
    asserta(pos(Obj, Loc)),
    write('solta '), writeln(Obj).

