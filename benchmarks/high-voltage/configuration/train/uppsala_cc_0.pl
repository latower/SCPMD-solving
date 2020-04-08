19

line('11712', '56043').
line('5511', '5530').
line('5511', '5530').
line('57921', '23888').
line('5530', '12573').
line('55755', '55956').
line('10391', '23888').
line('11543', '56043').
line('5530', '10391').
line('10425', '61238').
line('10425', '55911').
line('15277', '61238').
line('26074', '64591').
line('5530', '42762').
line('45710', '26626').
line('10425', '64591').
line('64591', '61238').
line('61238', '55730').
line('8648', '26074').
line('12854', '12855').
line('45712', '62680').
line('56043', '22126').
line('10391', '55730').
line('12853', '22126').
line('55755', '22126').
line('5511', '5530').
line('10425', '55730').
line('62680', '55755').
line('8648', '49499').
line('5511', '5530').
line('12853', '26626').
line('12853', '12854').
line('10391', '57921').
line('5530', '11543').
line('23888', '5530').
line('55911', '26074').
line('45712', '55956').
line('26626', '55911').

plant('5511').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('5530')).
query(connected('10425')).
query(connected('10391')).
query(connected('12853')).
query(connected('12854')).
query(connected('8648')).
query(connected('11543')).
query(connected('45712')).
query(connected('12855')).
query(connected('15277')).
query(connected('49499')).
query(connected('11712')).
query(connected('12573')).
query(connected('42762')).
query(connected('45710')).
