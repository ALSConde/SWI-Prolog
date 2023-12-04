%pessoa(nome,sexo,idade,altura,peso)
pessoa(ana,fem,23,1.55,56.0).
pessoa(bia,fem,19,1.71,61.3).
pessoa(ivo,masc,22,1.80,70.5).
pessoa(lia,fem,17,1.85,57.3).
pessoa(eva,fem,28,1.75,68.7).
pessoa(ary,masc,25,1.72,68.9).

pideal(A,PID) :- PID is 62.1*A-44.7.

modelo(N) :- pessoa(N,fem,I,A,P),A>1.70,I<25,pideal(A,PID),P=<PID.
