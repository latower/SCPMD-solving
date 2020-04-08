71

line('12523', '13004').
line('7583', '8027').
line('7567', '7569').
line('8431', '8433').
line('13004', '13485').
line('7693', '8430').
line('8032', '8051').
line('7692', '7698').
line('6488', '22523').
line('8189', '28408').
line('12523', '18579').
line('8187', '7567').
line('11859', '18578').
line('11859', '11968').
line('20921', '28425').
line('8027', '22793').
line('8143', '28822').
line('7567', '22793').
line('3433', '7569').
line('7695', '8431').
line('64', '65').
line('28829', '23087').
line('13487', '25748').
line('7010', '7968').
line('8187', '8189').
line('3424', '3595').
line('7567', '7583').
line('28644', '7583').
line('7139', '8063').
line('8103', '28769').
line('8233', '7010').
line('15904', '15906').
line('8049', '8050').
line('8051', '8053').
line('7692', '7696').
line('7583', '23082').
line('8048', '28644').
line('8014', '12235').
line('8184', '28822').
line('23087', '28829').
line('4571', '8061').
line('8063', '8231').
line('8233', '23087').
line('7966', '30965').
line('7968', '28715').
line('8137', '8142').
line('27001', '8053').
line('3595', '7582').
line('4571', '6488').
line('28715', '30965').
line('6643', '6644').
line('7009', '8053').
line('8183', '8185').
line('25389', '28819').
line('8239', '8240').
line('13486', '18578').
line('62', '22811').
line('7693', '7695').
line('13486', '13487').
line('6644', '7221').
line('6898', '6503').
line('15905', '27001').
line('7582', '22811').
line('7009', '7010').
line('8053', '8240').
line('6488', '6898').
line('3594', '22523').
line('8013', '28769').
line('12235', '28769').
line('18578', '18579').
line('13499', '31279').
line('7010', '7982').
line('13502', '25757').
line('8434', '31282').
line('7569', '7965').
line('28819', '8127').
line('7692', '7693').
line('8239', '8231').
line('8424', '8431').
line('7965', '7966').
line('6643', '7693').
line('7569', '22793').
line('7569', '7967').
line('3432', '8183').
line('8188', '8189').
line('7221', '7694').
line('8179', '22810').
line('8117', '8137').
line('6488', '7221').
line('8013', '25757').
line('7582', '30956').
line('62', '65').
line('8053', '7010').
line('7982', '28715').
line('8063', '8244').
line('8012', '30956').
line('11968', '18579').
line('22810', '22811').
line('6503', '6644').
line('8429', '8431').
line('8103', '28819').
line('8013', '8061').
line('8048', '8049').
line('8142', '8143').
line('4571', '8062').
line('8183', '8184').
line('8050', '8063').
line('7583', '22810').
line('7567', '7575').
line('8184', '28408').
line('25757', '29657').
line('7569', '7968').
line('8231', '8243').
line('7583', '8013').
line('8426', '31282').
line('8051', '8239').
line('7968', '8032').
line('8430', '31282').
line('8014', '13499').
line('13492', '25748').
line('3424', '3594').
line('28425', '7575').
line('28715', '30965').
line('3729', '7692').
line('27001', '15906').
line('7694', '7697').
line('31279', '29657').
line('3596', '6488').
line('8179', '23082').
line('8050', '8051').
line('8127', '8178').
line('12523', '25389').
line('7695', '7697').
line('8027', '8106').
line('29657', '31279').
line('6503', '6525').
line('3594', '8117').
line('8117', '8136').
line('8012', '28769').
line('3424', '22523').
line('64', '30956').
line('13485', '25748').
line('3729', '7693').

station('3729').
station('3424').
station('11968').
station('8426').
station('8434').
station('3595').
station('4571').
station('8231').
station('8424').
station('6898').
station('8433').
station('8187').
station('8127').
station('8430').
station('8431').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('7583')).
query(connected('7569')).
query(connected('8053')).
query(connected('6488')).
query(connected('7693')).
query(connected('7567')).
query(connected('7010')).
query(connected('7968')).
query(connected('8063')).
query(connected('8051')).
query(connected('7692')).
query(connected('8013')).
query(connected('8184')).
query(connected('7695')).
query(connected('8189')).
query(connected('3594')).
query(connected('8027')).
query(connected('12523')).
query(connected('8050')).
query(connected('6644')).
query(connected('8183')).
query(connected('8239')).
query(connected('8117')).
query(connected('6503')).
query(connected('7221')).
query(connected('7582')).
query(connected('7009')).
query(connected('13487')).
query(connected('8103')).
query(connected('7965')).
query(connected('11859')).
query(connected('7966')).
query(connected('13485')).
query(connected('12235')).
query(connected('13486')).
query(connected('8014')).
query(connected('8049')).
query(connected('8012')).
query(connected('65')).
query(connected('6643')).
query(connected('8048')).
query(connected('7697')).
query(connected('64')).
query(connected('8179')).
query(connected('7694')).
query(connected('8240')).
query(connected('8233')).
query(connected('7982')).
query(connected('15906')).
query(connected('13004')).
query(connected('62')).
query(connected('7575')).
query(connected('8137')).
query(connected('13499')).
query(connected('8061')).
query(connected('8142')).
query(connected('8143')).
query(connected('8032')).
query(connected('3596')).
query(connected('7967')).
query(connected('8136')).
query(connected('8185')).
query(connected('8178')).
query(connected('7139')).
query(connected('15905')).
query(connected('13492')).
query(connected('8106')).
query(connected('8062')).
query(connected('8244')).
query(connected('15904')).
query(connected('6525')).
query(connected('8429')).
query(connected('7696')).
query(connected('8243')).
query(connected('3432')).
query(connected('7698')).
query(connected('3433')).
query(connected('8188')).
query(connected('13502')).
