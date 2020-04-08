18

line('37047', '61793').
line('33748', '61793').
line('39377', '8843').
line('68019', '60760').
line('68020', '52318').
line('61848', '33998').
line('68020', '10021').
line('10021', '28105').
line('28105', '68020').
line('30712', '65258').
line('65258', '60760').
line('4822', '68019').
line('37047', '32731').
line('54047', '61849').
line('32731', '61793').
line('10021', '60760').
line('54047', '61849').
line('37047', '32731').
line('27900', '27901').
line('37047', '39377').
line('27900', '33809').
line('30712', '64706').
line('10021', '68019').
line('37047', '39377').
line('61849', '27901').
line('39377', '27900').
line('10021', '28105').
line('30712', '65258').
line('4822', '6457').
line('61848', '33998').
line('37047', '33748').
line('27901', '33809').
line('32731', '33748').
line('39377', '61848').
line('4822', '33998').
line('10021', '41957').
line('37047', '39377').

plant('37047').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('10021')).
query(connected('39377')).
query(connected('4822')).
query(connected('6457')).
query(connected('52318')).
query(connected('41957')).
query(connected('8843')).
