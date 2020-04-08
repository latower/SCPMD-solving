22

line('4641', '21162').
line('37221', '20872').
line('65038', '25124').
line('39015', '20564').
line('55378', '22195').
line('34183', '33084').
line('4641', '47347').
line('29228', '37221').
line('8248', '21162').
line('14851', '16124').
line('65038', '25124').
line('5434', '51831').
line('21162', '56101').
line('41083', '11183').
line('20872', '29228').
line('58889', '62566').
line('41083', '8248').
line('25124', '21162').
line('37221', '53620').
line('37221', '53620').
line('7846', '58889').
line('37221', '53620').
line('21162', '30543').
line('37221', '53620').
line('14851', '47347').
line('14851', '16124').
line('53620', '20872').
line('36759', '4641').
line('36759', '3159').
line('29228', '22195').
line('25124', '56101').
line('33084', '62566').
line('65038', '14851').
line('65230', '55378').
line('57843', '58889').
line('29289', '55378').
line('37221', '30543').
line('33084', '62566').
line('37221', '22195').
line('57843', '29289').
line('39015', '8248').
line('10670', '21162').
line('3159', '37221').
line('37221', '51831').

station('8248').
station('51831').
station('10670').
station('11183').
station('4641').
plant('5434').
station('16124').
station('7846').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('37221')).
query(connected('14851')).
query(connected('36759')).
query(connected('3159')).
query(connected('47347')).
query(connected('39015')).
query(connected('41083')).
query(connected('53620')).
