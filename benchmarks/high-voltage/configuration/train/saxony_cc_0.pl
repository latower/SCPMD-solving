20

line('2456', '55429').
line('55429', '55888').
line('36621', '53955').
line('46672', '36621').
line('2456', '10821').
line('28326', '46672').
line('30713', '21599').
line('36621', '3070').
line('65846', '65941').
line('30713', '21599').
line('44265', '23849').
line('20266', '9824').
line('9792', '9824').
line('65874', '54292').
line('27878', '61831').
line('9825', '9824').
line('3070', '24205').
line('2950', '9824').
line('2456', '10860').
line('24205', '30713').
line('39194', '23849').
line('36621', '65941').
line('54292', '55888').
line('36555', '28326').
line('2456', '9792').
line('9825', '5141').
line('67377', '62318').
line('36621', '46672').
line('61264', '67377').
line('62318', '3070').
line('61264', '62318').
line('36555', '3070').
line('20266', '9824').
line('65874', '21014').
line('23849', '2456').
line('9825', '65874').
line('39194', '3308').
line('67377', '2456').
line('27878', '5141').
line('9792', '3070').

plant('53955').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('2456')).
query(connected('3070')).
query(connected('9824')).
query(connected('36621')).
query(connected('9792')).
query(connected('9825')).
query(connected('46672')).
query(connected('39194')).
query(connected('5141')).
query(connected('36555')).
query(connected('3308')).
query(connected('10860')).
query(connected('44265')).
query(connected('10821')).
query(connected('2950')).
