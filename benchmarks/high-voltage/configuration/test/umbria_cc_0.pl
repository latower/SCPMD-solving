27

line('12390', '65075').
line('43759', '9811').
line('43765', '11060').
line('44189', '54173').
line('11060', '11061').
line('63941', '30768').
line('10565', '65075').
line('54173', '9816').
line('43764', '54173').
line('44017', '44425').
line('44173', '54173').
line('54173', '23242').
line('43764', '43766').
line('46391', '43575').
line('44173', '44430').
line('10410', '10409').
line('7654', '12072').
line('43764', '54173').
line('7736', '43758').
line('47873', '13954').
line('40164', '59300').
line('9816', '43575').
line('7736', '43759').
line('44425', '44430').
line('67878', '54173').
line('7736', '43758').
line('44173', '44429').
line('13906', '43575').
line('54173', '44411').
line('44017', '57791').
line('11061', '30768').
line('41743', '7654').
line('10409', '57791').
line('54173', '9811').
line('31092', '46385').
line('12390', '31092').
line('31092', '7654').
line('43764', '43766').
line('46881', '31203').
line('7653', '23242').
line('9816', '31203').
line('7736', '43575').
line('7736', '43757').
line('44189', '10409').
line('40164', '25411').
line('44173', '40264').
line('44425', '57791').
line('59300', '47859').
line('47859', '47873').
line('13906', '25411').
line('7653', '63941').
line('11062', '30768').
line('7654', '43757').
line('47859', '13899').
line('25411', '46391').

station('44173').
station('44017').
station('44411').
station('7736').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('7654')).
query(connected('43575')).
query(connected('47859')).
query(connected('44425')).
query(connected('10409')).
query(connected('9816')).
query(connected('13906')).
query(connected('47873')).
query(connected('44189')).
query(connected('12390')).
query(connected('43757')).
query(connected('11060')).
query(connected('40164')).
query(connected('43764')).
query(connected('44430')).
query(connected('7653')).
query(connected('46391')).
query(connected('11061')).
query(connected('43759')).
query(connected('9811')).
query(connected('43758')).
query(connected('10410')).
query(connected('46385')).
query(connected('46881')).
query(connected('13954')).
query(connected('41743')).
query(connected('11062')).
query(connected('44429')).
query(connected('40264')).
query(connected('13899')).
query(connected('12072')).
query(connected('43765')).
query(connected('43766')).
query(connected('10565')).
