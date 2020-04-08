17

line('37345', '25265').
line('19630', '61269').
line('25264', '59149').
line('56632', '21316').
line('56637', '21316').
line('16123', '25257').
line('16123', '25267').
line('50087', '19055').
line('50091', '59149').
line('16125', '28802').
line('25260', '59152').
line('48488', '25259').
line('48488', '25260').
line('53450', '25283').
line('25267', '55512').
line('19630', '59152').
line('21316', '25283').
line('56637', '29725').
line('16125', '25265').
line('21316', '62175').
line('39433', '61269').
line('56632', '62175').
line('56637', '62175').
line('16125', '59152').
line('37345', '10795').
line('50092', '25283').
line('25257', '28802').
line('16125', '61269').
line('25267', '25260').
line('53450', '50087').
line('16123', '25264').
line('50087', '19630').
line('25256', '25257').
line('50087', '50090').
line('50088', '16123').

station('16123').
station('50088').
station('50091').
station('19055').
station('50092').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('16125')).
query(connected('50087')).
query(connected('19630')).
query(connected('53450')).
query(connected('48488')).
query(connected('37345')).
query(connected('10795')).
query(connected('50090')).
query(connected('39433')).
