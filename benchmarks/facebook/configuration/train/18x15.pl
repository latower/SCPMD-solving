10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('22098','1296').
0.271::trusts('16192','1296').
0.3439::trusts('16191','1296').
0.1::trusts('17003','1296').
0.1::trusts('1296','22098').
0.19::trusts('1296','16192').
0.468559::trusts('17001','16192').
0.1::trusts('16191','16192').
0.1::trusts('1296','16191').
0.1::trusts('15955','16191').
0.1::trusts('1296','17003').
0.271::trusts('16192','17003').
0.19::trusts('16192','17001').
0.19::trusts('32387','17001').
0.19::trusts('45841','17001').
0.1::trusts('12296','17001').
0.1::trusts('14045','17001').
0.1::trusts('17001','32387').
0.19::trusts('19268','32387').
0.3439::trusts('17001','45841').
0.19::trusts('17001','12296').
0.1::trusts('17001','14045').
0.1::trusts('16191','15955').
0.5217031::trusts('16193','15955').
0.901522909781639::trusts('16190','15955').
0.19::trusts('32387','19268').
0.1::trusts('11485','19268').
0.40951::trusts('15955','16193').
0.864914828232701::trusts('15955','16190').
0.1::trusts('19268','11485').
0.1::trusts('16193','35030').
0.271::trusts('17001','45844').
0.1::trusts('32387','40804').

person('1296').
person('22098').
person('16192').
person('16191').
person('17003').
person('17001').
person('32387').
person('45841').
person('12296').
person('14045').
person('15955').
person('19268').
person('16193').
person('16190').
person('11485').
person('35030').
person('45844').
person('40804').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1296')).
query(buys('22098')).
query(buys('16192')).
query(buys('16191')).
query(buys('17003')).
query(buys('17001')).
query(buys('32387')).
query(buys('45841')).
query(buys('12296')).
query(buys('14045')).
query(buys('15955')).
query(buys('19268')).
query(buys('16193')).
query(buys('16190')).
query(buys('11485')).
query(buys('35030')).
query(buys('45844')).
query(buys('40804')).
