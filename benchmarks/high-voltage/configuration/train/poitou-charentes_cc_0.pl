18

line('19664', '54064').
line('7261', '41127').
line('63880', '56947').
line('54064', '41131').
line('38640', '22906').
line('56784', '22906').
line('38640', '43095').
line('43558', '43475').
line('56776', '22887').
line('43095', '41127').
line('43475', '64381').
line('38772', '41131').
line('41127', '5213').
line('39766', '63880').
line('5213', '39766').
line('10041', '22887').
line('56776', '24998').
line('38772', '41131').
line('19664', '10041').
line('38772', '41131').
line('38640', '41129').
line('41127', '41131').
line('23468', '41129').
line('24998', '7263').
line('43475', '64381').
line('39766', '41129').
line('43475', '64381').
line('24998', '7261').
line('23468', '8807').
line('38640', '56784').
line('22906', '56947').
line('39766', '9549').
line('54064', '43475').
line('38772', '41131').
line('7038', '41127').
line('63880', '41127').

plant('38772').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('41127')).
query(connected('39766')).
query(connected('38640')).
query(connected('43475')).
query(connected('41131')).
query(connected('41129')).
query(connected('10041')).
query(connected('43095')).
query(connected('7261')).
query(connected('5213')).
query(connected('19664')).
query(connected('43558')).
query(connected('7263')).
query(connected('7038')).
query(connected('9549')).
query(connected('8807')).
