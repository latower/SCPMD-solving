10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('9616','29779').
0.19::trusts('27751','29779').
0.1::trusts('29779','9616').
0.1::trusts('28080','9616').
0.19::trusts('4631','9616').
0.271::trusts('57756','27751').
0.3439::trusts('9616','28080').
0.19::trusts('9616','4631').
0.19::trusts('4628','4631').
0.1::trusts('4628','60882').
0.1::trusts('60882','4628').
0.1::trusts('4631','4628').
0.19::trusts('46199','4628').
0.1::trusts('27751','57756').
0.1::trusts('54881','57756').
0.1::trusts('57756','54881').
0.1::trusts('4628','46199').
0.1::trusts('29779','59100').
0.1::trusts('29779','59101').
0.1::trusts('29779','45324').
0.19::trusts('33663','45324').
0.1::trusts('28080','31379').

person('29779').
person('9616').
person('27751').
person('28080').
person('4631').
person('60882').
person('4628').
person('57756').
person('54881').
person('46199').
person('59100').
person('59101').
person('45324').
person('33663').
person('31379').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('29779')).
query(buys('9616')).
query(buys('27751')).
query(buys('28080')).
query(buys('4631')).
query(buys('60882')).
query(buys('4628')).
query(buys('57756')).
query(buys('54881')).
query(buys('46199')).
query(buys('59100')).
query(buys('59101')).
query(buys('45324')).
query(buys('33663')).
query(buys('31379')).
