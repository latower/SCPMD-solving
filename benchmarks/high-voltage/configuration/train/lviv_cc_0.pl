21

line('46695', '56096').
line('12743', '19073').
line('12689', '29204').
line('46695', '56077').
line('46695', '12843').
line('12861', '67259').
line('25068', '12689').
line('62726', '46695').
line('12862', '16375').
line('12862', '28503').
line('66478', '19470').
line('12862', '18248').
line('51126', '60972').
line('12689', '19470').
line('25069', '46559').
line('46559', '8789').
line('46809', '67259').
line('16443', '50388').
line('50388', '66478').
line('12689', '25091').
line('46927', '12655').
line('46559', '56096').
line('46695', '12743').
line('66478', '16443').
line('23568', '24508').
line('28503', '56096').
line('46559', '8789').
line('23568', '24508').
line('25069', '25070').
line('25068', '25070').
line('12862', '60972').
line('16441', '50388').
line('16370', '46695').
line('25070', '12655').
line('52366', '60972').
line('23568', '24508').
line('25068', '25069').
line('46927', '13147').
line('16375', '28503').
line('8789', '23568').
line('67259', '8789').
line('12689', '29204').

station('12843').
station('46809').
station('46927').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('46695')).
query(connected('12689')).
query(connected('12862')).
query(connected('50388')).
query(connected('46559')).
query(connected('8789')).
query(connected('19470')).
query(connected('12655')).
query(connected('16375')).
query(connected('12743')).
query(connected('16443')).
query(connected('16441')).
query(connected('18248')).
query(connected('51126')).
query(connected('12861')).
query(connected('52366')).
query(connected('19073')).
query(connected('13147')).
query(connected('16370')).
