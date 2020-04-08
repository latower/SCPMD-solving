14

line('7663', '62830').
line('39491', '40207').
line('50895', '21720').
line('56451', '26911').
line('6142', '17933').
line('56451', '26911').
line('39491', '55601').
line('39491', '56451').
line('6142', '17934').
line('56451', '51796').
line('39491', '24616').
line('24616', '55972').
line('55601', '21720').
line('51796', '17941').
line('41071', '42941').
line('39491', '6142').
line('26911', '26907').
line('39491', '40207').
line('7663', '26907').
line('39491', '50895').
line('39491', '55601').
line('42941', '55972').
line('26907', '62830').
line('6142', '17934').
line('6142', '59229').
line('6989', '42941').
line('17933', '59229').
line('39491', '59229').

station('41071').
station('6989').
station('42941').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('39491')).
query(connected('6142')).
query(connected('51796')).
query(connected('17933')).
query(connected('50895')).
query(connected('7663')).
query(connected('17934')).
query(connected('40207')).
query(connected('17941')).
