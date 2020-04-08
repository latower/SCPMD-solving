69

line('12344', '33182').
line('47019', '61100').
line('31080', '24963').
line('40893', '33147').
line('46304', '46305').
line('47019', '33129').
line('29806', '58839').
line('33147', '21597').
line('46332', '62694').
line('24973', '58854').
line('49827', '65055').
line('30201', '12198').
line('46305', '58839').
line('62147', '62311').
line('61232', '33392').
line('43133', '23605').
line('32244', '60137').
line('26202', '32245').
line('24963', '58843').
line('60137', '32258').
line('12365', '33128').
line('46332', '62694').
line('46304', '65053').
line('12330', '61232').
line('46320', '58843').
line('46844', '65056').
line('46844', '24972').
line('7425', '43060').
line('26201', '26242').
line('46304', '46306').
line('46305', '27409').
line('46305', '24959').
line('52941', '12344').
line('28302', '15035').
line('43133', '46307').
line('46307', '26202').
line('47019', '58853').
line('43133', '46307').
line('33467', '67512').
line('46844', '49827').
line('26256', '60137').
line('31080', '58841').
line('33392', '43133').
line('24963', '24964').
line('24972', '62314').
line('18884', '67163').
line('32258', '32244').
line('46328', '65057').
line('46844', '29940').
line('12344', '65056').
line('32244', '32245').
line('67512', '33472').
line('33182', '62147').
line('26202', '26242').
line('58853', '58854').
line('46307', '32233').
line('61100', '27416').
line('12345', '33155').
line('12345', '24973').
line('46844', '30201').
line('46305', '24958').
line('58843', '24964').
line('62314', '47019').
line('12345', '33155').
line('37062', '30321').
line('37062', '57472').
line('31080', '12337').
line('46305', '28302').
line('30321', '26201').
line('57472', '26256').
line('7030', '65055').
line('49827', '7286').
line('26202', '32233').
line('26207', '26256').
line('46316', '58842').
line('12345', '58839').
line('27416', '62147').
line('39419', '18883').
line('65053', '24958').
line('33467', '33472').
line('65057', '58855').
line('43060', '46333').
line('43133', '15035').
line('33129', '18975').
line('57472', '57474').
line('46307', '26201').
line('27409', '33467').
line('26207', '32244').
line('32244', '32245').
line('12337', '58842').
line('27155', '33128').
line('46317', '58842').
line('67163', '15547').
line('29806', '7425').
line('65055', '21597').
line('12330', '30201').
line('46331', '62694').
line('18883', '33155').
line('24973', '58855').
line('65056', '47019').
line('64297', '43253').
line('12329', '61232').
line('67512', '33472').
line('52751', '59252').
line('12339', '29940').
line('58853', '24972').
line('65053', '19989').
line('12344', '27416').
line('19141', '7286').
line('37062', '57474').
line('29940', '7286').
line('58841', '58843').
line('28302', '46304').
line('26207', '26242').
line('46327', '58855').
line('33129', '52753').
line('46305', '65057').
line('46844', '24964').
line('47019', '59252').
line('46305', '23605').
line('7425', '19989').
line('47019', '62311').
line('59252', '27155').
line('24958', '24959').
line('18963', '27155').
line('3001', '30321').
line('67163', '18883').
line('12330', '46844').
line('32233', '46307').
line('57474', '64297').
line('46326', '58854').
line('62311', '61100').
line('12198', '46305').
line('33182', '62314').
line('43133', '46307').
line('7425', '27409').
line('43133', '46307').
line('9015', '46331').
line('7425', '9015').

plant('15035').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('46305')).
query(connected('46844')).
query(connected('47019')).
query(connected('7425')).
query(connected('46307')).
query(connected('46304')).
query(connected('43133')).
query(connected('12344')).
query(connected('12330')).
query(connected('49827')).
query(connected('7286')).
query(connected('37062')).
query(connected('18883')).
query(connected('12345')).
query(connected('12337')).
query(connected('19989')).
query(connected('43060')).
query(connected('12198')).
query(connected('9015')).
query(connected('46331')).
query(connected('52751')).
query(connected('46317')).
query(connected('12329')).
query(connected('19141')).
query(connected('18884')).
query(connected('3001')).
query(connected('15547')).
query(connected('46316')).
query(connected('46320')).
query(connected('46326')).
query(connected('18975')).
query(connected('52941')).
query(connected('40893')).
query(connected('7030')).
query(connected('52753')).
query(connected('46332')).
query(connected('46306')).
query(connected('12365')).
query(connected('46327')).
query(connected('12339')).
query(connected('46333')).
query(connected('18963')).
query(connected('46328')).
query(connected('39419')).
query(connected('43253')).
