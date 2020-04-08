43

line('5677', '39785').
line('37225', '27387').
line('30559', '23987').
line('28380', '62322').
line('54450', '5677').
line('37287', '10291').
line('44250', '30560').
line('10249', '29102').
line('27387', '62321').
line('5677', '2957').
line('30559', '57855').
line('62320', '27387').
line('23989', '57859').
line('5677', '56900').
line('62187', '5677').
line('23027', '56900').
line('5672', '39785').
line('10130', '46401').
line('39791', '39785').
line('48978', '57853').
line('14790', '39785').
line('61365', '33939').
line('39791', '10130').
line('28380', '61363').
line('44250', '56754').
line('56900', '55556').
line('5677', '41678').
line('43198', '41678').
line('43198', '55990').
line('5677', '55556').
line('10249', '29102').
line('44253', '833').
line('8624', '57874').
line('62320', '61365').
line('61363', '3148').
line('23987', '23988').
line('23981', '29102').
line('30561', '39791').
line('48978', '55992').
line('67447', '61365').
line('57855', '23989').
line('61363', '3148').
line('54282', '57860').
line('44250', '57857').
line('23981', '57874').
line('39791', '10130').
line('63333', '57853').
line('9144', '43166').
line('30559', '41678').
line('5677', '23027').
line('23981', '55990').
line('38779', '5672').
line('56754', '62187').
line('37287', '55990').
line('5677', '56754').
line('64558', '54282').
line('62321', '55992').
line('33939', '3148').
line('38779', '5672').
line('44250', '64558').
line('68045', '23027').
line('67447', '37228').
line('41678', '54013').
line('5677', '43166').
line('62320', '62321').
line('14790', '39785').
line('39791', '57859').
line('68045', '55556').
line('57858', '57860').
line('62322', '3144').
line('37287', '41678').
line('63333', '54282').
line('30561', '63333').
line('57858', '57859').
line('23988', '57855').
line('30561', '3144').
line('57857', '23990').
line('62187', '23027').
line('39791', '44253').
line('23987', '30560').
line('39791', '54282').
line('39791', '57860').
line('67447', '33939').
line('23990', '30560').
line('23989', '57858').
line('54450', '3148').

station('9144').
plant('38779').
plant('14790').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('5677')).
query(connected('39791')).
query(connected('41678')).
query(connected('39785')).
query(connected('44250')).
query(connected('37287')).
query(connected('3148')).
query(connected('5672')).
query(connected('3144')).
query(connected('10130')).
query(connected('48978')).
query(connected('43198')).
query(connected('44253')).
query(connected('43166')).
query(connected('37225')).
query(connected('2957')).
query(connected('833')).
query(connected('10249')).
query(connected('46401')).
query(connected('10291')).
query(connected('37228')).
query(connected('8624')).
