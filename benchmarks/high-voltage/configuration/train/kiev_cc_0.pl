17

line('7447', '8189').
line('28560', '6995').
line('36905', '9387').
line('23803', '64930').
line('44415', '23803').
line('36640', '36905').
line('36640', '36905').
line('44415', '64930').
line('29140', '7447').
line('29140', '9928').
line('36640', '36905').
line('29140', '7447').
line('36640', '36905').
line('28560', '50008').
line('40706', '50533').
line('36640', '36905').
line('30440', '44415').
line('47670', '23803').
line('36640', '36905').
line('47670', '64930').
line('6995', '44415').
line('9928', '50533').
line('36905', '49734').
line('44415', '30440').
line('49734', '63175').
line('11658', '9928').
line('63175', '49734').
line('36640', '36905').
line('9928', '50533').
line('36640', '36905').
line('36905', '7447').
line('36640', '36905').
line('8189', '44415').
line('36640', '36905').

plant('36640').
plant('8189').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('44415')).
query(connected('36905')).
query(connected('7447')).
query(connected('9928')).
query(connected('49734')).
query(connected('47670')).
query(connected('6995')).
query(connected('50533')).
query(connected('50008')).
query(connected('11658')).
query(connected('9387')).
query(connected('40706')).
