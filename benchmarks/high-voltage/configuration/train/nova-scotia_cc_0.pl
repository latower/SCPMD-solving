32

line('13410', '13443').
line('6765', '19958').
line('13444', '17783').
line('13410', '21570').
line('6765', '15743').
line('15534', '26790').
line('2243', '17968').
line('2201', '20208').
line('13405', '19944').
line('17866', '13369').
line('30795', '2244').
line('21571', '25704').
line('20616', '19958').
line('15566', '15932').
line('19944', '28389').
line('13405', '4564').
line('15566', '20209').
line('13369', '12550').
line('17866', '17976').
line('17728', '17826').
line('19882', '19881').
line('21572', '4564').
line('26791', '15534').
line('13410', '13444').
line('17826', '28150').
line('2243', '2244').
line('3161', '20616').
line('2243', '20209').
line('12550', '21571').
line('12550', '13369').
line('13442', '13444').
line('17783', '19881').
line('23022', '28170').
line('23022', '17728').
line('1690', '13405').
line('15743', '28150').
line('13410', '13443').
line('21572', '25704').
line('1690', '13410').
line('15534', '26791').
line('26792', '26793').
line('20208', '20209').
line('17788', '17965').
line('17949', '26790').
line('26792', '26793').
line('15566', '30795').
line('13444', '13442').
line('17965', '23022').
line('1690', '28390').
line('13443', '13444').
line('15534', '26790').
line('19882', '26793').
line('1690', '19944').
line('15566', '19958').
line('26791', '26792').
line('21570', '21571').
line('13405', '21570').
line('19881', '19882').
line('4564', '17791').
line('2201', '28390').
line('20208', '30795').
line('4564', '12550').
line('13442', '13443').
line('13410', '25704').
line('20616', '17976').

station('15743').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('13410')).
query(connected('4564')).
query(connected('13405')).
query(connected('13444')).
query(connected('1690')).
query(connected('15566')).
query(connected('2243')).
query(connected('13443')).
query(connected('12550')).
query(connected('17826')).
query(connected('17783')).
query(connected('17976')).
query(connected('17965')).
query(connected('17866')).
query(connected('13442')).
query(connected('6765')).
query(connected('17728')).
query(connected('13369')).
query(connected('2201')).
query(connected('15534')).
query(connected('2244')).
query(connected('15932')).
query(connected('17788')).
query(connected('3161')).
query(connected('17949')).
query(connected('17968')).
query(connected('17791')).
