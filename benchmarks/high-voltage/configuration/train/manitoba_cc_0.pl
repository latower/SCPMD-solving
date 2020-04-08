65

line('3205', '3767').
line('4113', '30175').
line('2837', '20493').
line('4948', '22353').
line('29175', '2276').
line('2923', '16217').
line('6243', '22354').
line('4955', '31155').
line('4113', '29175').
line('16217', '20493').
line('265', '336').
line('21752', '30041').
line('20698', '4945').
line('21757', '21759').
line('2182', '4933').
line('4113', '4955').
line('4145', '21382').
line('1811', '17966').
line('21750', '28633').
line('2837', '2838').
line('9880', '3457').
line('21755', '21757').
line('10897', '10898').
line('1540', '20076').
line('9379', '17828').
line('17701', '2276').
line('1649', '9379').
line('1855', '20493').
line('1540', '1649').
line('4950', '29148').
line('11611', '24348').
line('4945', '4946').
line('3454', '31155').
line('4635', '21607').
line('2837', '13396').
line('337', '4944').
line('4959', '21759').
line('3205', '31155').
line('1540', '9379').
line('7112', '10898').
line('21311', '30175').
line('21311', '29811').
line('21760', '4949').
line('20076', '24369').
line('4950', '29148').
line('9354', '30041').
line('4950', '29148').
line('4113', '21311').
line('21751', '28633').
line('3205', '21382').
line('9354', '26266').
line('4933', '4934').
line('11610', '11611').
line('492', '29175').
line('4961', '21757').
line('5075', '17828').
line('265', '336').
line('24348', '24369').
line('336', '12650').
line('2837', '21607').
line('26266', '30041').
line('2276', '28401').
line('4959', '4962').
line('4961', '29148').
line('29811', '2276').
line('11611', '24348').
line('265', '336').
line('265', '336').
line('4950', '29148').
line('4952', '21755').
line('4212', '17701').
line('4950', '29148').
line('337', '4946').
line('20207', '22355').
line('4212', '30175').
line('265', '337').
line('4949', '6243').
line('337', '4934').
line('337', '4938').
line('21750', '21751').
line('4961', '21754').
line('337', '4933').
line('29148', '265').
line('26266', '30043').
line('21757', '21759').
line('3454', '29811').
line('21607', '3590').
line('4948', '21758').
line('4948', '20207').
line('28633', '4948').
line('337', '21750').
line('265', '29148').
line('4948', '2276').
line('6243', '22355').
line('4948', '28401').
line('9354', '20076').
line('336', '3205').
line('1811', '1855').
line('265', '30043').
line('20698', '3205').
line('7728', '28094').
line('265', '3205').
line('22354', '22355').
line('7112', '13396').
line('1540', '1772').
line('4950', '29148').
line('28633', '21758').
line('4931', '4938').
line('7728', '4948').
line('4959', '4961').
line('4113', '3454').
line('2182', '4933').
line('337', '4944').
line('9354', '24369').
line('3205', '20698').
line('21752', '30043').
line('22353', '22354').
line('336', '2837').
line('265', '21751').
line('6244', '20207').
line('4946', '9880').
line('265', '337').
line('21755', '21754').
line('6243', '22353').
line('1926', '2923').
line('12352', '21758').
line('265', '336').
line('4955', '20698').
line('21752', '337').
line('3454', '21382').

plant('4950').
plant('4962').
station('4944').
station('3205').
plant('4952').
station('336').
plant('11610').
station('265').
station('4945').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('337')).
query(connected('4948')).
query(connected('2837')).
query(connected('4113')).
query(connected('2276')).
query(connected('6243')).
query(connected('3454')).
query(connected('1540')).
query(connected('4961')).
query(connected('9354')).
query(connected('4946')).
query(connected('9379')).
query(connected('4959')).
query(connected('4955')).
query(connected('4933')).
query(connected('9880')).
query(connected('4938')).
query(connected('1649')).
query(connected('10898')).
query(connected('11611')).
query(connected('4949')).
query(connected('16217')).
query(connected('17701')).
query(connected('1811')).
query(connected('13396')).
query(connected('17828')).
query(connected('4934')).
query(connected('7728')).
query(connected('1855')).
query(connected('4212')).
query(connected('7112')).
query(connected('2923')).
query(connected('492')).
query(connected('2838')).
query(connected('10897')).
query(connected('3590')).
query(connected('3457')).
query(connected('2182')).
query(connected('6244')).
query(connected('4931')).
query(connected('3767')).
query(connected('4635')).
query(connected('12650')).
query(connected('12352')).
query(connected('17966')).
query(connected('1772')).
query(connected('5075')).
query(connected('1926')).
query(connected('4145')).
