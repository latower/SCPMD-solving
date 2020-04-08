14

line('7485', '23035').
line('40798', '20061').
line('23034', '23035').
line('20061', '23708').
line('8795', '9463').
line('57406', '20615').
line('8795', '9463').
line('23708', '20615').
line('46308', '22104').
line('7835', '57406').
line('40798', '9998').
line('7485', '7835').
line('8825', '23033').
line('7835', '7904').
line('9453', '20061').
line('7835', '23033').
line('8795', '9463').
line('20061', '20615').
line('8825', '23034').
line('7835', '22104').
line('40798', '9463').
line('7835', '9463').
line('9463', '26954').
line('8795', '57406').
line('23033', '23034').
line('8795', '23708').
line('40798', '9463').
line('40798', '26954').

station('7904').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('7835')).
query(connected('40798')).
query(connected('9463')).
query(connected('20061')).
query(connected('8795')).
query(connected('7485')).
query(connected('8825')).
query(connected('9453')).
query(connected('46308')).
query(connected('9998')).
