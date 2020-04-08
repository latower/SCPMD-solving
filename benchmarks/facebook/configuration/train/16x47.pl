10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('48565','50074').
0.1::trusts('54204','50074').
0.468559::trusts('42489','50074').
0.19::trusts('50074','48565').
0.1::trusts('49128','48565').
0.271::trusts('57506','54204').
0.40951::trusts('50078','42489').
0.40951::trusts('50074','42489').
0.1::trusts('39869','36412').
0.1::trusts('36412','39869').
0.19::trusts('39865','39869').
0.1::trusts('48565','49128').
0.1::trusts('39879','49128').
0.1::trusts('59516','49128').
0.271::trusts('54204','57506').
0.1::trusts('49128','39879').
0.1::trusts('39865','39879').
0.1::trusts('39879','39865').
0.271::trusts('39869','39865').
0.1::trusts('34061','39865').
0.1::trusts('49128','59516').
0.1::trusts('36412','39867').
0.1::trusts('39865','34061').
0.1::trusts('34821','34061').
0.1::trusts('36412','55793').

person('50074').
person('48565').
person('54204').
person('42489').
person('36412').
person('39869').
person('49128').
person('57506').
person('39879').
person('39865').
person('59516').
person('39867').
person('34061').
person('50078').
person('34821').
person('55793').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('50074')).
query(buys('48565')).
query(buys('54204')).
query(buys('42489')).
query(buys('36412')).
query(buys('39869')).
query(buys('49128')).
query(buys('57506')).
query(buys('39879')).
query(buys('39865')).
query(buys('59516')).
query(buys('39867')).
query(buys('34061')).
query(buys('50078')).
query(buys('34821')).
query(buys('55793')).
