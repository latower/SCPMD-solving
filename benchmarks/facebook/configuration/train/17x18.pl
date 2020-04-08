10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('33009','26728').
0.3439::trusts('33013','26728').
0.1::trusts('55558','26728').
0.1::trusts('24724','33009').
0.56953279::trusts('26728','33009').
0.271::trusts('33013','33009').
0.1::trusts('33020','33009').
0.1::trusts('48842','33009').
0.40951::trusts('26728','33013').
0.271::trusts('33009','33013').
0.1::trusts('33021','33013').
0.19::trusts('55560','55558').
0.19::trusts('24724','33020').
0.19::trusts('33009','33020').
0.19::trusts('33013','33020').
0.1::trusts('33021','33020').
0.19::trusts('33013','33021').
0.1::trusts('33020','33021').
0.1::trusts('27895','33021').
0.1::trusts('48841','33021').
0.19::trusts('55558','55560').
0.1::trusts('33021','27895').
0.1::trusts('33021','48841').
0.1::trusts('48841','33022').
0.271::trusts('33009','33017').
0.1::trusts('33013','33017').
0.1::trusts('55558','52284').
0.1::trusts('33020','33027').
0.1::trusts('33026','33027').
0.1::trusts('48842','56143').

person('26728').
person('33009').
person('33013').
person('55558').
person('24724').
person('33020').
person('48842').
person('33021').
person('55560').
person('27895').
person('48841').
person('33022').
person('33017').
person('52284').
person('33027').
person('33026').
person('56143').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('26728')).
query(buys('33009')).
query(buys('33013')).
query(buys('55558')).
query(buys('24724')).
query(buys('33020')).
query(buys('48842')).
query(buys('33021')).
query(buys('55560')).
query(buys('27895')).
query(buys('48841')).
query(buys('33022')).
query(buys('33017')).
query(buys('52284')).
query(buys('33027')).
query(buys('33026')).
query(buys('56143')).
