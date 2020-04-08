10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('1153','4239').
0.3439::trusts('4239','1153').
0.1::trusts('1043','1153').
0.19::trusts('30273','1153').
0.271::trusts('240','1153').
0.1::trusts('9410','1153').
0.1::trusts('6082','1153').
0.19::trusts('1043','1154').
0.1::trusts('240','1154').
0.1::trusts('1146','1154').
0.1::trusts('1154','1043').
0.1::trusts('1147','1043').
0.19::trusts('4642','1043').
0.1::trusts('1154','240').
0.19::trusts('1153','240').
0.1::trusts('1147','240').
0.19::trusts('1154','1146').
0.1::trusts('1149','1146').
0.1::trusts('1043','1146').
0.1::trusts('1147','1149').
0.1::trusts('1146','1149').
0.19::trusts('1149','1147').
0.1::trusts('1146','1147').
0.1::trusts('1043','4642').
0.19::trusts('1153','30273').
0.1::trusts('1153','9410').
0.1::trusts('9416','9410').
0.271::trusts('6067','9410').
0.1::trusts('1153','6082').
0.19::trusts('9410','9416').
0.3439::trusts('9410','6067').
0.40951::trusts('1149','6450').
0.1::trusts('9410','3553').

person('4239').
person('1153').
person('1154').
person('1043').
person('240').
person('1146').
person('1149').
person('1147').
person('4642').
person('30273').
person('9410').
person('6082').
person('9416').
person('6067').
person('6450').
person('3553').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4239')).
query(buys('1153')).
query(buys('1154')).
query(buys('1043')).
query(buys('240')).
query(buys('1146')).
query(buys('1149')).
query(buys('1147')).
query(buys('4642')).
query(buys('30273')).
query(buys('9410')).
query(buys('6082')).
query(buys('9416')).
query(buys('6067')).
query(buys('6450')).
query(buys('3553')).
