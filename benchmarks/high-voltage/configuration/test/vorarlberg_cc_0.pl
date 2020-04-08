11

line('39789', '41843').
line('33949', '37116').
line('61068', '33101').
line('6808', '61068').
line('5602', '5211').
line('6808', '41844').
line('37116', '55842').
line('5602', '6808').
line('41843', '56641').
line('19249', '55842').
line('39789', '20603').
line('5211', '55842').
line('37116', '61068').
line('67167', '7606').
line('47811', '56641').
line('33949', '5211').
line('33101', '37116').
line('56641', '55828').
line('6808', '55828').
line('33101', '7606').
line('5602', '67920').
line('5211', '67920').
line('6808', '67167').

plant('39789').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('6808')).
query(connected('5211')).
query(connected('37116')).
query(connected('5602')).
query(connected('41843')).
query(connected('7606')).
query(connected('47811')).
query(connected('19249')).
query(connected('41844')).
