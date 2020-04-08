30

line('45940', '29302').
line('58694', '11923').
line('30984', '11970').
line('33487', '33488').
line('65033', '28779').
line('45944', '31053').
line('27426', '33489').
line('58693', '55783').
line('45945', '24797').
line('11976', '49303').
line('38852', '29302').
line('24828', '28461').
line('58684', '24797').
line('46036', '58693').
line('45896', '46036').
line('24910', '58684').
line('64954', '58684').
line('64954', '30984').
line('38852', '11976').
line('63398', '33488').
line('22329', '27426').
line('11924', '58694').
line('22328', '55288').
line('38852', '24828').
line('38852', '24803').
line('38852', '30984').
line('29431', '28461').
line('45945', '64954').
line('67522', '29431').
line('55783', '11923').
line('33487', '33489').
line('46036', '13841').
line('45944', '64975').
line('45896', '58693').
line('64975', '28779').
line('64975', '55786').
line('38852', '31053').
line('22328', '24828').
line('58694', '24803').
line('24910', '24797').
line('46228', '65033').
line('2410', '31053').
line('27425', '27426').
line('67522', '28461').
line('22329', '27425').
line('28779', '55786').
line('22328', '63398').
line('45944', '55786').
line('11976', '22329').
line('67522', '27425').
line('45944', '11970').
line('33487', '33489').
line('22550', '64955').
line('24795', '24796').
line('22550', '24795').
line('22550', '24795').
line('45944', '45940').
line('64955', '24910').
line('38852', '45945').
line('29431', '63398').

plant('2410').
station('13841').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('38852')).
query(connected('45944')).
query(connected('45945')).
query(connected('46036')).
query(connected('11976')).
query(connected('11923')).
query(connected('45896')).
query(connected('11970')).
query(connected('45940')).
query(connected('11924')).
query(connected('49303')).
query(connected('46228')).
