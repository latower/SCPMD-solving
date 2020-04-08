72

line('33810', '64061').
line('62647', '28732').
line('31335', '67299').
line('28278', '63035').
line('45893', '54968').
line('44760', '24028').
line('64597', '54968').
line('44760', '43835').
line('23525', '54280').
line('65046', '20659').
line('31390', '29168').
line('10827', '29168').
line('6867', '42922').
line('11897', '58691').
line('42977', '8927').
line('68195', '67299').
line('30596', '21124').
line('8739', '55719').
line('64597', '42922').
line('64224', '39283').
line('65046', '24947').
line('63355', '39742').
line('23519', '54859').
line('8914', '23503').
line('8894', '8990').
line('44760', '30493').
line('42506', '8441').
line('35370', '65198').
line('11824', '54968').
line('29165', '54790').
line('8925', '30168').
line('42973', '23526').
line('63354', '39742').
line('28732', '62648').
line('42972', '30175').
line('39742', '63354').
line('41055', '30175').
line('23519', '23918').
line('45421', '56209').
line('43835', '24028').
line('41055', '30493').
line('8922', '23526').
line('39282', '57378').
line('30618', '29106').
line('28278', '41055').
line('42506', '8441').
line('29106', '63355').
line('6867', '56209').
line('41055', '62647').
line('42784', '23919').
line('23503', '64229').
line('42784', '8894').
line('8876', '13928').
line('5807', '11895').
line('30955', '30970').
line('21124', '54405').
line('41055', '64597').
line('30168', '64903').
line('11824', '54968').
line('57403', '54280').
line('6867', '11895').
line('6867', '8739').
line('44510', '11897').
line('65046', '24947').
line('42922', '64229').
line('31390', '63035').
line('23525', '23526').
line('39282', '33810').
line('8739', '23519').
line('65150', '30596').
line('42972', '64224').
line('30618', '41055').
line('62649', '64487').
line('23504', '54859').
line('42784', '23918').
line('44730', '24028').
line('28718', '62634').
line('62648', '28732').
line('23504', '57403').
line('44510', '47142').
line('23502', '64229').
line('57378', '30262').
line('64487', '1355').
line('64224', '30262').
line('55719', '28718').
line('57378', '23504').
line('39282', '30262').
line('6867', '30970').
line('6867', '46587').
line('8923', '30168').
line('39282', '8876').
line('35453', '62634').
line('8926', '57404').
line('30970', '41069').
line('11824', '11897').
line('11824', '54968').
line('6229', '64061').
line('10828', '64586').
line('10828', '29168').
line('42974', '23525').
line('8875', '23502').
line('42784', '55719').
line('45883', '58691').
line('10226', '64486').
line('44760', '64586').
line('5439', '65959').
line('21124', '29165').
line('64486', '62649').
line('41055', '30596').
line('65150', '28718').
line('11824', '44510').
line('62647', '62634').
line('54790', '31335').
line('41055', '54968').
line('11897', '58691').
line('64903', '8925').
line('65198', '31390').
line('1354', '64487').
line('8739', '45421').
line('31335', '67299').
line('64586', '28278').
line('42977', '47120').
line('11807', '30955').
line('63354', '63355').
line('30175', '8925').
line('11824', '54968').
line('8875', '57403').
line('30493', '64486').
line('23918', '23919').
line('6867', '56209').
line('65959', '41069').
line('29106', '35370').
line('8875', '23503').
line('11918', '45893').
line('30618', '23527').
line('63355', '57404').
line('42977', '23527').
line('8876', '23502').
line('29165', '54790').
line('62648', '62649').
line('64903', '24947').
line('63035', '42978').
line('11918', '54968').
line('35453', '65150').
line('8441', '42922').

station('8922').
station('5807').
station('11895').
station('47142').
station('42974').
station('44730').
station('42973').
station('11918').
station('45893').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('41055')).
query(connected('6867')).
query(connected('44760')).
query(connected('8739')).
query(connected('42784')).
query(connected('39282')).
query(connected('42922')).
query(connected('8876')).
query(connected('11824')).
query(connected('8925')).
query(connected('44510')).
query(connected('11897')).
query(connected('8875')).
query(connected('42977')).
query(connected('10828')).
query(connected('35453')).
query(connected('45421')).
query(connected('8894')).
query(connected('42972')).
query(connected('39742')).
query(connected('43835')).
query(connected('35370')).
query(connected('41069')).
query(connected('8441')).
query(connected('8926')).
query(connected('8990')).
query(connected('42978')).
query(connected('6229')).
query(connected('11807')).
query(connected('47120')).
query(connected('42506')).
query(connected('8914')).
query(connected('8923')).
query(connected('10226')).
query(connected('13928')).
query(connected('1355')).
query(connected('10827')).
query(connected('39283')).
query(connected('46587')).
query(connected('45883')).
query(connected('1354')).
query(connected('5439')).
query(connected('8927')).
