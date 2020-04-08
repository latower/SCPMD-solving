10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('13804','16267').
0.3439::trusts('34242','16267').
0.1::trusts('18566','16267').
0.19::trusts('16267','13804').
0.1::trusts('6405','13804').
0.19::trusts('1060','13804').
0.1::trusts('63206','13804').
0.1::trusts('16267','34242').
0.1::trusts('16457','34242').
0.19::trusts('56281','34242').
0.1::trusts('53471','18566').
0.19::trusts('1060','53856').
0.19::trusts('53856','1060').
0.19::trusts('13804','1060').
0.1::trusts('51651','1060').
0.19::trusts('13804','63206').
0.1::trusts('1060','51651').
0.19::trusts('30812','51651').
0.40951::trusts('51651','30812').
0.19::trusts('34242','16457').
0.1::trusts('53470','53471').
0.1::trusts('53471','53470').
0.19::trusts('1060','969').

person('16267').
person('13804').
person('34242').
person('18566').
person('53856').
person('1060').
person('6405').
person('63206').
person('51651').
person('30812').
person('16457').
person('56281').
person('53471').
person('53470').
person('969').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16267')).
query(buys('13804')).
query(buys('34242')).
query(buys('18566')).
query(buys('53856')).
query(buys('1060')).
query(buys('6405')).
query(buys('63206')).
query(buys('51651')).
query(buys('30812')).
query(buys('16457')).
query(buys('56281')).
query(buys('53471')).
query(buys('53470')).
query(buys('969')).
