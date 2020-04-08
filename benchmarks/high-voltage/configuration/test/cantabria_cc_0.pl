17

line('65005', '39102').
line('33689', '33697').
line('29258', '46212').
line('30856', '28421').
line('5089', '64114').
line('23231', '24871').
line('67821', '26800').
line('50372', '22186').
line('29258', '46212').
line('50372', '52600').
line('64114', '65005').
line('50372', '63016').
line('23231', '26800').
line('39102', '24871').
line('26800', '22186').
line('64039', '63016').
line('38872', '13653').
line('38872', '5089').
line('50372', '22186').
line('67821', '57205').
line('50372', '23231').
line('30856', '20321').
line('4858', '5089').
line('4858', '55162').
line('33689', '33697').
line('38872', '4858').
line('8296', '63016').
line('38872', '39051').
line('67821', '5089').
line('57205', '65005').
line('48136', '29258').
line('33689', '28421').
line('64114', '28421').
line('46212', '24871').

station('48136').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('5089')).
query(connected('50372')).
query(connected('38872')).
query(connected('4858')).
query(connected('39102')).
query(connected('46212')).
query(connected('39051')).
query(connected('52600')).
query(connected('13653')).
query(connected('8296')).
