25

line('10768', '63340').
line('43489', '21898').
line('7612', '66509').
line('7612', '64319').
line('8082', '41420').
line('64945', '21526').
line('8082', '60835').
line('43489', '21948').
line('66906', '51115').
line('41420', '20421').
line('17203', '22168').
line('32588', '21526').
line('66509', '44513').
line('66616', '21526').
line('41726', '44513').
line('8082', '11105').
line('352', '32612').
line('42300', '8082').
line('18307', '21526').
line('43489', '12418').
line('41420', '7612').
line('17203', '22169').
line('8082', '66906').
line('11105', '48550').
line('43489', '64319').
line('43489', '66509').
line('17203', '22168').
line('41358', '26598').
line('41420', '14365').
line('8082', '11105').
line('43489', '34108').
line('32612', '63340').
line('41358', '46414').
line('18307', '64860').
line('7612', '48550').
line('63340', '28861').
line('41420', '18307').
line('7612', '64319').
line('17204', '66906').
line('43489', '41714').
line('41358', '46414').
line('32588', '66616').
line('18307', '64860').
line('44513', '7612').
line('42300', '7612').
line('41358', '26598').
line('64319', '21898').
line('32612', '21898').
line('11105', '22169').
line('18307', '64860').
line('26598', '21526').

station('14365').
station('43489').
station('12418').
station('41714').
station('46414').
station('41726').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('7612')).
query(connected('41420')).
query(connected('8082')).
query(connected('18307')).
query(connected('44513')).
query(connected('11105')).
query(connected('48550')).
query(connected('42300')).
query(connected('17203')).
query(connected('41358')).
query(connected('352')).
query(connected('17204')).
query(connected('51115')).
query(connected('10768')).
