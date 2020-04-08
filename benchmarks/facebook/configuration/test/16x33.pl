10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6070','7919').
0.1::trusts('6070','48304').
0.19::trusts('6070','29174').
0.1::trusts('6070','6371').
0.1::trusts('6070','54774').
0.19::trusts('47305','54774').
0.1::trusts('54774','47305').
0.1::trusts('57157','57158').
0.1::trusts('6070','57157').
0.1::trusts('57157','48068').
0.1::trusts('6070','7392').
0.1::trusts('47305','47304').
0.1::trusts('6070','38576').
0.1::trusts('47379','38576').
0.1::trusts('48068','59156').
0.1::trusts('6070','27277').

person('7919').
person('6070').
person('48304').
person('29174').
person('6371').
person('54774').
person('47305').
person('57158').
person('57157').
person('48068').
person('7392').
person('47304').
person('38576').
person('47379').
person('59156').
person('27277').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7919')).
query(buys('6070')).
query(buys('48304')).
query(buys('29174')).
query(buys('6371')).
query(buys('54774')).
query(buys('47305')).
query(buys('57158')).
query(buys('57157')).
query(buys('48068')).
query(buys('7392')).
query(buys('47304')).
query(buys('38576')).
query(buys('47379')).
query(buys('59156')).
query(buys('27277')).
