10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('12232','1953').
0.1::trusts('1527','1953').
0.928210201230815::trusts('12233','1953').
0.40951::trusts('1953','12232').
0.468559::trusts('1527','12232').
0.1::trusts('1953','1527').
0.271::trusts('12232','1527').
0.1::trusts('21209','1527').
0.3439::trusts('12237','1527').
0.1::trusts('26178','1527').
0.19::trusts('22754','1527').
0.1::trusts('20496','1527').
0.849905364703001::trusts('1953','12233').
0.1::trusts('1527','21209').
0.271::trusts('8085','21209').
0.468559::trusts('1527','12237').
0.1::trusts('55854','12237').
0.19::trusts('1527','26178').
0.19::trusts('8085','26178').
0.1::trusts('20990','26178').
0.19::trusts('1527','22754').
0.1::trusts('19944','22754').
0.19::trusts('1527','20496').
0.468559::trusts('21209','8085').
0.1::trusts('26178','8085').
0.56953279::trusts('8094','8085').
0.1::trusts('26178','20990').
0.1::trusts('22754','19944').
0.68618940391::trusts('8085','8094').
0.1::trusts('12232','1860').
0.1::trusts('1527','1860').
0.19::trusts('1527','1884').
0.1::trusts('55854','3106').

person('1953').
person('12232').
person('1527').
person('12233').
person('21209').
person('12237').
person('26178').
person('22754').
person('20496').
person('8085').
person('55854').
person('20990').
person('19944').
person('8094').
person('1860').
person('1884').
person('3106').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1953')).
query(buys('12232')).
query(buys('1527')).
query(buys('12233')).
query(buys('21209')).
query(buys('12237')).
query(buys('26178')).
query(buys('22754')).
query(buys('20496')).
query(buys('8085')).
query(buys('55854')).
query(buys('20990')).
query(buys('19944')).
query(buys('8094')).
query(buys('1860')).
query(buys('1884')).
query(buys('3106')).
