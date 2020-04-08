17

line('49596', '59116').
line('25291', '20666').
line('25291', '59116').
line('48179', '59137').
line('39182', '65291').
line('49175', '59168').
line('48585', '25251').
line('59169', '62740').
line('48179', '14597').
line('52923', '59169').
line('13615', '48585').
line('14597', '59137').
line('25251', '28836').
line('14505', '59420').
line('48179', '39182').
line('13615', '59136').
line('59168', '22249').
line('48423', '59420').
line('5142', '48585').
line('65291', '21683').
line('59137', '21262').
line('13615', '28836').
line('62740', '22249').
line('25251', '59168').
line('48179', '65272').
line('59136', '59420').
line('49596', '65272').
line('21683', '65272').
line('13694', '59136').
line('14597', '59136').
line('48179', '14597').
line('13694', '15628').
line('48154', '48585').
line('62740', '52969').

station('15628').
station('13694').
station('48154').
station('5142').
station('49175').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('48585')).
query(connected('48179')).
query(connected('13615')).
query(connected('14597')).
query(connected('49596')).
query(connected('39182')).
query(connected('52923')).
query(connected('52969')).
query(connected('14505')).
query(connected('48423')).
