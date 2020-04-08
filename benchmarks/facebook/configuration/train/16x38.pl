10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('45703','43172').
0.1::trusts('45706','45703').
0.40951::trusts('49490','14406').
0.40951::trusts('49488','14406').
0.468559::trusts('14406','49490').
0.3439::trusts('53424','49490').
0.1::trusts('6683','49490').
0.5217031::trusts('14406','49488').
0.1::trusts('45703','51491').
0.1::trusts('51491','45698').
0.1::trusts('49601','45698').
0.1::trusts('53424','45698').
0.1::trusts('49032','45698').
0.1::trusts('45698','49601').
0.1::trusts('53424','49601').
0.1::trusts('14406','45706').
0.1::trusts('45698','45706').
0.19::trusts('45703','45706').
0.56953279::trusts('53424','49026').
0.1::trusts('14406','53425').
0.1::trusts('53424','53425').
0.1::trusts('49601','43113').
0.1::trusts('49026','55753').

person('43172').
person('45703').
person('14406').
person('49490').
person('49488').
person('53424').
person('6683').
person('51491').
person('45698').
person('49601').
person('49032').
person('45706').
person('49026').
person('53425').
person('43113').
person('55753').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('43172')).
query(buys('45703')).
query(buys('14406')).
query(buys('49490')).
query(buys('49488')).
query(buys('53424')).
query(buys('6683')).
query(buys('51491')).
query(buys('45698')).
query(buys('49601')).
query(buys('49032')).
query(buys('45706')).
query(buys('49026')).
query(buys('53425')).
query(buys('43113')).
query(buys('55753')).
