59

line('24615', '24616').
line('20227', '20238').
line('1808', '2345').
line('7836', '17801').
line('17792', '20426').
line('20233', '20239').
line('30604', '1808').
line('2710', '13424').
line('20288', '1808').
line('1617', '17867').
line('28394', '19977').
line('2349', '22369').
line('9417', '20290').
line('31241', '1730').
line('29185', '1808').
line('12232', '12233').
line('20228', '20236').
line('1799', '18819').
line('7781', '22916').
line('13424', '20425').
line('1879', '13424').
line('6254', '1808').
line('1808', '2344').
line('20230', '20236').
line('20242', '20243').
line('2371', '24314').
line('1799', '22918').
line('19977', '24616').
line('6254', '22370').
line('29185', '20243').
line('19977', '19978').
line('1879', '18115').
line('28394', '17920').
line('2368', '2371').
line('8246', '20288').
line('22918', '29863').
line('20235', '20238').
line('10761', '24314').
line('2343', '20290').
line('20231', '20233').
line('2710', '13424').
line('1799', '29863').
line('20230', '20232').
line('20232', '31187').
line('17969', '30604').
line('2368', '2369').
line('17801', '20229').
line('20230', '31187').
line('29185', '30604').
line('28821', '31167').
line('18116', '1879').
line('18819', '22918').
line('1879', '31148').
line('17920', '24616').
line('19978', '31241').
line('2349', '6254').
line('20228', '31187').
line('20231', '31192').
line('29185', '20242').
line('7781', '22916').
line('17326', '31148').
line('13424', '20426').
line('31231', '24617').
line('1808', '20290').
line('20287', '17702').
line('22370', '1808').
line('1799', '22919').
line('18819', '22369').
line('20242', '31311').
line('20238', '1617').
line('17326', '18115').
line('2719', '22919').
line('20230', '20231').
line('24314', '31167').
line('20227', '31192').
line('11771', '20239').
line('24314', '28821').
line('1617', '2343').
line('12233', '17326').
line('28394', '24617').
line('28394', '31311').
line('7836', '17801').
line('20229', '20234').
line('24616', '24617').
line('2709', '20426').
line('1617', '20235').
line('2710', '13424').
line('31231', '24615').
line('2349', '29863').
line('17801', '20229').
line('19979', '31241').
line('1799', '7781').
line('2349', '22370').
line('19978', '19979').
line('7781', '30293').
line('31167', '2719').
line('1617', '16005').
line('20243', '31311').
line('2710', '13424').
line('19978', '19977').
line('19979', '24615').
line('2343', '20288').
line('13424', '20427').
line('1799', '20427').
line('20234', '20237').
line('20288', '20290').
line('2343', '16005').
line('20287', '17970').
line('20227', '20228').
line('18115', '31148').
line('20234', '20235').
line('8246', '20287').
line('8141', '28821').
line('20232', '20239').
line('20233', '31192').
line('20236', '31187').
line('20228', '20237').
line('7836', '14442').
line('20235', '20237').

station('6254').
station('2345').
station('8141').
station('7836').
station('11771').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('1808')).
query(connected('1799')).
query(connected('13424')).
query(connected('1617')).
query(connected('1879')).
query(connected('2349')).
query(connected('2343')).
query(connected('17326')).
query(connected('7781')).
query(connected('12233')).
query(connected('2368')).
query(connected('17801')).
query(connected('17920')).
query(connected('16005')).
query(connected('2371')).
query(connected('2719')).
query(connected('8246')).
query(connected('17969')).
query(connected('17970')).
query(connected('2710')).
query(connected('17792')).
query(connected('17867')).
query(connected('17702')).
query(connected('14442')).
query(connected('2344')).
query(connected('10761')).
query(connected('2709')).
query(connected('12232')).
query(connected('9417')).
query(connected('2369')).
query(connected('1730')).
