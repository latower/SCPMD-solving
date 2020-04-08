38

line('42866', '64207').
line('7058', '7705').
line('9151', '23326').
line('63735', '7058').
line('54058', '2752').
line('63735', '29783').
line('7279', '30316').
line('7279', '44491').
line('41375', '7329').
line('29867', '56785').
line('54058', '41375').
line('7058', '54904').
line('56785', '55628').
line('29867', '13951').
line('29782', '7058').
line('13622', '7281').
line('11977', '58713').
line('8449', '63821').
line('7058', '7705').
line('58713', '42866').
line('2752', '23344').
line('7058', '7330').
line('8809', '58713').
line('63736', '56767').
line('63736', '54904').
line('29783', '55049').
line('46107', '30167').
line('7058', '54058').
line('7281', '13622').
line('54058', '54904').
line('28482', '7281').
line('2752', '46107').
line('8809', '63736').
line('41375', '41384').
line('63823', '41383').
line('7058', '56785').
line('8449', '46107').
line('29782', '55049').
line('7279', '9194').
line('7058', '62689').
line('29781', '55628').
line('41375', '41383').
line('42444', '7853').
line('63818', '57657').
line('7058', '29781').
line('7058', '55628').
line('7279', '63818').
line('64207', '42867').
line('29867', '9151').
line('9544', '57657').
line('8647', '23344').
line('57173', '23344').
line('62689', '45885').
line('16761', '63821').
line('7281', '8809').
line('56767', '56722').
line('7058', '7705').
line('2752', '30167').
line('7058', '63735').
line('8647', '57173').
line('7853', '8016').
line('54058', '63821').
line('29783', '54904').
line('41375', '57657').
line('7058', '7705').
line('54058', '41375').
line('9075', '30316').
line('7279', '44491').
line('2752', '13622').
line('42867', '64207').
line('7279', '63818').
line('41375', '7329').
line('55049', '54904').
line('57173', '23326').
line('28482', '29781').
line('56722', '7853').
line('7058', '56785').

station('16761').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('7058')).
query(connected('2752')).
query(connected('41375')).
query(connected('7279')).
query(connected('46107')).
query(connected('7853')).
query(connected('8809')).
query(connected('7281')).
query(connected('8449')).
query(connected('41383')).
query(connected('8647')).
query(connected('42866')).
query(connected('13622')).
query(connected('9151')).
query(connected('42444')).
query(connected('7330')).
query(connected('42867')).
query(connected('9075')).
query(connected('44491')).
query(connected('8016')).
query(connected('7705')).
query(connected('45885')).
query(connected('11977')).
query(connected('13951')).
query(connected('9544')).
query(connected('41384')).
query(connected('9194')).
query(connected('7329')).
