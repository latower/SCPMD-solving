10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('49741','10290').
0.1::trusts('46234','10290').
0.1::trusts('23832','10290').
0.19::trusts('23830','10290').
0.1::trusts('10290','49741').
0.1::trusts('35831','49741').
0.1::trusts('10290','46234').
0.1::trusts('10290','23830').
0.19::trusts('49789','9672').
0.19::trusts('59570','9672').
0.1::trusts('35825','9672').
0.1::trusts('35969','9672').
0.1::trusts('9672','49789').
0.1::trusts('9672','59570').
0.1::trusts('9672','35825').
0.1::trusts('35831','35825').
0.1::trusts('35832','35825').
0.1::trusts('9672','35969').
0.19::trusts('28169','35969').
0.1::trusts('49791','35969').
0.1::trusts('49741','35831').
0.1::trusts('35825','35831').
0.19::trusts('35974','35831').
0.19::trusts('35831','35974').
0.1::trusts('35825','35832').
0.19::trusts('35969','28169').
0.1::trusts('35969','49791').
0.1::trusts('23832','25784').
0.1::trusts('35974','58170').
0.1::trusts('35833','6110').
0.1::trusts('35831','35833').
0.1::trusts('35825','57382').

person('10290').
person('49741').
person('46234').
person('23832').
person('23830').
person('9672').
person('49789').
person('59570').
person('35825').
person('35969').
person('35831').
person('35974').
person('35832').
person('28169').
person('49791').
person('25784').
person('58170').
person('6110').
person('35833').
person('57382').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('10290')).
query(buys('49741')).
query(buys('46234')).
query(buys('23832')).
query(buys('23830')).
query(buys('9672')).
query(buys('49789')).
query(buys('59570')).
query(buys('35825')).
query(buys('35969')).
query(buys('35831')).
query(buys('35974')).
query(buys('35832')).
query(buys('28169')).
query(buys('49791')).
query(buys('25784')).
query(buys('58170')).
query(buys('6110')).
query(buys('35833')).
query(buys('57382')).
