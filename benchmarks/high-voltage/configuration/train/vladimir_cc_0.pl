15

line('10701', '13888').
line('57691', '22240').
line('57687', '15887').
line('62433', '22240').
line('23254', '15887').
line('10100', '53704').
line('57691', '22240').
line('38970', '32882').
line('22240', '47110').
line('57687', '15887').
line('10100', '13888').
line('10701', '23938').
line('11094', '25796').
line('44210', '23938').
line('13888', '57687').
line('10100', '13888').
line('10100', '10701').
line('32882', '26957').
line('10100', '10701').
line('65586', '25796').
line('10100', '23938').
line('44083', '53704').
line('23254', '26957').
line('10701', '13888').
line('10100', '13888').
line('32882', '26957').
line('13888', '57691').
line('44210', '45102').
line('10100', '13888').
line('62433', '11094').

plant('45102').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('13888')).
query(connected('10100')).
query(connected('10701')).
query(connected('11094')).
query(connected('15887')).
query(connected('44210')).
query(connected('53704')).
query(connected('38970')).
query(connected('44083')).
query(connected('47110')).
