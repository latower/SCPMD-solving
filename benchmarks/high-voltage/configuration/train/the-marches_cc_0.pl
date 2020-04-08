15

line('7814', '9912').
line('7815', '7814').
line('7814', '9912').
line('42569', '38583').
line('9915', '43859').
line('7817', '56978').
line('41865', '30034').
line('7814', '9912').
line('7817', '22053').
line('7814', '22053').
line('7815', '7821').
line('9912', '43869').
line('38583', '33842').
line('30034', '7816').
line('7820', '7821').
line('41865', '7815').
line('7817', '10486').
line('56978', '22053').
line('38583', '30034').
line('41865', '30034').
line('23876', '54958').
line('7815', '56978').
line('38583', '9915').
line('42569', '64481').
line('7816', '7817').
line('64481', '54958').
line('38583', '56981').
line('5433', '38583').
line('54958', '33842').
line('38583', '7820').

plant('9912').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('38583')).
query(connected('7815')).
query(connected('7817')).
query(connected('7814')).
query(connected('42569')).
query(connected('41865')).
query(connected('7820')).
query(connected('7816')).
query(connected('9915')).
query(connected('7821')).
query(connected('43869')).
query(connected('10486')).
query(connected('43859')).
query(connected('5433')).
