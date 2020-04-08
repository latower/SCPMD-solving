10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('18216','4953').
0.19::trusts('43557','4953').
0.1::trusts('49724','4953').
0.19::trusts('4953','18216').
0.5217031::trusts('8426','18216').
0.1::trusts('28497','18216').
0.19::trusts('43556','18216').
0.1::trusts('25481','18216').
0.1::trusts('4953','43557').
0.1::trusts('4953','49724').
0.56953279::trusts('18216','8426').
0.1::trusts('18216','28497').
0.1::trusts('27690','28497').
0.19::trusts('18216','43556').
0.1::trusts('18216','25481').
0.19::trusts('354','321').
0.1::trusts('8426','321').
0.1::trusts('4004','354').
0.1::trusts('354','4004').
0.1::trusts('27690','4004').
0.1::trusts('28497','27690').
0.1::trusts('18216','18226').
0.1::trusts('4953','30901').
0.1::trusts('18216','43555').
0.1::trusts('43556','59595').

person('4953').
person('18216').
person('43557').
person('49724').
person('8426').
person('28497').
person('43556').
person('25481').
person('321').
person('354').
person('4004').
person('27690').
person('18226').
person('30901').
person('43555').
person('59595').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4953')).
query(buys('18216')).
query(buys('43557')).
query(buys('49724')).
query(buys('8426')).
query(buys('28497')).
query(buys('43556')).
query(buys('25481')).
query(buys('321')).
query(buys('354')).
query(buys('4004')).
query(buys('27690')).
query(buys('18226')).
query(buys('30901')).
query(buys('43555')).
query(buys('59595')).
