15

line('46525', '55787').
line('12618', '25354').
line('55787', '60126').
line('25353', '25354').
line('25354', '55788').
line('21901', '55788').
line('31137', '55788').
line('13698', '59242').
line('65355', '12547').
line('12547', '59241').
line('41281', '15950').
line('41281', '47318').
line('46525', '59241').
line('49920', '60126').
line('15949', '60126').
line('12547', '31259').
line('46525', '12547').
line('15949', '49921').
line('65355', '21901').
line('46525', '65355').
line('7195', '49921').
line('41281', '49921').
line('13699', '25353').
line('12547', '21901').
line('59242', '25353').
line('46525', '31259').
line('7195', '41281').
line('58941', '59242').
line('58941', '31259').
line('59241', '55787').
line('12618', '31137').

station('13699').
station('12547').
station('41281').
station('46525').
station('13698').
station('12618').
station('47318').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('49921')).
query(connected('7195')).
query(connected('15949')).
query(connected('15950')).
query(connected('49920')).
