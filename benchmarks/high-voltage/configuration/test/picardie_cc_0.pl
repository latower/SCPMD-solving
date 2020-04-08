30

line('4504', '68038').
line('45361', '28099').
line('39753', '34019').
line('59040', '62248').
line('41631', '34018').
line('39753', '7533').
line('57831', '62248').
line('57829', '9080').
line('64458', '43695').
line('64455', '43667').
line('43667', '35452').
line('68037', '4504').
line('39753', '5643').
line('7533', '41631').
line('4504', '43233').
line('30476', '43667').
line('9191', '64455').
line('43204', '17073').
line('29122', '43054').
line('43234', '5643').
line('4504', '39788').
line('35452', '28376').
line('57830', '57831').
line('17073', '68037').
line('39753', '43234').
line('30301', '7511').
line('39753', '59040').
line('49365', '28099').
line('4504', '7274').
line('43054', '30301').
line('57830', '59040').
line('43204', '17073').
line('5643', '43234').
line('9191', '36217').
line('41561', '5643').
line('5638', '68037').
line('57830', '9080').
line('43667', '43695').
line('30476', '5638').
line('23025', '23836').
line('34019', '54624').
line('43667', '30476').
line('43234', '64455').
line('7274', '4504').
line('28376', '9096').
line('64458', '23836').
line('5638', '5676').
line('41631', '23025').
line('43204', '17073').
line('4504', '68038').
line('62248', '39753').
line('6609', '9080').
line('47801', '4504').
line('30301', '9080').
line('5638', '68038').
line('57831', '9080').
line('43204', '5676').
line('39686', '45361').
line('57829', '28099').
line('7533', '34018').

station('35452').
station('39753').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('4504')).
query(connected('9080')).
query(connected('5638')).
query(connected('43667')).
query(connected('41631')).
query(connected('7533')).
query(connected('43234')).
query(connected('5643')).
query(connected('43695')).
query(connected('43204')).
query(connected('17073')).
query(connected('45361')).
query(connected('43054')).
query(connected('9191')).
query(connected('5676')).
query(connected('49365')).
query(connected('7511')).
query(connected('41561')).
query(connected('43233')).
query(connected('9096')).
query(connected('7274')).
query(connected('6609')).
query(connected('39686')).
query(connected('47801')).
query(connected('36217')).
query(connected('39788')).
