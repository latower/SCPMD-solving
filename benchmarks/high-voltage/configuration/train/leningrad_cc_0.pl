20

line('29317', '9607').
line('57667', '58427').
line('63576', '29625').
line('29317', '9607').
line('46419', '64618').
line('9607', '44505').
line('2666', '57667').
line('44505', '32873').
line('46419', '12419').
line('46419', '55732').
line('2666', '22582').
line('30450', '2666').
line('24074', '32873').
line('29625', '2666').
line('8605', '13153').
line('44505', '24074').
line('44505', '32872').
line('56701', '57914').
line('30450', '57667').
line('64582', '64618').
line('30456', '64582').
line('30456', '55732').
line('28250', '2666').
line('64618', '55732').
line('64582', '57914').
line('56701', '57914').
line('30450', '56701').
line('2666', '8605').
line('24074', '32872').
line('29625', '29626').
line('46419', '12419').
line('29626', '22582').
line('9607', '44505').
line('28250', '57667').
line('28250', '58427').
line('46419', '44505').
line('63576', '54461').
line('44505', '24074').
line('63576', '22582').
line('32872', '32873').

station('8605').
station('12419').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('2666')).
query(connected('44505')).
query(connected('46419')).
query(connected('9607')).
query(connected('13153')).
