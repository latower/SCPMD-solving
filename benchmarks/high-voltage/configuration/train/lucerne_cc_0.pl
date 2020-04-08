9

line('6542', '21282').
line('6542', '29668').
line('64290', '9059').
line('9059', '31095').
line('28832', '3197').
line('3197', '56657').
line('64290', '3197').
line('9059', '12528').
line('9059', '31095').
line('56657', '28832').
line('6542', '21282').
line('3197', '24990').
line('6542', '46537').
line('48807', '12549').
line('3197', '29668').
line('12593', '31095').
line('19161', '24990').
line('24990', '12593').
line('46537', '48807').

station('6542').
station('46537').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('3197')).
query(connected('9059')).
query(connected('12593')).
query(connected('48807')).
query(connected('12528')).
query(connected('12549')).
query(connected('19161')).
