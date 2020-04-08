10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('15480','1645').
0.1::trusts('12395','1645').
0.40951::trusts('1645','15480').
0.1::trusts('1645','12395').
0.1::trusts('2655','12395').
0.468559::trusts('5810','2655').
0.1::trusts('9195','2655').
0.1::trusts('12395','2655').
0.1::trusts('47882','2655').
0.3439::trusts('53137','2655').
0.612579511::trusts('2655','5810').
0.19::trusts('2655','47882').
0.5217031::trusts('2655','53137').
0.1::trusts('29951','53137').
0.19::trusts('15481','22856').
0.77123207545039::trusts('22856','15481').
0.1::trusts('29','15481').
0.1::trusts('53137','29951').
0.19::trusts('1645','29').
0.1::trusts('15481','29').
0.1::trusts('1645','53').
0.19::trusts('29','15482').
0.1::trusts('9195','47894').
0.1::trusts('2655','57695').

person('1645').
person('15480').
person('12395').
person('2655').
person('5810').
person('9195').
person('47882').
person('53137').
person('22856').
person('15481').
person('29951').
person('29').
person('53').
person('15482').
person('47894').
person('57695').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1645')).
query(buys('15480')).
query(buys('12395')).
query(buys('2655')).
query(buys('5810')).
query(buys('9195')).
query(buys('47882')).
query(buys('53137')).
query(buys('22856')).
query(buys('15481')).
query(buys('29951')).
query(buys('29')).
query(buys('53')).
query(buys('15482')).
query(buys('47894')).
query(buys('57695')).
