19

line('36634', '25811').
line('36634', '32195').
line('26620', '28759').
line('2801', '26619').
line('36696', '21913').
line('26620', '66636').
line('26573', '21913').
line('2809', '66123').
line('60474', '60475').
line('36888', '25811').
line('60476', '66635').
line('36888', '26868').
line('36696', '2808').
line('2806', '26619').
line('2969', '48317').
line('2969', '32892').
line('36634', '26573').
line('36889', '66123').
line('36634', '60068').
line('66123', '21913').
line('60475', '60476').
line('2969', '60851').
line('36634', '26619').
line('36888', '66635').
line('2969', '40870').
line('60474', '25326').
line('36888', '60851').
line('60474', '26620').
line('60068', '26187').
line('36634', '25811').
line('66636', '28759').
line('25325', '25326').
line('26187', '26573').
line('36696', '2808').
line('60475', '25325').
line('2969', '32892').
line('60476', '25326').
line('2802', '28759').

station('2969').
station('36634').
station('36696').
station('40870').
station('36888').
station('48317').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('2806')).
query(connected('2809')).
query(connected('36889')).
query(connected('2808')).
query(connected('2802')).
query(connected('2801')).
