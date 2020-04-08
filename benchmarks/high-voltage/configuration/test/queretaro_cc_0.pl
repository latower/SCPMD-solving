11

line('21524', '26154').
line('4447', '21523').
line('4448', '4449').
line('12338', '21520').
line('21520', '27340').
line('12338', '27339').
line('4449', '26145').
line('27340', '28497').
line('26153', '26154').
line('21524', '29414').
line('26144', '28497').
line('26144', '28497').
line('16510', '27431').
line('14204', '26145').
line('4449', '21524').
line('4449', '27431').
line('12536', '16510').
line('21523', '26154').
line('27339', '28497').
line('14204', '26144').
line('12338', '27431').
line('21523', '26153').

station('12338').
plant('4449').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('14204')).
query(connected('16510')).
query(connected('12536')).
query(connected('4448')).
query(connected('4447')).
