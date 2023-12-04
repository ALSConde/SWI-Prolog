anexa([], B, B).
anexa([X|A], B, [X|C]) :-
    anexa(A, B, C).

inv([], []).
inv([Cabeca|Cauda], R) :-
    inv(Cauda, R1),
    anexa(R1, [Cabeca], R).
