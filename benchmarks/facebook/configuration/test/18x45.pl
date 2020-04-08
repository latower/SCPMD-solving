10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('7471','2258').
0.1::trusts('4967','2258').
0.1::trusts('4959','2258').
0.1::trusts('4864','2258').
0.19::trusts('2258','7471').
0.1::trusts('27973','7471').
0.1::trusts('4959','4967').
0.19::trusts('10274','4967').
0.19::trusts('7653','4967').
0.1::trusts('10273','4967').
0.1::trusts('10277','4967').
0.19::trusts('10276','4967').
0.56953279::trusts('2258','4959').
0.271::trusts('4967','4959').
0.6513215599::trusts('4961','4959').
0.1::trusts('7473','4959').
0.1::trusts('4866','4959').
0.271::trusts('4967','10274').
0.3439::trusts('10276','10274').
0.3439::trusts('4967','10273').
0.19::trusts('2258','10277').
0.468559::trusts('4967','10277').
0.1::trusts('4959','7473').
0.19::trusts('7653','7654').
0.1::trusts('6470','5024').
0.271::trusts('4864','6470').
0.1::trusts('10274','15121').

person('2258').
person('7471').
person('4967').
person('4959').
person('4864').
person('27973').
person('10274').
person('7653').
person('10273').
person('10277').
person('10276').
person('4961').
person('7473').
person('4866').
person('7654').
person('5024').
person('6470').
person('15121').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2258')).
query(buys('7471')).
query(buys('4967')).
query(buys('4959')).
query(buys('4864')).
query(buys('27973')).
query(buys('10274')).
query(buys('7653')).
query(buys('10273')).
query(buys('10277')).
query(buys('10276')).
query(buys('4961')).
query(buys('7473')).
query(buys('4866')).
query(buys('7654')).
query(buys('5024')).
query(buys('6470')).
query(buys('15121')).
