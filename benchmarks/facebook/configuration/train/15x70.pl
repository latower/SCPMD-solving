10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('10053','7174').
0.1::trusts('7174','10053').
0.1::trusts('32677','10053').
0.56953279::trusts('31635','10053').
0.1::trusts('24693','10053').
0.271::trusts('10053','32677').
0.19::trusts('45024','32677').
0.5217031::trusts('10053','31635').
0.271::trusts('10053','24693').
0.271::trusts('32677','45024').
0.1::trusts('10053','34697').
0.1::trusts('10053','27781').
0.19::trusts('27778','27781').
0.1::trusts('27777','27781').
0.271::trusts('27781','27778').
0.19::trusts('27777','27778').
0.1::trusts('27778','27777').
0.1::trusts('10053','35372').
0.1::trusts('32677','40058').
0.1::trusts('31635','30291').
0.1::trusts('10053','20377').
0.1::trusts('45024','49479').

person('7174').
person('10053').
person('32677').
person('31635').
person('24693').
person('45024').
person('34697').
person('27781').
person('27778').
person('27777').
person('35372').
person('40058').
person('30291').
person('20377').
person('49479').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7174')).
query(buys('10053')).
query(buys('32677')).
query(buys('31635')).
query(buys('24693')).
query(buys('45024')).
query(buys('34697')).
query(buys('27781')).
query(buys('27778')).
query(buys('27777')).
query(buys('35372')).
query(buys('40058')).
query(buys('30291')).
query(buys('20377')).
query(buys('49479')).
