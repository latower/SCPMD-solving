18

line('34127', '62641').
line('4603', '55240').
line('17498', '17499').
line('41091', '11724').
line('12767', '61382').
line('22541', '16523').
line('32778', '66794').
line('51390', '51389').
line('17516', '55895').
line('28936', '21288').
line('28726', '42593').
line('61382', '28726').
line('28726', '41091').
line('27592', '4603').
line('62641', '62640').
line('51485', '27592').
line('26398', '55332').
line('51386', '32777').
line('66794', '32777').
line('53826', '61382').
line('66794', '51387').
line('62304', '28936').
line('29060', '39472').
line('42593', '62641').
line('51485', '22541').
line('51485', '28943').
line('41091', '26398').
line('17505', '51390').
line('55895', '28936').
line('32777', '29060').
line('27592', '28943').
line('26398', '55332').
line('62304', '16523').
line('4603', '29060').
line('28943', '51390').
line('4603', '62640').
line('32778', '17499').

plant('16523').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('4603')).
query(connected('51485')).
query(connected('41091')).
query(connected('51390')).
query(connected('42593')).
query(connected('17499')).
query(connected('51387')).
query(connected('51386')).
query(connected('17516')).
query(connected('53826')).
query(connected('11724')).
query(connected('51389')).
query(connected('17498')).
query(connected('17505')).
query(connected('12767')).
query(connected('39472')).
