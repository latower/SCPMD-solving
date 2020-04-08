31

line('54540', '3086').
line('33099', '26692').
line('66208', '60078').
line('65883', '36546').
line('33122', '30339').
line('31538', '2733').
line('55127', '26692').
line('66208', '2633').
line('3086', '21479').
line('3086', '33197').
line('29424', '54540').
line('36918', '54540').
line('29424', '5830').
line('54540', '3086').
line('26196', '66208').
line('27768', '31538').
line('1889', '36349').
line('2513', '65883').
line('60077', '60078').
line('58718', '26692').
line('33122', '26683').
line('65871', '21479').
line('2759', '26536').
line('33099', '55127').
line('55581', '35554').
line('2971', '36546').
line('55581', '1889').
line('36918', '26683').
line('39439', '3086').
line('58718', '26817').
line('36546', '65859').
line('21479', '65859').
line('26817', '21479').
line('8484', '30339').
line('5168', '33759').
line('24836', '58718').
line('26196', '60078').
line('43351', '25521').
line('26947', '33759').
line('65858', '60077').
line('32565', '39439').
line('65858', '21479').
line('8484', '55581').
line('26683', '30339').
line('27768', '25521').
line('29424', '50729').
line('2513', '66168').
line('54540', '3086').
line('65871', '42266').
line('65883', '2513').
line('36918', '33099').
line('2971', '32895').
line('2971', '33122').
line('2513', '66168').
line('54540', '3086').
line('33073', '33197').
line('2733', '26536').
line('65859', '36546').
line('32895', '26947').
line('26817', '5168').
line('5168', '33759').
line('33073', '5830').
line('32565', '26536').

plant('43351').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('3086')).
query(connected('36918')).
query(connected('2971')).
query(connected('36546')).
query(connected('1889')).
query(connected('5168')).
query(connected('8484')).
query(connected('2513')).
query(connected('5830')).
query(connected('2733')).
query(connected('39439')).
query(connected('2633')).
query(connected('2759')).
query(connected('36349')).
query(connected('35554')).
query(connected('42266')).
query(connected('50729')).
