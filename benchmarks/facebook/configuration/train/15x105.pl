10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('43584','24523').
0.19::trusts('24523','43584').
0.1::trusts('42129','43584').
0.77123207545039::trusts('41990','43584').
0.468559::trusts('41676','43584').
0.40951::trusts('49948','43584').
0.5217031::trusts('57473','43584').
0.1::trusts('45479','43584').
0.19::trusts('57474','43584').
0.1::trusts('43584','42129').
0.1::trusts('41676','42129').
0.833228183003334::trusts('43584','41990').
0.1::trusts('41676','41990').
0.1::trusts('45479','41990').
0.77123207545039::trusts('43584','41676').
0.3439::trusts('41990','41676').
0.1::trusts('43583','41676').
0.878423345409431::trusts('43584','49948').
0.19::trusts('41676','49948').
0.40951::trusts('43584','57473').
0.1::trusts('43584','45479').
0.1::trusts('41988','45479').
0.19::trusts('43584','57474').
0.1::trusts('41676','43583').
0.19::trusts('41676','41675').
0.1::trusts('43584','43585').
0.1::trusts('59300','43585').
0.19::trusts('7557','43585').

person('24523').
person('43584').
person('42129').
person('41990').
person('41676').
person('49948').
person('57473').
person('45479').
person('57474').
person('43583').
person('41988').
person('41675').
person('43585').
person('59300').
person('7557').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('24523')).
query(buys('43584')).
query(buys('42129')).
query(buys('41990')).
query(buys('41676')).
query(buys('49948')).
query(buys('57473')).
query(buys('45479')).
query(buys('57474')).
query(buys('43583')).
query(buys('41988')).
query(buys('41675')).
query(buys('43585')).
query(buys('59300')).
query(buys('7557')).
