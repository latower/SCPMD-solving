27

line('4256', '21401').
line('21159', '21160').
line('3929', '30117').
line('3936', '21167').
line('4035', '30880').
line('3929', '14390').
line('4431', '28486').
line('3926', '21159').
line('4411', '5293').
line('21160', '21161').
line('3927', '30880').
line('21513', '28486').
line('21515', '4418').
line('4417', '4415').
line('4035', '4413').
line('3907', '3928').
line('21498', '21499').
line('4035', '4411').
line('4411', '4413').
line('3929', '21160').
line('4414', '14390').
line('4418', '21515').
line('4116', '21401').
line('4431', '21515').
line('4415', '4416').
line('3921', '21167').
line('4418', '21499').
line('4411', '4414').
line('3926', '30117').
line('4420', '30887').
line('3907', '21168').
line('4411', '4418').
line('21168', '30117').
line('3926', '21167').
line('21514', '28486').
line('21159', '21161').
line('28486', '4414').
line('21498', '4420').
line('30887', '4418').
line('3928', '3929').
line('3927', '21161').
line('4414', '4416').
line('4414', '30887').
line('4035', '4426').
line('4421', '21498').
line('4035', '30880').
line('4416', '4421').
line('4035', '4412').
line('4411', '4419').
line('21514', '21515').
line('4411', '4418').
line('4426', '21401').
line('5293', '21499').
line('3936', '21168').

station('3926').
station('4116').
station('4413').
station('4416').
station('4420').
station('4421').
station('3928').
station('3936').
station('4411').
station('4035').
station('5293').
station('3921').
station('4418').
station('4417').
station('4415').
station('3907').
station('4419').
station('3929').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('4414')).
query(connected('3927')).
query(connected('4431')).
query(connected('4426')).
query(connected('14390')).
query(connected('4256')).
query(connected('4412')).
