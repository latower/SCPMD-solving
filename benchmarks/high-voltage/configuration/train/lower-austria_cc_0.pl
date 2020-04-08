25

line('36664', '20602').
line('2770', '48546').
line('2773', '66243').
line('2773', '7756').
line('2939', '20602').
line('41616', '63750').
line('7132', '2773').
line('34008', '40431').
line('2770', '48546').
line('2939', '2770').
line('55618', '55619').
line('55618', '56158').
line('34014', '20602').
line('28092', '39690').
line('2773', '32229').
line('66877', '2939').
line('36664', '3103').
line('28092', '61758').
line('34008', '2770').
line('37024', '39463').
line('4808', '2939').
line('20937', '36990').
line('36664', '20602').
line('7512', '42462').
line('34008', '37024').
line('36664', '31848').
line('42462', '2773').
line('66877', '2774').
line('36664', '2939').
line('2773', '61758').
line('55619', '56158').
line('66243', '31848').
line('2644', '66243').
line('28092', '62051').
line('36664', '55619').
line('65870', '36664').
line('37024', '2939').
line('65870', '20937').
line('2770', '48546').
line('7132', '32229').
line('48546', '67254').
line('34014', '20286').
line('4808', '68033').
line('39690', '62051').
line('68033', '4862').
line('7132', '36664').
line('34246', '56158').
line('7756', '61758').
line('34014', '63750').
line('7132', '32229').
line('63750', '20602').

plant('4808').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('36664')).
query(connected('2773')).
query(connected('2939')).
query(connected('2770')).
query(connected('7132')).
query(connected('37024')).
query(connected('48546')).
query(connected('39690')).
query(connected('42462')).
query(connected('7756')).
query(connected('40431')).
query(connected('39463')).
query(connected('3103')).
query(connected('7512')).
query(connected('36990')).
query(connected('34246')).
query(connected('4862')).
query(connected('2774')).
query(connected('2644')).
query(connected('41616')).
