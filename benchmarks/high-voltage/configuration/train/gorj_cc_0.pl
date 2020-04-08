18

line('49994', '16057').
line('65298', '29341').
line('12616', '22173').
line('49994', '22139').
line('46592', '59634').
line('66743', '34046').
line('65298', '66743').
line('16294', '65297').
line('29341', '65297').
line('12616', '65126').
line('16027', '32280').
line('32234', '22173').
line('46593', '24951').
line('31138', '65126').
line('46592', '21441').
line('49994', '27328').
line('16027', '29224').
line('32280', '29224').
line('12616', '65297').
line('12616', '16294').
line('46592', '24951').
line('24951', '21441').
line('49994', '32280').
line('31138', '46593').
line('49865', '32234').
line('12616', '16294').
line('12616', '59634').
line('12616', '66743').
line('59146', '21441').
line('29341', '65298').
line('49994', '27328').
line('49994', '65126').
line('49994', '22139').
line('59146', '21441').
line('16056', '22139').
line('46593', '21441').
line('27328', '29224').

station('46593').
station('46592').
station('12616').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('49994')).
query(connected('16027')).
query(connected('16294')).
query(connected('16057')).
query(connected('16056')).
query(connected('49865')).
