54

line('10143', '30867').
line('10183', '29857').
line('10173', '146').
line('18383', '18384').
line('10143', '22707').
line('18374', '29837').
line('18412', '29028').
line('10174', '10175').
line('18404', '30114').
line('10181', '10183').
line('10183', '10955').
line('146', '28754').
line('146', '5387').
line('10955', '10966').
line('18380', '18382').
line('18400', '29028').
line('18386', '18393').
line('18374', '18385').
line('10957', '10971').
line('146', '167').
line('18376', '18407').
line('18371', '18375').
line('18375', '18372').
line('10971', '10972').
line('18393', '31294').
line('7830', '28791').
line('18376', '31294').
line('24532', '29857').
line('18370', '18374').
line('28754', '30867').
line('18383', '18406').
line('10145', '10146').
line('7448', '10175').
line('18411', '18412').
line('23917', '30527').
line('22707', '5387').
line('10176', '28447').
line('10149', '10179').
line('11230', '24532').
line('10173', '10174').
line('7427', '23917').
line('5822', '11279').
line('18376', '31019').
line('18385', '29837').
line('7448', '10167').
line('18378', '28791').
line('10179', '30527').
line('10194', '10190').
line('10183', '10957').
line('10182', '10183').
line('10173', '10176').
line('10167', '30867').
line('7427', '10173').
line('10966', '10967').
line('18411', '18412').
line('18386', '18373').
line('18376', '18398').
line('18382', '31020').
line('18381', '18406').
line('18387', '10192').
line('18371', '18370').
line('18381', '18380').
line('7097', '18378').
line('3919', '31019').
line('28447', '31019').
line('10167', '28754').
line('18372', '18406').
line('10175', '14190').
line('18377', '18378').
line('10179', '11279').
line('10181', '10192').
line('10150', '10180').
line('18404', '18405').
line('11280', '24555').
line('10146', '28791').
line('18382', '11239').
line('7097', '18377').
line('11239', '18384').
line('18387', '10192').
line('18404', '18405').
line('18400', '18385').
line('18384', '29837').
line('31020', '10183').
line('10173', '23917').
line('18373', '18386').
line('18400', '18411').
line('18370', '29837').
line('146', '167').
line('18371', '18372').
line('18412', '29857').
line('11115', '30114').
line('10149', '10180').
line('18375', '18405').
line('31294', '18398').
line('10955', '10972').
line('10167', '18377').
line('10743', '18398').
line('5822', '11280').
line('3919', '10182').
line('11115', '30114').
line('7427', '24555').
line('18392', '18393').
line('18372', '18383').
line('18373', '18374').
line('24532', '11239').
line('24555', '30527').
line('10190', '31020').
line('10190', '10192').
line('18381', '18380').

station('10190').
station('10743').
station('10194').
station('10176').
station('10149').
station('10972').
station('10192').
station('10182').
station('10150').
station('3919').
station('5822').
station('10179').
station('10181').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('10183')).
query(connected('10173')).
query(connected('10167')).
query(connected('146')).
query(connected('7427')).
query(connected('10955')).
query(connected('10175')).
query(connected('11239')).
query(connected('10971')).
query(connected('10180')).
query(connected('10174')).
query(connected('7448')).
query(connected('10143')).
query(connected('10966')).
query(connected('5387')).
query(connected('11279')).
query(connected('7097')).
query(connected('11280')).
query(connected('10957')).
query(connected('10146')).
query(connected('14190')).
query(connected('11230')).
query(connected('7830')).
query(connected('10967')).
query(connected('11115')).
query(connected('167')).
query(connected('10145')).
