54

line('56778', '63920').
line('41369', '5532').
line('4934', '63517').
line('23050', '21535').
line('29851', '29535').
line('7373', '7591').
line('63603', '29998').
line('19846', '28465').
line('7259', '7660').
line('7242', '7259').
line('5532', '41423').
line('4934', '41373').
line('41560', '63759').
line('22899', '56905').
line('2412', '41342').
line('7063', '7373').
line('56770', '56778').
line('56813', '22917').
line('29874', '20288').
line('2412', '19846').
line('29886', '56813').
line('6470', '63603').
line('63759', '22028').
line('63759', '41369').
line('43163', '5532').
line('7549', '7659').
line('41342', '29870').
line('12683', '13269').
line('56820', '22028').
line('56820', '21529').
line('41507', '29870').
line('22900', '56813').
line('41342', '22891').
line('7259', '7660').
line('4934', '29535').
line('54061', '5532').
line('29851', '7259').
line('4934', '41373').
line('43163', '20288').
line('56905', '7549').
line('5905', '22366').
line('21529', '54891').
line('63920', '7549').
line('21529', '22092').
line('20288', '15523').
line('56778', '41342').
line('5493', '43163').
line('13269', '24893').
line('7242', '2412').
line('5493', '43163').
line('20288', '20035').
line('29874', '20288').
line('13269', '11790').
line('7373', '7591').
line('7063', '54738').
line('7373', '29535').
line('13269', '29998').
line('7549', '20785').
line('46728', '22917').
line('35159', '20646').
line('7063', '54738').
line('43163', '21529').
line('29875', '20288').
line('7340', '20288').
line('21125', '22092').
line('4934', '7271').
line('7373', '7591').
line('7242', '63517').
line('24893', '20646').
line('29886', '22917').
line('20288', '20035').
line('5493', '43163').
line('7591', '43163').
line('41650', '56905').
line('7242', '63517').
line('56786', '22899').
line('5532', '54061').
line('20035', '29874').
line('20288', '63029').
line('7549', '7659').
line('41342', '56787').
line('24893', '54115').
line('7373', '7591').
line('41373', '41507').
line('22891', '56786').
line('7242', '62959').
line('56770', '22366').
line('20174', '54115').
line('7337', '20288').
line('5532', '22366').
line('56770', '62959').
line('7242', '28465').
line('20288', '22092').
line('7741', '35159').
line('20288', '22028').
line('29870', '22900').
line('22891', '56787').
line('4934', '7063').
line('20035', '56820').
line('41333', '62959').
line('29851', '41426').
line('41342', '56786').
line('29874', '20288').
line('6470', '7660').
line('63920', '23050').
line('29998', '7660').
line('22899', '22900').
line('7242', '41423').

station('5493').
plant('13269').
plant('7741').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('41342')).
query(connected('7242')).
query(connected('4934')).
query(connected('5532')).
query(connected('43163')).
query(connected('7549')).
query(connected('7373')).
query(connected('20035')).
query(connected('7063')).
query(connected('7259')).
query(connected('2412')).
query(connected('7660')).
query(connected('41423')).
query(connected('41507')).
query(connected('7591')).
query(connected('35159')).
query(connected('41373')).
query(connected('6470')).
query(connected('41369')).
query(connected('5905')).
query(connected('12683')).
query(connected('7340')).
query(connected('7659')).
query(connected('41333')).
query(connected('7337')).
query(connected('15523')).
query(connected('41560')).
query(connected('46728')).
query(connected('41650')).
query(connected('11790')).
query(connected('41426')).
query(connected('7271')).
