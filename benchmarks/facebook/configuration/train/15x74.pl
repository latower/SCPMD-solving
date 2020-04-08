10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('35889','17467').
0.1::trusts('17467','35889').
0.1::trusts('34746','35889').
0.19::trusts('34746','8692').
0.1::trusts('8692','34746').
0.1::trusts('27760','34746').
0.19::trusts('19579','34746').
0.19::trusts('35889','34746').
0.19::trusts('14971','34746').
0.19::trusts('34746','27760').
0.271::trusts('43213','27760').
0.1::trusts('9232','27760').
0.1::trusts('27760','43213').
0.1::trusts('9232','43213').
0.1::trusts('40463','43213').
0.1::trusts('44595','43213').
0.1::trusts('34746','19579').
0.271::trusts('34746','14971').
0.1::trusts('23060','14971').
0.1::trusts('43213','40463').
0.19::trusts('9232','40463').
0.19::trusts('43213','44595').
0.1::trusts('23060','43696').
0.19::trusts('23060','25374').
0.1::trusts('35889','45441').

person('17467').
person('35889').
person('8692').
person('34746').
person('27760').
person('43213').
person('9232').
person('19579').
person('14971').
person('40463').
person('44595').
person('23060').
person('43696').
person('25374').
person('45441').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17467')).
query(buys('35889')).
query(buys('8692')).
query(buys('34746')).
query(buys('27760')).
query(buys('43213')).
query(buys('9232')).
query(buys('19579')).
query(buys('14971')).
query(buys('40463')).
query(buys('44595')).
query(buys('23060')).
query(buys('43696')).
query(buys('25374')).
query(buys('45441')).
