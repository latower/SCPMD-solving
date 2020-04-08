17

line('9970', '23907').
line('29161', '9969').
line('9971', '27248').
line('9969', '23907').
line('49243', '65372').
line('25929', '15118').
line('49459', '49460').
line('49459', '49460').
line('25929', '49038').
line('32085', '9971').
line('49459', '50994').
line('9971', '46293').
line('29295', '9971').
line('49243', '49244').
line('49459', '32085').
line('65372', '21624').
line('27248', '62537').
line('25929', '14680').
line('65372', '9969').
line('25929', '29161').
line('12771', '46712').
line('9969', '62537').
line('49460', '58835').
line('50994', '66288').
line('43925', '9969').
line('49460', '29295').
line('9971', '29161').
line('32085', '66288').
line('14680', '58835').
line('49460', '49461').
line('18496', '27248').
line('43925', '23907').
line('29295', '16115').
line('12771', '62537').

plant('12771').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('9969')).
query(connected('9971')).
query(connected('49460')).
query(connected('49459')).
query(connected('49243')).
query(connected('14680')).
query(connected('43925')).
query(connected('50994')).
query(connected('16115')).
query(connected('18496')).
query(connected('9970')).
query(connected('46712')).
query(connected('15118')).
query(connected('49038')).
query(connected('49244')).
query(connected('49461')).
query(connected('46293')).
