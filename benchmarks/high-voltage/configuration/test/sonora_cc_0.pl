35

line('14836', '14855').
line('4405', '4407').
line('19751', '21496').
line('1217', '21497').
line('1316', '19752').
line('1244', '1247').
line('4406', '1316').
line('11707', '28498').
line('21493', '31230').
line('4402', '21492').
line('19751', '21497').
line('14869', '29319').
line('1217', '1252').
line('4403', '21493').
line('21493', '4403').
line('1247', '1250').
line('4405', '4407').
line('14836', '29319').
line('14931', '21494').
line('10811', '13776').
line('21494', '31230').
line('1244', '4409').
line('4402', '26801').
line('1249', '14026').
line('26641', '28498').
line('26641', '13776').
line('15546', '26802').
line('1244', '14836').
line('14836', '14869').
line('19752', '21496').
line('10811', '14887').
line('14930', '26523').
line('11707', '13776').
line('4409', '19721').
line('4410', '4409').
line('19723', '26524').
line('14026', '28498').
line('3214', '14024').
line('21495', '14931').
line('4403', '26802').
line('15546', '26523').
line('4402', '28139').
line('21492', '26802').
line('67', '1244').
line('15183', '26641').
line('19723', '21494').
line('19722', '67').
line('67', '19723').
line('4405', '4407').
line('15546', '26801').
line('1244', '19722').
line('1217', '11718').
line('14024', '28498').
line('1244', '19721').
line('4403', '21492').
line('1244', '19722').
line('19751', '19752').
line('4404', '14931').
line('13776', '4409').
line('11707', '21497').
line('26801', '4402').
line('67', '21495').
line('14870', '14836').
line('4404', '4407').
line('1252', '19721').
line('26524', '31230').
line('67', '14928').
line('26523', '26524').
line('14887', '13776').
line('1221', '1252').
line('21495', '21496').

station('4409').
station('3214').
station('1221').
station('14026').
station('4406').
station('14024').
station('1252').
station('1249').
station('4407').
station('4405').
station('11718').
station('1250').
plant('15183').
station('4402').
station('11707').
station('4404').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('1244')).
query(connected('14836')).
query(connected('13776')).
query(connected('67')).
query(connected('1217')).
query(connected('14931')).
query(connected('4403')).
query(connected('15546')).
query(connected('1316')).
query(connected('14869')).
query(connected('14887')).
query(connected('10811')).
query(connected('1247')).
query(connected('14870')).
query(connected('14930')).
query(connected('4410')).
query(connected('14855')).
query(connected('14928')).
