10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18178','48595').
0.5217031::trusts('52507','48595').
0.1::trusts('43245','48595').
0.271::trusts('51846','48595').
0.271::trusts('59248','48595').
0.1::trusts('57379','48595').
0.56953279::trusts('48595','52507').
0.1::trusts('51280','52507').
0.3439::trusts('24051','52507').
0.1::trusts('51280','43245').
0.1::trusts('51846','43245').
0.19::trusts('52510','43245').
0.1::trusts('60944','43245').
0.19::trusts('48595','51846').
0.19::trusts('46522','51846').
0.1::trusts('57379','51846').
0.1::trusts('51847','51846').
0.1::trusts('18178','57379').
0.1::trusts('48595','57379').
0.1::trusts('52507','57379').
0.1::trusts('46522','57379').
0.1::trusts('51846','57379').
0.19::trusts('52507','51280').
0.19::trusts('52507','24051').
0.40951::trusts('51846','46522').
0.1::trusts('57379','46522').
0.1::trusts('43245','52510').
0.1::trusts('43245','60944').
0.1::trusts('51846','59246').
0.1::trusts('48595','63222').
0.1::trusts('43245','43260').

person('48595').
person('18178').
person('52507').
person('43245').
person('51846').
person('59248').
person('57379').
person('51280').
person('24051').
person('46522').
person('52510').
person('60944').
person('51847').
person('59246').
person('63222').
person('43260').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('48595')).
query(buys('18178')).
query(buys('52507')).
query(buys('43245')).
query(buys('51846')).
query(buys('59248')).
query(buys('57379')).
query(buys('51280')).
query(buys('24051')).
query(buys('46522')).
query(buys('52510')).
query(buys('60944')).
query(buys('51847')).
query(buys('59246')).
query(buys('63222')).
query(buys('43260')).
