16

line('3022', '7027').
line('22525', '28587').
line('22526', '29559').
line('22525', '57930').
line('50120', '4526').
line('56718', '63764').
line('51012', '63764').
line('56718', '55440').
line('56875', '55440').
line('67762', '62582').
line('22525', '22526').
line('3022', '28587').
line('4526', '5756').
line('3022', '28587').
line('21620', '7027').
line('2651', '29559').
line('21620', '7027').
line('41871', '22835').
line('50120', '62582').
line('22836', '56875').
line('50121', '62582').
line('50120', '7115').
line('3022', '7027').
line('67762', '3022').
line('7114', '22836').
line('7116', '56875').
line('50120', '56718').
line('4526', '57930').
line('4706', '7027').
line('4706', '7027').
line('41871', '22836').
line('22526', '57930').
line('63764', '56719').

plant('50121').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('50120')).
query(connected('7027')).
query(connected('3022')).
query(connected('4526')).
query(connected('41871')).
query(connected('5756')).
query(connected('4706')).
query(connected('7116')).
query(connected('7114')).
query(connected('7115')).
query(connected('2651')).
query(connected('51012')).
