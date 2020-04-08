12

line('11337', '55334').
line('23915', '58133').
line('23942', '57810').
line('12943', '13051').
line('11337', '55334').
line('30011', '42447').
line('11337', '55334').
line('10675', '51863').
line('23941', '57810').
line('23915', '55334').
line('51872', '64529').
line('23915', '23942').
line('12808', '51863').
line('11337', '58133').
line('42447', '23941').
line('58133', '55334').
line('42447', '23942').
line('42447', '24070').
line('12808', '63957').
line('30011', '63957').
line('51872', '57810').
line('30011', '64529').
line('42447', '57801').
line('63957', '12943').

station('13051').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('42447')).
query(connected('12943')).
query(connected('51872')).
query(connected('51863')).
query(connected('12808')).
query(connected('11337')).
query(connected('10675')).
