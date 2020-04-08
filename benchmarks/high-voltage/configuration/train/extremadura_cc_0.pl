28

line('30311', '29109').
line('32942', '29170').
line('63967', '20958').
line('41238', '29170').
line('44550', '6074').
line('32942', '41238').
line('10392', '10394').
line('57432', '16440').
line('32942', '17281').
line('57432', '8978').
line('63487', '20958').
line('43075', '30308').
line('23580', '23581').
line('8977', '47932').
line('29170', '17281').
line('20958', '6074').
line('43026', '32943').
line('10394', '23581').
line('41238', '23582').
line('64259', '63967').
line('39085', '56977').
line('29109', '24084').
line('57432', '8979').
line('63487', '30032').
line('8975', '43024').
line('20958', '64629').
line('30311', '16440').
line('8977', '16440').
line('43026', '64259').
line('47932', '24084').
line('63967', '64629').
line('9420', '63484').
line('23580', '30032').
line('43024', '43025').
line('32943', '13993').
line('30311', '24084').
line('39085', '39737').
line('63487', '20958').
line('30309', '23582').
line('8975', '8977').
line('9032', '30308').
line('29109', '43026').
line('64285', '39085').
line('30309', '64285').
line('6074', '30308').
line('20958', '43025').
line('8975', '43024').
line('6074', '63484').
line('43002', '8977').
line('6074', '63484').
line('43026', '32943').
line('64285', '9420').
line('56977', '30032').
line('56977', '23581').
line('30309', '23582').
line('44550', '47931').
line('64629', '6074').

station('43075').
station('9032').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('6074')).
query(connected('8977')).
query(connected('43026')).
query(connected('16440')).
query(connected('39085')).
query(connected('41238')).
query(connected('17281')).
query(connected('43024')).
query(connected('8975')).
query(connected('47932')).
query(connected('43025')).
query(connected('9420')).
query(connected('44550')).
query(connected('10394')).
query(connected('43002')).
query(connected('13993')).
query(connected('39737')).
query(connected('47931')).
query(connected('8978')).
query(connected('8979')).
query(connected('10392')).
