15

line('58869', '57085').
line('42285', '58744').
line('21551', '5482').
line('5482', '57004').
line('13111', '24600').
line('42285', '8236').
line('13111', '58496').
line('42280', '42285').
line('42285', '55999').
line('42280', '58869').
line('42280', '23271').
line('12429', '11397').
line('58497', '24600').
line('45428', '58496').
line('42285', '24858').
line('23167', '57085').
line('58496', '24600').
line('42511', '23334').
line('23271', '57085').
line('42188', '57004').
line('42511', '23271').
line('45428', '24858').
line('42471', '23334').
line('42280', '11397').
line('58497', '58869').
line('11397', '58497').
line('24858', '58744').
line('42280', '42285').
line('5482', '23167').
line('57004', '23167').
line('23334', '58744').

station('45428').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- station(Y), connection(X, Y).

query(connected('42285')).
query(connected('42280')).
query(connected('5482')).
query(connected('11397')).
query(connected('42511')).
query(connected('13111')).
query(connected('42471')).
query(connected('12429')).
query(connected('42188')).
query(connected('8236')).
