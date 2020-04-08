10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('38176','23558').
0.1::trusts('17940','23558').
0.271::trusts('23558','38176').
0.1::trusts('40450','38176').
0.1::trusts('40602','38176').
0.1::trusts('23558','17940').
0.3439::trusts('22891','40450').
0.3439::trusts('57164','40450').
0.468559::trusts('40450','22891').
0.972187161055631::trusts('28050','22891').
0.1::trusts('25538','22891').
0.271::trusts('40450','57164').
0.3439::trusts('57163','57164').
0.19::trusts('54093','57164').
0.1::trusts('33422','33550').
0.19::trusts('16882','33422').
0.1::trusts('33550','33422').
0.1::trusts('33548','33422').
0.979724440409555::trusts('22891','28050').
0.19::trusts('22891','25538').
0.468559::trusts('21881','25538').
0.271::trusts('25538','21881').
0.19::trusts('33548','21881').
0.1::trusts('53301','21881').
0.19::trusts('38176','40602').
0.1::trusts('22891','34095').
0.1::trusts('33422','33548').
0.1::trusts('21881','33548').
0.1::trusts('21881','53301').
0.5217031::trusts('57164','57163').
0.1::trusts('54093','57163').
0.3439::trusts('57164','54093').
0.1::trusts('16882','21688').
0.1::trusts('40450','24103').

person('23558').
person('38176').
person('17940').
person('40450').
person('22891').
person('57164').
person('33550').
person('33422').
person('28050').
person('25538').
person('21881').
person('40602').
person('34095').
person('16882').
person('33548').
person('53301').
person('57163').
person('54093').
person('21688').
person('24103').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23558')).
query(buys('38176')).
query(buys('17940')).
query(buys('40450')).
query(buys('22891')).
query(buys('57164')).
query(buys('33550')).
query(buys('33422')).
query(buys('28050')).
query(buys('25538')).
query(buys('21881')).
query(buys('40602')).
query(buys('34095')).
query(buys('16882')).
query(buys('33548')).
query(buys('53301')).
query(buys('57163')).
query(buys('54093')).
query(buys('21688')).
query(buys('24103')).
