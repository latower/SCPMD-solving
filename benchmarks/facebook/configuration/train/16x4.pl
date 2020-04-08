10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('4710','4135').
0.1::trusts('4135','4710').
0.1::trusts('5234','4710').
0.19::trusts('19271','4710').
0.1::trusts('44653','4710').
0.271::trusts('50469','4710').
0.1::trusts('49541','4710').
0.271::trusts('4710','5234').
0.271::trusts('6472','5234').
0.1::trusts('26555','5234').
0.1::trusts('4877','5234').
0.19::trusts('4710','19271').
0.6513215599::trusts('58089','19271').
0.1::trusts('4710','44653').
0.612579511::trusts('4710','50469').
0.19::trusts('54278','50469').
0.1::trusts('4710','49541').
0.1::trusts('3096','6472').
0.1::trusts('5234','6472').
0.1::trusts('6472','3096').
0.40951::trusts('29520','58089').
0.3439::trusts('19271','58089').
0.468559::trusts('58089','29520').
0.1::trusts('5234','26555').
0.468559::trusts('50469','54278').
0.1::trusts('6472','10582').
0.1::trusts('40805','10582').

person('4135').
person('4710').
person('5234').
person('19271').
person('44653').
person('50469').
person('49541').
person('6472').
person('3096').
person('58089').
person('29520').
person('26555').
person('4877').
person('54278').
person('10582').
person('40805').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4135')).
query(buys('4710')).
query(buys('5234')).
query(buys('19271')).
query(buys('44653')).
query(buys('50469')).
query(buys('49541')).
query(buys('6472')).
query(buys('3096')).
query(buys('58089')).
query(buys('29520')).
query(buys('26555')).
query(buys('4877')).
query(buys('54278')).
query(buys('10582')).
query(buys('40805')).
