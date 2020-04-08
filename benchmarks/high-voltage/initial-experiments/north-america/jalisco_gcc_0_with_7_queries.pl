line('16491', '28494').
line('14234', '27429').
line('7294', '14239').
line('6631', '27391').
line('13867', '14235').
line('14235', '26171').
line('7294', '27422').
line('14234', '16322').
line('7294', '23668').
line('4435', '7294').
line('6631', '16322').
line('16497', '27428').
line('14234', '27391').
line('28494', '16491').
line('7294', '28153').
line('27429', '27430').
line('16498', '27430').
line('21516', '4435').
line('14234', '26171').
line('28494', '4436').
line('16498', '16491').
line('4436', '4435').
line('23668', '4435').
line('16322', '28153').
line('27428', '27430').
line('14234', '26170').
line('27422', '16489').
line('13867', '4435').
line('16497', '16499').
line('27430', '14235').
line('27428', '27429').
line('7294', '14234').
line('4435', '23668').
line('13867', '14220').

plant('16491').

?::strengthen(X, Y) :- line(X, Y).

0.7916666666666667::power_line(X, Y) :- line(X, Y), strengthen(X, Y).
0.7916666666666667::power_line(X, Y) :- line(Y, X), strengthen(Y, X).
0.4::power_line(X, Y) :- line(X, Y).
0.4::power_line(X, Y) :- line(Y, X).

connection(X, Y) :- power_line(X, Y).
connection(X, Y) :- connection(X, Z), power_line(Z, Y).
connected(X) :- plant(Y), connection(X, Y).

query(connected('14234')).
query(connected('7294')).
query(connected('4435')).
query(connected('16322')).
query(connected('14235')).
query(connected('13867')).
query(connected('6631')).
