16

line('29297', '16954').
line('30176', '55063').
line('8307', '29312').
line('57210', '54003').
line('57209', '64119').
line('16460', '50877').
line('27284', '53237').
line('60049', '29312').
line('27284', '54003').
line('64120', '30176').
line('50877', '16460').
line('19446', '55063').
line('64119', '55063').
line('57210', '64120').
line('55373', '43902').
line('66205', '16460').
line('64119', '50343').
line('16460', '50877').
line('19446', '55063').
line('50343', '57209').
line('60049', '55373').
line('11213', '29297').
line('29312', '55063').
line('16460', '50877').
line('60049', '55063').
line('50876', '16460').
line('66205', '55063').
line('16460', '50877').
line('57210', '30176').
line('44212', '55063').
line('27284', '53236').
line('66205', '55373').
line('57209', '29297').

station('53237').
station('43902').
station('19446').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('16460')).
query(connected('50343')).
query(connected('11213')).
query(connected('50876')).
query(connected('53236')).
query(connected('16954')).
query(connected('8307')).
query(connected('44212')).
query(connected('50877')).
