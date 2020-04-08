line('3162', '37247').
line('67446', '34061').
line('54023', '15381').
line('2219', '54023').
line('49570', '27534').
line('67458', '68186').
line('27010', '66999').
line('37247', '61439').
line('58621', '37333').
line('54330', '61439').
line('37293', '3252').
line('61406', '25136').
line('58621', '54023').
line('27492', '54330').
line('67545', '27471').
line('66999', '2219').
line('46994', '27485').
line('67458', '15381').
line('36333', '66999').
line('37238', '37247').
line('54023', '67458').
line('3252', '27534').
line('37250', '61439').
line('3163', '3162').
line('37252', '27492').
line('54330', '37247').
line('3162', '37293').
line('37333', '27530').
line('36332', '27010').
line('54023', '67446').
line('3162', '42711').
line('3252', '27534').
line('27485', '37247').
line('27530', '27531').
line('3161', '61406').
line('37238', '27435').
line('36334', '27010').
line('54330', '37293').
line('27485', '27492').
line('37238', '37247').
line('49570', '27531').
line('67545', '54023').
line('37252', '54330').
line('37238', '61406').
line('3162', '27435').
line('27471', '25136').

station('36334').
station('2219').
station('36332').
station('15381').
station('36333').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('3162')).
query(connected('37247')).
query(connected('37293')).
query(connected('37238')).
query(connected('37333')).
query(connected('37252')).
query(connected('3252')).
query(connected('49570')).
query(connected('3161')).
query(connected('37250')).
query(connected('3163')).
query(connected('46994')).
query(connected('42711')).
