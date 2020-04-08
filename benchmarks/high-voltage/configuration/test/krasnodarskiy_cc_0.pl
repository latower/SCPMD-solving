23

line('857', '62666').
line('22227', '62666').
line('5864', '8060').
line('32423', '62655').
line('8060', '26384').
line('22227', '44599').
line('26384', '32423').
line('29214', '41172').
line('53608', '20382').
line('61312', '55890').
line('67380', '41172').
line('8060', '36454').
line('67379', '67380').
line('20382', '14564').
line('44588', '28742').
line('19874', '53871').
line('67380', '55890').
line('21165', '28742').
line('29214', '41172').
line('21165', '26384').
line('5864', '28546').
line('41172', '21994').
line('41172', '67379').
line('53608', '61312').
line('8060', '27417').
line('55890', '21994').
line('19820', '61312').
line('24106', '28546').
line('22227', '41154').
line('8060', '24106').
line('62666', '21165').
line('44589', '21165').
line('41123', '41154').
line('19874', '53871').
line('67379', '21994').
line('29214', '41172').
line('8060', '62655').
line('6313', '28546').
line('53871', '27417').
line('13673', '14564').
line('8060', '14564').
line('8060', '10577').
line('32423', '62655').
line('13673', '48596').
line('28742', '21165').
line('8060', '24106').

station('41123').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('8060')).
query(connected('41172')).
query(connected('14564')).
query(connected('13673')).
query(connected('53871')).
query(connected('41154')).
query(connected('5864')).
query(connected('53608')).
query(connected('44588')).
query(connected('44589')).
query(connected('6313')).
query(connected('19874')).
query(connected('36454')).
query(connected('48596')).
query(connected('857')).
query(connected('10577')).
query(connected('44599')).
query(connected('19820')).
