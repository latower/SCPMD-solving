22

line('22947', '54442').
line('41331', '54057').
line('11803', '12627').
line('21237', '54057').
line('11805', '24764').
line('11804', '58661').
line('12577', '65122').
line('11804', '64941').
line('12627', '46602').
line('45794', '64941').
line('22946', '22947').
line('11803', '46578').
line('46594', '46595').
line('7256', '54443').
line('11805', '46579').
line('11804', '30953').
line('45794', '58661').
line('62703', '28194').
line('46579', '55950').
line('62703', '46579').
line('46579', '25050').
line('54443', '54057').
line('12632', '12633').
line('54057', '62142').
line('41321', '54442').
line('45794', '12633').
line('46579', '62703').
line('46595', '21237').
line('11805', '25050').
line('22947', '58661').
line('54443', '28194').
line('11805', '45794').
line('65122', '41321').
line('12032', '41413').
line('54055', '41321').
line('45794', '24764').
line('11803', '24764').
line('46595', '54442').
line('46602', '12632').
line('41413', '55950').
line('41321', '22946').
line('25050', '55950').
line('30953', '45794').
line('41331', '23859').
line('7344', '30953').

station('45794').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('11805')).
query(connected('46579')).
query(connected('41321')).
query(connected('11803')).
query(connected('46595')).
query(connected('11804')).
query(connected('41331')).
query(connected('46602')).
query(connected('12633')).
query(connected('41413')).
query(connected('12627')).
query(connected('12632')).
query(connected('7344')).
query(connected('46578')).
query(connected('46594')).
query(connected('7256')).
query(connected('12577')).
query(connected('12032')).
