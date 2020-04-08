10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('41054','19436').
0.1::trusts('19436','41054').
0.3439::trusts('41070','41054').
0.1::trusts('41054','41070').
0.19::trusts('52490','41070').
0.1::trusts('33579','41070').
0.1::trusts('41070','52490').
0.271::trusts('41070','33579').
0.1::trusts('8349','33579').
0.19::trusts('15762','33579').
0.1::trusts('24611','33579').
0.1::trusts('47747','47746').
0.1::trusts('33579','8349').
0.1::trusts('41054','24611').
0.19::trusts('33579','24611').
0.1::trusts('46796','24611').
0.1::trusts('59212','24611').
0.1::trusts('47747','24611').
0.1::trusts('54609','24611').
0.1::trusts('24611','46796').
0.1::trusts('24611','59212').
0.1::trusts('46796','49239').
0.1::trusts('33579','58483').
0.1::trusts('22133','58483').
0.1::trusts('49239','1730').

person('19436').
person('41054').
person('41070').
person('52490').
person('33579').
person('47746').
person('47747').
person('8349').
person('15762').
person('24611').
person('46796').
person('59212').
person('54609').
person('49239').
person('58483').
person('22133').
person('1730').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19436')).
query(buys('41054')).
query(buys('41070')).
query(buys('52490')).
query(buys('33579')).
query(buys('47746')).
query(buys('47747')).
query(buys('8349')).
query(buys('15762')).
query(buys('24611')).
query(buys('46796')).
query(buys('59212')).
query(buys('54609')).
query(buys('49239')).
query(buys('58483')).
query(buys('22133')).
query(buys('1730')).
