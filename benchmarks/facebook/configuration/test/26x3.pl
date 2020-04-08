10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('16654','12767').
0.6513215599::trusts('14608','12767').
0.19::trusts('6158','12767').
0.1::trusts('29539','12767').
0.271::trusts('19462','12767').
0.19::trusts('33259','12767').
0.1::trusts('22933','12767').
0.1::trusts('29918','12767').
0.56953279::trusts('3313','12767').
0.3439::trusts('12767','16654').
0.19::trusts('14608','16654').
0.1::trusts('3779','16654').
0.1::trusts('13785','16654').
0.794108867905351::trusts('12767','14608').
0.271::trusts('16654','14608').
0.1::trusts('8511','14608').
0.1::trusts('23424','14608').
0.19::trusts('10196','14608').
0.3439::trusts('12767','6158').
0.1::trusts('33565','6158').
0.1::trusts('31690','6158').
0.1::trusts('12767','29539').
0.271::trusts('12767','19462').
0.271::trusts('12767','33259').
0.1::trusts('12767','22933').
0.19::trusts('22474','22933').
0.19::trusts('12767','29918').
0.1::trusts('19462','29918').
0.1::trusts('3313','29918').
0.1::trusts('56638','29918').
0.1::trusts('20512','29918').
0.271::trusts('12767','3313').
0.1::trusts('29918','3313').
0.1::trusts('16653','3779').
0.1::trusts('16654','13785').
0.1::trusts('14608','8511').
0.1::trusts('33192','8511').
0.19::trusts('3779','16653').
0.1::trusts('14608','10196').
0.1::trusts('21847','10196').
0.19::trusts('6158','33565').
0.1::trusts('6158','31690').
0.271::trusts('22933','22474').
0.1::trusts('29918','20512').
0.1::trusts('10196','21847').
0.1::trusts('29919','29920').
0.1::trusts('29918','29919').
0.1::trusts('10196','7029').

person('12767').
person('16654').
person('14608').
person('6158').
person('29539').
person('19462').
person('33259').
person('22933').
person('29918').
person('3313').
person('3779').
person('13785').
person('8511').
person('33192').
person('16653').
person('23424').
person('10196').
person('33565').
person('31690').
person('22474').
person('56638').
person('20512').
person('21847').
person('29920').
person('29919').
person('7029').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12767')).
query(buys('16654')).
query(buys('14608')).
query(buys('6158')).
query(buys('29539')).
query(buys('19462')).
query(buys('33259')).
query(buys('22933')).
query(buys('29918')).
query(buys('3313')).
query(buys('3779')).
query(buys('13785')).
query(buys('8511')).
query(buys('33192')).
query(buys('16653')).
query(buys('23424')).
query(buys('10196')).
query(buys('33565')).
query(buys('31690')).
query(buys('22474')).
query(buys('56638')).
query(buys('20512')).
query(buys('21847')).
query(buys('29920')).
query(buys('29919')).
query(buys('7029')).