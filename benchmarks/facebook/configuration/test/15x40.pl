10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('15124','11425').
0.40951::trusts('11440','11425').
0.1::trusts('47681','11425').
0.1::trusts('13300','11425').
0.1::trusts('53997','11425').
0.271::trusts('11425','15124').
0.19::trusts('11425','11440').
0.19::trusts('10594','11440').
0.1::trusts('47681','11440').
0.271::trusts('40778','11440').
0.271::trusts('62516','11440').
0.1::trusts('11425','13300').
0.1::trusts('11425','53997').
0.1::trusts('13300','53997').
0.1::trusts('11440','10594').
0.271::trusts('47486','10594').
0.40951::trusts('59768','10594').
0.1::trusts('40778','10594').
0.40951::trusts('40988','10594').
0.19::trusts('10594','47486').
0.1::trusts('10594','40778').
0.19::trusts('11440','40778').
0.1::trusts('40684','40778').
0.3439::trusts('10594','40988').
0.271::trusts('11440','62516').
0.1::trusts('40778','49344').
0.1::trusts('40778','37506').

person('11425').
person('15124').
person('11440').
person('47681').
person('13300').
person('53997').
person('10594').
person('47486').
person('59768').
person('40778').
person('40988').
person('62516').
person('40684').
person('49344').
person('37506').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11425')).
query(buys('15124')).
query(buys('11440')).
query(buys('47681')).
query(buys('13300')).
query(buys('53997')).
query(buys('10594')).
query(buys('47486')).
query(buys('59768')).
query(buys('40778')).
query(buys('40988')).
query(buys('62516')).
query(buys('40684')).
query(buys('49344')).
query(buys('37506')).
