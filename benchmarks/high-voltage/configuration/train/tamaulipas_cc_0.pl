11

line('3199', '3207').
line('1933', '20085').
line('3207', '20635').
line('1933', '20633').
line('3209', '3210').
line('3182', '20637').
line('20637', '20638').
line('3209', '26254').
line('20637', '3198').
line('20633', '20635').
line('2001', '20085').
line('26253', '26254').
line('3211', '20636').
line('20636', '20638').
line('26253', '26254').
line('1933', '20084').
line('14487', '26253').
line('20084', '20085').
line('3209', '20635').
line('3207', '20638').
line('3208', '20636').
line('20633', '20084').

station('3182').
station('3199').
station('3211').
station('3208').
station('1933').
station('3198').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('3207')).
query(connected('3209')).
query(connected('14487')).
query(connected('3210')).
query(connected('2001')).
