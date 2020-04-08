10

line('58106', '27381').
line('10379', '22568').
line('66864', '66866').
line('22568', '28468').
line('66866', '55943').
line('38903', '55943').
line('42018', '28468').
line('62608', '24023').
line('8249', '27381').
line('66864', '66866').
line('10838', '58106').
line('42018', '62754').
line('38903', '24023').
line('22568', '26865').
line('27381', '24023').
line('26865', '66864').
line('62754', '28468').
line('58106', '60809').
line('60809', '62608').
line('46564', '60809').
line('10838', '30716').

station('38903').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('10838')).
query(connected('42018')).
query(connected('8249')).
query(connected('10379')).
query(connected('46564')).
