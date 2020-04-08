10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('15086','16349').
0.56953279::trusts('15085','16349').
0.1::trusts('23004','16349').
0.1::trusts('16356','16349').
0.56953279::trusts('16349','15085').
0.1::trusts('15083','15085').
0.1::trusts('15087','15085').
0.1::trusts('16349','23004').
0.1::trusts('28610','23004').
0.1::trusts('15086','15083').
0.1::trusts('15085','15083').
0.19::trusts('15086','15087').
0.271::trusts('15085','15087').
0.1::trusts('29002','28610').
0.1::trusts('28610','29002').
0.1::trusts('56071','29002').
0.1::trusts('29002','56071').
0.901522909781639::trusts('28501','28502').
0.68618940391::trusts('28502','28501').
0.6513215599::trusts('15086','28185').
0.1::trusts('28502','28185').
0.1::trusts('28182','28185').
0.19::trusts('28666','28185').
0.40951::trusts('15086','28182').
0.1::trusts('28185','28182').
0.3439::trusts('2907','28182').
0.1::trusts('15084','28182').
0.1::trusts('28185','28666').
0.19::trusts('15084','28666').
0.271::trusts('15086','15084').
0.19::trusts('15083','15084').
0.19::trusts('28666','15084').
0.1::trusts('2907','15084').
0.1::trusts('16349','19930').
0.1::trusts('28182','19930').
0.1::trusts('28182','28184').

person('16349').
person('15086').
person('15085').
person('23004').
person('16356').
person('15083').
person('15087').
person('28610').
person('29002').
person('56071').
person('28502').
person('28501').
person('28185').
person('28182').
person('28666').
person('2907').
person('15084').
person('19930').
person('28184').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16349')).
query(buys('15086')).
query(buys('15085')).
query(buys('23004')).
query(buys('16356')).
query(buys('15083')).
query(buys('15087')).
query(buys('28610')).
query(buys('29002')).
query(buys('56071')).
query(buys('28502')).
query(buys('28501')).
query(buys('28185')).
query(buys('28182')).
query(buys('28666')).
query(buys('2907')).
query(buys('15084')).
query(buys('19930')).
query(buys('28184')).
