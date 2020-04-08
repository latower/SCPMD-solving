10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('13080','41636').
0.1::trusts('50647','41636').
0.1::trusts('48167','41636').
0.1::trusts('45374','41636').
0.19::trusts('41636','13080').
0.1::trusts('41636','50647').
0.1::trusts('41636','48167').
0.19::trusts('45374','48167').
0.1::trusts('48167','45374').
0.19::trusts('53373','45374').
0.1::trusts('46630','45374').
0.19::trusts('45374','53373').
0.271::trusts('53372','53373').
0.1::trusts('46630','53373').
0.1::trusts('54899','53373').
0.19::trusts('45374','46630').
0.19::trusts('53373','46630').
0.1::trusts('54899','46630').
0.1::trusts('54900','46630').
0.271::trusts('53373','53372').
0.19::trusts('61342','53372').
0.271::trusts('45374','54899').
0.1::trusts('46630','54899').
0.1::trusts('57615','54899').
0.19::trusts('53372','61342').
0.1::trusts('53373','54900').
0.19::trusts('46630','54900').
0.271::trusts('54899','57615').
0.1::trusts('53372','44069').
0.1::trusts('53373','57616').
0.1::trusts('54899','57616').
0.19::trusts('45374','57618').
0.1::trusts('45374','47003').

person('41636').
person('13080').
person('50647').
person('48167').
person('45374').
person('53373').
person('46630').
person('53372').
person('54899').
person('61342').
person('54900').
person('57615').
person('44069').
person('57616').
person('57618').
person('47003').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('41636')).
query(buys('13080')).
query(buys('50647')).
query(buys('48167')).
query(buys('45374')).
query(buys('53373')).
query(buys('46630')).
query(buys('53372')).
query(buys('54899')).
query(buys('61342')).
query(buys('54900')).
query(buys('57615')).
query(buys('44069')).
query(buys('57616')).
query(buys('57618')).
query(buys('47003')).
