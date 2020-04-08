61

line('14039', '15888').
line('3709', '3740').
line('1864', '1866').
line('3974', '1865').
line('27865', '9253').
line('3740', '28428').
line('30419', '22996').
line('7983', '23006').
line('9250', '27865').
line('814', '4895').
line('19541', '19542').
line('7471', '190').
line('13767', '29245').
line('28136', '19115').
line('12758', '28823').
line('3740', '22625').
line('6627', '7957').
line('22997', '22998').
line('814', '3737').
line('3974', '19112').
line('814', '4895').
line('7363', '22997').
line('19113', '19114').
line('19114', '29208').
line('23001', '23003').
line('22998', '7956').
line('3410', '20838').
line('8089', '23046').
line('3709', '3710').
line('3710', '3716').
line('7961', '7964').
line('27832', '27831').
line('28813', '3723').
line('8248', '22625').
line('1866', '23002').
line('7983', '23006').
line('8122', '29105').
line('31329', '4895').
line('8150', '30971').
line('5821', '19542').
line('12757', '8122').
line('25979', '10114').
line('9167', '30730').
line('9250', '25979').
line('17219', '27864').
line('545', '7956').
line('3710', '14039').
line('17851', '27832').
line('13919', '3710').
line('13885', '29245').
line('12758', '12759').
line('19113', '190').
line('3723', '28812').
line('23046', '28812').
line('1856', '1857').
line('29105', '11723').
line('23002', '23003').
line('1821', '22996').
line('11723', '8565').
line('12757', '28823').
line('13711', '27832').
line('9888', '27831').
line('7363', '22998').
line('23006', '28136').
line('12758', '12759').
line('862', '860').
line('28136', '7956').
line('3716', '10297').
line('9673', '22607').
line('3738', '8565').
line('13767', '13899').
line('1858', '19112').
line('1864', '7961').
line('31329', '545').
line('3411', '20838').
line('3710', '8150').
line('30419', '7957').
line('7240', '9888').
line('13885', '25979').
line('862', '19542').
line('8638', '19114').
line('3710', '17227').
line('19115', '190').
line('1857', '1858').
line('12758', '30971').
line('5820', '1821').
line('20838', '7056').
line('9250', '10114').
line('5821', '19541').
line('3710', '8125').
line('28428', '15911').
line('3411', '22607').
line('3716', '8150').
line('7957', '22996').
line('28823', '30971').
line('8084', '28813').
line('3710', '3737').
line('3737', '3738').
line('3723', '3724').
line('5821', '5820').
line('3716', '13904').
line('9250', '17218').
line('190', '19113').
line('8664', '29208').
line('8565', '13071').
line('6585', '15888').
line('22997', '7964').
line('12814', '17218').
line('860', '814').
line('7240', '22625').
line('10114', '17227').
line('17218', '30730').
line('3738', '8565').
line('22607', '27831').
line('3716', '3724').
line('8125', '28823').
line('7363', '30419').
line('27865', '30730').
line('13899', '13904').
line('19541', '7955').
line('9253', '27864').
line('19112', '29208').
line('27864', '9250').

station('3716').
station('545').
station('9250').
station('9888').
station('8664').
station('7240').
station('10114').
station('3410').
station('814').
station('3709').
station('3737').
station('3723').
station('3738').
station('10297').
station('3974').
station('190').
station('9253').
station('3724').
station('3710').
station('8248').
station('9673').
station('7056').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('5821')).
query(connected('12758')).
query(connected('7956')).
query(connected('7957')).
query(connected('3740')).
query(connected('8150')).
query(connected('8565')).
query(connected('17218')).
query(connected('7363')).
query(connected('13885')).
query(connected('7961')).
query(connected('5820')).
query(connected('862')).
query(connected('860')).
query(connected('12757')).
query(connected('8122')).
query(connected('13899')).
query(connected('15888')).
query(connected('11723')).
query(connected('4895')).
query(connected('13904')).
query(connected('8125')).
query(connected('7964')).
query(connected('17227')).
query(connected('3411')).
query(connected('1864')).
query(connected('13767')).
query(connected('1858')).
query(connected('14039')).
query(connected('1866')).
query(connected('1857')).
query(connected('1821')).
query(connected('15911')).
query(connected('7471')).
query(connected('9167')).
query(connected('13919')).
query(connected('6585')).
query(connected('8089')).
query(connected('1865')).
query(connected('13071')).
query(connected('13711')).
query(connected('8638')).
query(connected('17851')).
query(connected('7983')).
query(connected('12814')).
query(connected('1856')).
query(connected('8084')).
query(connected('7955')).
query(connected('6627')).
query(connected('12759')).
query(connected('17219')).
