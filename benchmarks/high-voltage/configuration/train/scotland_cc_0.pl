58

line('9246', '28054').
line('44282', '20427').
line('7584', '17116').
line('2737', '20483').
line('5999', '51001').
line('41689', '27981').
line('55421', '51032').
line('40565', '15536').
line('41689', '49454').
line('41063', '20682').
line('7584', '21320').
line('61941', '55533').
line('41381', '67923').
line('20792', '15470').
line('51002', '20853').
line('6050', '20853').
line('8330', '27978').
line('47914', '55029').
line('16078', '55178').
line('8867', '50150').
line('16949', '51021').
line('20853', '44283').
line('4589', '49476').
line('55178', '16949').
line('2737', '40525').
line('14864', '67923').
line('33884', '21247').
line('33884', '41063').
line('39436', '27973').
line('10292', '22225').
line('51021', '27982').
line('49512', '40525').
line('20483', '61941').
line('16949', '40116').
line('2737', '17117').
line('40117', '33883').
line('40739', '8857').
line('7564', '63317').
line('6310', '51001').
line('41688', '27981').
line('5999', '61941').
line('41688', '41689').
line('49512', '15536').
line('21320', '47914').
line('6527', '55421').
line('20853', '10164').
line('7562', '27978').
line('51020', '17125').
line('7409', '61938').
line('10293', '17001').
line('10292', '51025').
line('14454', '49476').
line('7409', '10293').
line('40058', '33884').
line('9246', '15470').
line('41972', '27973').
line('17063', '17067').
line('15494', '49454').
line('20792', '63317').
line('63317', '20792').
line('6051', '40117').
line('61960', '41381').
line('47914', '17115').
line('39436', '14454').
line('20427', '67911').
line('49454', '54938').
line('5031', '27978').
line('16949', '51021').
line('14864', '7562').
line('7585', '7584').
line('44283', '15494').
line('37103', '20483').
line('7562', '56133').
line('40116', '33883').
line('44016', '51002').
line('2737', '40525').
line('5166', '61960').
line('27980', '33883').
line('55029', '2737').
line('54079', '22225').
line('6050', '27980').
line('51020', '54079').
line('54079', '8867').
line('10164', '17067').
line('7562', '10293').
line('61942', '27982').
line('67911', '27982').
line('51002', '20853').
line('40739', '61942').
line('17114', '21320').
line('51025', '17116').
line('8857', '20792').
line('41307', '44283').
line('67923', '41688').
line('61940', '67911').
line('17001', '27973').
line('8330', '61938').
line('7888', '8857').
line('54079', '56134').
line('61942', '55178').
line('54079', '55029').
line('61960', '21247').
line('27980', '61940').
line('54079', '17116').
line('61942', '20427').
line('40739', '56134').
line('41381', '56133').
line('7562', '61938').
line('6059', '6527').
line('51021', '61940').
line('5999', '27981').
line('37121', '40525').
line('42905', '50150').
line('6059', '40565').
line('56134', '22225').
line('44282', '51020').

plant('6059').
plant('4589').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('7562')).
query(connected('2737')).
query(connected('41688')).
query(connected('40525')).
query(connected('41381')).
query(connected('49454')).
query(connected('16949')).
query(connected('51020')).
query(connected('5999')).
query(connected('17116')).
query(connected('44283')).
query(connected('47914')).
query(connected('7584')).
query(connected('51021')).
query(connected('40739')).
query(connected('10293')).
query(connected('41689')).
query(connected('8857')).
query(connected('8867')).
query(connected('40117')).
query(connected('17001')).
query(connected('40116')).
query(connected('49476')).
query(connected('15494')).
query(connected('6527')).
query(connected('41063')).
query(connected('49512')).
query(connected('51025')).
query(connected('10164')).
query(connected('14454')).
query(connected('39436')).
query(connected('10292')).
query(connected('50150')).
query(connected('51002')).
query(connected('15536')).
query(connected('8330')).
query(connected('44282')).
query(connected('7409')).
query(connected('40565')).
query(connected('9246')).
query(connected('51001')).
query(connected('6050')).
query(connected('15470')).
query(connected('14864')).
query(connected('17067')).
query(connected('41307')).
query(connected('17115')).
query(connected('44016')).
query(connected('17063')).
query(connected('5166')).
query(connected('40058')).
query(connected('17125')).
query(connected('17114')).
query(connected('6310')).
query(connected('51032')).
query(connected('41972')).
query(connected('7888')).
query(connected('7585')).
query(connected('6051')).
query(connected('37103')).
query(connected('17117')).
query(connected('42905')).
query(connected('5031')).
query(connected('37121')).
query(connected('7564')).
query(connected('16078')).
