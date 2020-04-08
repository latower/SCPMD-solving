10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.965663161797075::trusts('8149','3354').
0.1::trusts('8110','3354').
0.1::trusts('12698','3354').
0.833228183003334::trusts('3354','8149').
0.271::trusts('8110','8149').
0.19::trusts('12698','8149').
0.19::trusts('49820','8149').
0.1::trusts('23901','8149').
0.1::trusts('40175','8149').
0.1::trusts('3354','8110').
0.40951::trusts('8149','8110').
0.1::trusts('60869','8110').
0.1::trusts('42064','8110').
0.19::trusts('3354','12698').
0.3439::trusts('8149','12698').
0.19::trusts('53279','49820').
0.1::trusts('49821','49820').
0.1::trusts('8149','23901').
0.19::trusts('49820','23901').
0.1::trusts('23899','23901').
0.1::trusts('56747','23901').
0.1::trusts('8110','60869').
0.1::trusts('8110','42064').
0.19::trusts('49820','53279').
0.1::trusts('8149','49821').
0.1::trusts('23901','23899').
0.1::trusts('51989','23899').
0.3439::trusts('49820','56747').
0.1::trusts('23899','51989').
0.1::trusts('42064','24240').
0.1::trusts('21855','24240').
0.1::trusts('53279','33779').
0.1::trusts('8149','57360').

person('3354').
person('8149').
person('8110').
person('12698').
person('49820').
person('23901').
person('40175').
person('60869').
person('42064').
person('53279').
person('49821').
person('23899').
person('56747').
person('51989').
person('24240').
person('21855').
person('33779').
person('57360').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3354')).
query(buys('8149')).
query(buys('8110')).
query(buys('12698')).
query(buys('49820')).
query(buys('23901')).
query(buys('40175')).
query(buys('60869')).
query(buys('42064')).
query(buys('53279')).
query(buys('49821')).
query(buys('23899')).
query(buys('56747')).
query(buys('51989')).
query(buys('24240')).
query(buys('21855')).
query(buys('33779')).
query(buys('57360')).
