22

line('31832', '67103').
line('27728', '61058').
line('55816', '27575').
line('29525', '30408').
line('27121', '27236').
line('44243', '23757').
line('67032', '27236').
line('33564', '21376').
line('59081', '23742').
line('25781', '29773').
line('25781', '25782').
line('39178', '57625').
line('67103', '31832').
line('39764', '27574').
line('39178', '57625').
line('48394', '27575').
line('27728', '27121').
line('30408', '39178').
line('43495', '56556').
line('25782', '29773').
line('27574', '27575').
line('39181', '33564').
line('39764', '25781').
line('22483', '67032').
line('39178', '57625').
line('57625', '23739').
line('67442', '67743').
line('67103', '23739').
line('39181', '8270').
line('67032', '29525').
line('67032', '61058').
line('43495', '9533').
line('67743', '55806').
line('22483', '27236').
line('56556', '23742').
line('61058', '27121').
line('22483', '33564').
line('27574', '23757').
line('28108', '55806').
line('39764', '48394').
line('39764', '39181').
line('28108', '56556').
line('27728', '59081').
line('39764', '23739').
line('67442', '23757').

station('9533').
station('43495').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('39764')).
query(connected('39181')).
query(connected('39178')).
query(connected('48394')).
query(connected('8270')).
query(connected('44243')).
