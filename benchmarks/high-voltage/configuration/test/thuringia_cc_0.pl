26

line('61349', '61348').
line('57395', '30275').
line('9303', '32220').
line('9303', '32252').
line('54388', '28486').
line('23192', '64419').
line('9303', '32220').
line('54861', '32466').
line('28346', '23808').
line('30274', '30275').
line('32140', '26301').
line('63073', '9303').
line('30443', '23808').
line('30443', '9618').
line('23192', '9232').
line('26198', '32220').
line('67401', '4628').
line('23515', '43686').
line('21681', '60084').
line('31304', '28486').
line('60084', '26301').
line('63073', '54388').
line('8552', '64141').
line('30187', '54388').
line('9232', '64419').
line('64133', '30187').
line('57683', '23808').
line('23192', '28486').
line('21681', '26198').
line('32252', '9303').
line('31304', '65749').
line('57683', '30443').
line('30274', '57395').
line('9525', '64133').
line('54388', '30274').
line('32140', '66173').
line('61349', '4628').
line('65749', '31304').
line('64141', '30187').
line('23515', '57395').
line('64419', '54861').
line('54861', '67401').
line('32252', '57539').
line('64133', '8552').
line('28346', '32466').
line('54388', '64141').
line('4628', '32466').
line('20251', '54861').
line('61348', '66173').
line('54861', '67401').
line('36748', '57539').
line('54861', '4628').

plant('8552').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('4628')).
query(connected('9303')).
query(connected('9232')).
query(connected('36748')).
query(connected('9525')).
query(connected('9618')).
query(connected('43686')).
