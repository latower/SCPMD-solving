10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('29982','8474').
0.19::trusts('8941','8474').
0.1::trusts('29979','8474').
0.3439::trusts('8474','29982').
0.19::trusts('12413','8941').
0.271::trusts('14528','8941').
0.1::trusts('17289','8941').
0.1::trusts('19366','8941').
0.1::trusts('8474','29979').
0.19::trusts('29031','29979').
0.19::trusts('8941','12413').
0.1::trusts('7974','12413').
0.19::trusts('6872','12413').
0.1::trusts('14528','12413').
0.1::trusts('22625','12413').
0.40951::trusts('8941','14528').
0.1::trusts('8848','14528').
0.19::trusts('12413','14528').
0.1::trusts('6872','14528').
0.1::trusts('37973','14528').
0.19::trusts('8941','17289').
0.1::trusts('8941','19366').
0.1::trusts('14528','8848').
0.468559::trusts('12413','6872').
0.1::trusts('14528','37973').
0.1::trusts('8474','6393').

person('8474').
person('29982').
person('8941').
person('29979').
person('12413').
person('14528').
person('17289').
person('19366').
person('8848').
person('7974').
person('6872').
person('22625').
person('37973').
person('29031').
person('6393').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8474')).
query(buys('29982')).
query(buys('8941')).
query(buys('29979')).
query(buys('12413')).
query(buys('14528')).
query(buys('17289')).
query(buys('19366')).
query(buys('8848')).
query(buys('7974')).
query(buys('6872')).
query(buys('22625')).
query(buys('37973')).
query(buys('29031')).
query(buys('6393')).
