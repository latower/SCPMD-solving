35

line('17879', '28416').
line('33395', '61355').
line('44455', '22002').
line('40713', '61355').
line('42329', '22226').
line('56217', '55804').
line('31172', '54875').
line('25655', '31701').
line('21822', '63548').
line('38622', '54308').
line('55543', '62361').
line('46127', '24880').
line('56217', '60941').
line('46805', '28416').
line('25655', '31701').
line('61267', '33294').
line('12937', '33779').
line('44349', '25126').
line('25277', '38622').
line('25655', '31701').
line('40713', '31444').
line('31204', '59025').
line('5828', '25126').
line('42329', '63548').
line('67358', '33294').
line('12938', '25137').
line('67358', '33294').
line('33395', '27383').
line('3055', '5871').
line('33395', '3055').
line('44455', '22002').
line('46805', '28644').
line('28416', '55543').
line('12937', '12938').
line('25126', '22002').
line('21822', '27383').
line('59025', '31205').
line('53864', '31172').
line('11120', '5828').
line('44349', '28498').
line('27383', '27382').
line('60941', '55805').
line('62361', '53864').
line('12937', '31202').
line('61267', '67358').
line('27382', '61355').
line('25277', '55805').
line('11120', '28644').
line('42329', '22226').
line('11551', '31202').
line('33779', '22226').
line('25277', '55804').
line('24880', '44455').
line('12944', '25138').
line('25655', '38622').
line('7137', '11551').
line('38622', '42329').
line('51643', '33779').
line('60941', '55804').
line('12944', '31205').
line('61267', '40713').
line('12937', '11638').
line('7137', '25138').
line('56217', '55805').
line('3055', '27382').
line('31444', '44349').
line('11551', '31202').
line('11551', '38622').
line('31172', '31444').
line('28498', '44455').

station('44455').
station('40713').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('38622')).
query(connected('12937')).
query(connected('11551')).
query(connected('42329')).
query(connected('44349')).
query(connected('3055')).
query(connected('5828')).
query(connected('53864')).
query(connected('12938')).
query(connected('7137')).
query(connected('11120')).
query(connected('12944')).
query(connected('46805')).
query(connected('5871')).
query(connected('17879')).
query(connected('51643')).
query(connected('11638')).
query(connected('46127')).
