26

line('7864', '63104').
line('63103', '29142').
line('8469', '20787').
line('39488', '20327').
line('28006', '20327').
line('28006', '28007').
line('5428', '63103').
line('42531', '22921').
line('42608', '20327').
line('67927', '33901').
line('27836', '28985').
line('5370', '39488').
line('5370', '39488').
line('42538', '28007').
line('20239', '21057').
line('22921', '21547').
line('12374', '63104').
line('42563', '29142').
line('8469', '20787').
line('42245', '7864').
line('42539', '28006').
line('39488', '7561').
line('67926', '5357').
line('62954', '28985').
line('33931', '7561').
line('67927', '33901').
line('61962', '28985').
line('20787', '21547').
line('28007', '20327').
line('29142', '63103').
line('12374', '20239').
line('20787', '7864').
line('61962', '27836').
line('42245', '21057').
line('62955', '67926').
line('61962', '62955').
line('28039', '20327').
line('5357', '28039').
line('20787', '5428').
line('8585', '20327').
line('20239', '21057').
line('8469', '20787').
line('5428', '33931').
line('33901', '62954').
line('8469', '20787').
line('20787', '63104').
line('5438', '28039').
line('42563', '42608').
line('67927', '62954').
line('27836', '62955').
line('16944', '20239').
line('5357', '67926').

plant('8469').
plant('42531').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('7864')).
query(connected('5428')).
query(connected('39488')).
query(connected('12374')).
query(connected('42608')).
query(connected('42245')).
query(connected('5357')).
query(connected('7561')).
query(connected('42563')).
query(connected('42538')).
query(connected('42539')).
query(connected('5438')).
query(connected('16944')).
query(connected('5370')).
query(connected('8585')).
