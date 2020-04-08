35

line('5701', '45948').
line('24206', '65092').
line('65307', '5701').
line('29383', '5694').
line('9159', '64515').
line('64710', '65092').
line('65307', '29001').
line('4707', '10250').
line('54695', '4707').
line('3135', '60454').
line('5697', '4707').
line('5701', '45948').
line('56212', '29383').
line('62190', '54254').
line('29383', '10250').
line('24207', '64710').
line('12669', '29001').
line('45720', '60454').
line('54695', '39806').
line('5697', '4707').
line('54695', '64681').
line('3135', '55960').
line('5702', '39806').
line('64681', '24206').
line('2491', '54254').
line('65924', '2491').
line('60454', '48749').
line('56215', '5701').
line('54695', '28251').
line('65924', '23401').
line('21186', '38875').
line('2491', '48749').
line('3135', '5697').
line('5697', '54254').
line('46388', '64681').
line('56215', '2491').
line('56212', '63349').
line('63349', '2784').
line('65924', '41593').
line('62190', '11261').
line('2491', '54254').
line('3135', '63352').
line('24207', '24208').
line('63352', '28251').
line('5702', '56215').
line('63349', '29382').
line('10830', '63078').
line('10830', '24208').
line('55960', '28251').
line('49944', '65092').
line('45948', '2491').
line('24208', '63078').
line('4707', '60453').
line('8660', '23401').
line('56212', '29382').
line('5697', '4707').
line('64021', '2784').
line('54695', '64710').
line('63352', '54695').
line('54695', '57052').
line('5702', '5701').
line('60453', '62190').
line('5701', '45948').
line('64021', '38875').
line('39806', '5701').
line('31106', '24206').
line('3135', '60453').
line('64515', '65307').
line('63078', '31106').
line('5701', '45948').

plant('45948').
plant('4707').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('3135')).
query(connected('2491')).
query(connected('5701')).
query(connected('39806')).
query(connected('5697')).
query(connected('5702')).
query(connected('10250')).
query(connected('2784')).
query(connected('48749')).
query(connected('10830')).
query(connected('38875')).
query(connected('8660')).
query(connected('45720')).
query(connected('49944')).
query(connected('5694')).
query(connected('41593')).
query(connected('46388')).
query(connected('12669')).
query(connected('11261')).
query(connected('9159')).
