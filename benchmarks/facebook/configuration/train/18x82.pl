10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('46718','13574').
0.1::trusts('13574','46718').
0.40951::trusts('369','46718').
0.1::trusts('14823','46718').
0.1::trusts('11178','46718').
0.1::trusts('38899','46718').
0.1::trusts('62879','46718').
0.1::trusts('369','7286').
0.19::trusts('38689','7286').
0.1::trusts('7286','369').
0.3439::trusts('46718','369').
0.271::trusts('38539','369').
0.1::trusts('11178','369').
0.19::trusts('356','369').
0.19::trusts('7286','38689').
0.19::trusts('13574','38539').
0.19::trusts('369','38539').
0.19::trusts('14823','38539').
0.271::trusts('46718','38539').
0.1::trusts('11178','38539').
0.271::trusts('48032','38539').
0.1::trusts('369','11178').
0.1::trusts('369','356').
0.1::trusts('13574','14823').
0.19::trusts('46718','14823').
0.271::trusts('38539','14823').
0.1::trusts('42860','14823').
0.1::trusts('14823','42860').
0.1::trusts('14823','38899').
0.19::trusts('46718','38899').
0.1::trusts('38539','38899').
0.3439::trusts('38539','48032').
0.19::trusts('369','32749').
0.1::trusts('47590','32749').
0.1::trusts('14823','48034').
0.1::trusts('46718','48034').
0.1::trusts('7286','23836').
0.1::trusts('356','363').

person('13574').
person('46718').
person('7286').
person('369').
person('38689').
person('38539').
person('11178').
person('356').
person('14823').
person('42860').
person('38899').
person('62879').
person('48032').
person('32749').
person('47590').
person('48034').
person('23836').
person('363').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13574')).
query(buys('46718')).
query(buys('7286')).
query(buys('369')).
query(buys('38689')).
query(buys('38539')).
query(buys('11178')).
query(buys('356')).
query(buys('14823')).
query(buys('42860')).
query(buys('38899')).
query(buys('62879')).
query(buys('48032')).
query(buys('32749')).
query(buys('47590')).
query(buys('48034')).
query(buys('23836')).
query(buys('363')).
