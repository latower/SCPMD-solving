10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('1278','4648').
0.468559::trusts('4861','4648').
0.1::trusts('4860','4648').
0.271::trusts('4648','1278').
0.1::trusts('4670','1278').
0.3439::trusts('4648','4861').
0.1::trusts('4648','4860').
0.1::trusts('4861','4860').
0.1::trusts('1133','4860').
0.3439::trusts('45895','4860').
0.1::trusts('60052','4860').
0.1::trusts('270','4670').
0.1::trusts('35423','4670').
0.1::trusts('4860','1133').
0.612579511::trusts('1134','1133').
0.1::trusts('1142','1133').
0.19::trusts('45895','1133').
0.1::trusts('4860','45895').
0.271::trusts('1133','45895').
0.1::trusts('4860','60052').
0.1::trusts('41053','60052').
0.1::trusts('1278','4558').
0.271::trusts('4559','4558').
0.19::trusts('4558','4559').
0.1::trusts('4670','35423').
0.468559::trusts('1133','1134').
0.1::trusts('6143','1134').
0.1::trusts('1142','1134').
0.1::trusts('1134','1142').
0.19::trusts('1278','1279').
0.1::trusts('1133','446').
0.1::trusts('1134','446').
0.1::trusts('4648','1093').
0.19::trusts('4860','1093').

person('4648').
person('1278').
person('4861').
person('4860').
person('4670').
person('1133').
person('45895').
person('60052').
person('4558').
person('4559').
person('270').
person('35423').
person('1134').
person('1142').
person('6143').
person('41053').
person('1279').
person('446').
person('1093').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4648')).
query(buys('1278')).
query(buys('4861')).
query(buys('4860')).
query(buys('4670')).
query(buys('1133')).
query(buys('45895')).
query(buys('60052')).
query(buys('4558')).
query(buys('4559')).
query(buys('270')).
query(buys('35423')).
query(buys('1134')).
query(buys('1142')).
query(buys('6143')).
query(buys('41053')).
query(buys('1279')).
query(buys('446')).
query(buys('1093')).
