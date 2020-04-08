28

line('42634', '60975').
line('53405', '58606').
line('26705', '60621').
line('17202', '18252').
line('52382', '60993').
line('60316', '67416').
line('60620', '61332').
line('18440', '60993').
line('60621', '28138').
line('62576', '7196').
line('60316', '26705').
line('29817', '60929').
line('41580', '50251').
line('50251', '17228').
line('41580', '31162').
line('42634', '17770').
line('18252', '50000').
line('7092', '33370').
line('17332', '31162').
line('59098', '25212').
line('42029', '45668').
line('50000', '7092').
line('18440', '60929').
line('25209', '25212').
line('60620', '60621').
line('21652', '62576').
line('45668', '25212').
line('17332', '21768').
line('19231', '42029').
line('60620', '61331').
line('60316', '61331').
line('7196', '45668').
line('7092', '58606').
line('7196', '60975').
line('59098', '25211').
line('60994', '22001').
line('25211', '60994').
line('61331', '61332').
line('48358', '45668').
line('7092', '62576').
line('45668', '59098').
line('41580', '31162').
line('42027', '7196').
line('7092', '58606').
line('61332', '21652').
line('2358', '33370').
line('29817', '60929').
line('42027', '45668').
line('42029', '60975').
line('25209', '25211').
line('18446', '22001').
line('28138', '34048').
line('18619', '60993').
line('29817', '60994').
line('41580', '26705').
line('7092', '7196').
line('18440', '52251').

station('41580').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('45668')).
query(connected('7196')).
query(connected('7092')).
query(connected('18440')).
query(connected('42029')).
query(connected('50000')).
query(connected('42634')).
query(connected('17332')).
query(connected('50251')).
query(connected('42027')).
query(connected('18252')).
query(connected('2358')).
query(connected('48358')).
query(connected('52382')).
query(connected('18446')).
query(connected('17202')).
query(connected('18619')).
query(connected('17228')).
query(connected('19231')).
query(connected('52251')).
query(connected('17770')).
query(connected('53405')).
