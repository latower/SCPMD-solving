10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('12870','4072').
0.271::trusts('4067','4072').
0.1::trusts('32281','4072').
0.1::trusts('4072','12870').
0.1::trusts('21434','12870').
0.19::trusts('4072','4067').
0.19::trusts('4055','4067').
0.1::trusts('4072','32281').
0.1::trusts('12870','21434').
0.468559::trusts('39190','21434').
0.1::trusts('46490','21434').
0.68618940391::trusts('21434','39190').
0.1::trusts('39195','39190').
0.19::trusts('56422','39190').
0.1::trusts('21434','46490').
0.271::trusts('39190','39195').
0.19::trusts('39190','56422').
0.1::trusts('21434','47097').
0.1::trusts('47098','47097').
0.271::trusts('47097','47098').
0.1::trusts('44358','39193').
0.1::trusts('39195','39193').
0.1::trusts('39193','44358').
0.1::trusts('39193','55231').
0.1::trusts('12870','22966').

person('4072').
person('12870').
person('4067').
person('32281').
person('21434').
person('4055').
person('39190').
person('46490').
person('39195').
person('56422').
person('47097').
person('47098').
person('39193').
person('44358').
person('55231').
person('22966').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4072')).
query(buys('12870')).
query(buys('4067')).
query(buys('32281')).
query(buys('21434')).
query(buys('4055')).
query(buys('39190')).
query(buys('46490')).
query(buys('39195')).
query(buys('56422')).
query(buys('47097')).
query(buys('47098')).
query(buys('39193')).
query(buys('44358')).
query(buys('55231')).
query(buys('22966')).
