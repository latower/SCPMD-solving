22

line('4830', '4926').
line('33142', '22237').
line('27169', '4830').
line('27337', '27336').
line('26939', '26936').
line('29268', '38971').
line('33145', '4830').
line('26939', '66921').
line('27170', '4830').
line('60846', '51878').
line('26939', '27337').
line('29268', '22237').
line('25004', '21992').
line('27336', '21992').
line('58883', '12433').
line('22237', '67203').
line('33143', '33142').
line('58883', '25004').
line('39107', '26936').
line('21795', '38971').
line('27169', '21755').
line('26936', '66921').
line('27170', '21755').
line('60846', '60847').
line('33123', '67202').
line('58883', '60847').
line('4830', '29268').
line('21795', '33143').
line('33123', '67202').
line('27169', '21755').
line('39107', '4926').
line('66921', '51396').
line('33123', '4830').
line('38971', '33142').
line('27337', '21992').
line('25004', '26940').
line('33145', '67203').
line('18026', '26940').
line('4830', '67202').
line('33145', '67203').
line('60846', '27336').
line('39107', '21049').
line('33145', '38971').
line('27169', '27170').
line('4830', '33143').

station('38971').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('4830')).
query(connected('39107')).
query(connected('4926')).
query(connected('51396')).
query(connected('51878')).
query(connected('18026')).
query(connected('12433')).
