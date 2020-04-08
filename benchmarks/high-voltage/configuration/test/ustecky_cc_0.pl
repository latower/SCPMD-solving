26

line('34968', '67329').
line('22997', '56880').
line('2814', '2816').
line('63882', '63239').
line('2814', '32634').
line('2836', '21198').
line('56880', '29950').
line('28578', '2814').
line('55369', '22073').
line('2836', '21198').
line('36876', '60500').
line('23935', '22073').
line('63239', '55369').
line('67802', '67083').
line('2816', '23089').
line('21198', '36876').
line('30012', '55369').
line('2814', '32634').
line('60594', '58225').
line('2836', '67083').
line('30012', '23935').
line('22995', '56879').
line('36876', '67802').
line('20844', '36876').
line('56880', '22073').
line('36876', '27769').
line('67329', '46531').
line('22995', '63893').
line('22996', '63893').
line('22996', '22997').
line('22995', '22996').
line('2816', '66689').
line('22997', '56879').
line('2816', '32634').
line('63239', '63882').
line('18529', '58225').
line('29950', '63893').
line('2816', '27769').
line('56879', '29950').
line('34968', '28578').
line('2814', '2816').
line('63882', '55369').
line('67802', '67083').
line('36876', '60594').
line('36876', '60500').
line('63893', '55369').
line('60500', '23090').
line('66689', '58225').
line('28578', '2816').
line('23089', '23935').
line('66689', '60594').
line('2816', '23089').

plant('2814').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('36876')).
query(connected('2816')).
query(connected('2836')).
query(connected('34968')).
query(connected('46531')).
query(connected('18529')).
