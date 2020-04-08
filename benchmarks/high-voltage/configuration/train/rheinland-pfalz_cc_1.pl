30

line('55655', '57572').
line('48892', '57573').
line('30420', '23761').
line('57619', '27961').
line('57039', '57555').
line('30600', '54470').
line('17017', '49932').
line('33337', '63507').
line('55655', '23687').
line('28268', '23733').
line('65170', '58997').
line('55708', '9555').
line('23732', '67754').
line('27961', '64376').
line('9552', '30600').
line('15444', '27345').
line('9555', '23761').
line('55708', '23733').
line('23728', '55030').
line('23684', '23685').
line('57573', '57566').
line('55030', '57555').
line('27345', '33337').
line('23686', '23685').
line('20769', '67754').
line('57556', '57039').
line('65170', '12512').
line('57556', '57555').
line('57619', '23728').
line('57644', '57645').
line('33594', '57644').
line('33594', '57645').
line('23761', '57645').
line('57618', '23732').
line('12512', '58997').
line('57566', '64345').
line('9552', '33594').
line('9554', '30420').
line('55655', '48892').
line('23733', '23734').
line('29090', '67757').
line('67757', '67754').
line('33337', '67376').
line('23732', '63056').
line('15444', '57644').
line('63507', '49932').
line('23732', '23734').
line('13545', '65170').
line('28268', '23734').
line('20769', '63056').
line('23686', '57572').
line('28268', '9514').
line('67376', '63507').
line('64345', '57039').
line('46962', '29090').
line('57618', '64376').
line('67757', '20769').
line('20769', '46962').
line('57573', '58997').
line('57566', '23687').

station('13545').
station('9555').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('46962')).
query(connected('15444')).
query(connected('48892')).
query(connected('9552')).
query(connected('49932')).
query(connected('12512')).
query(connected('9554')).
query(connected('17017')).
query(connected('9514')).
