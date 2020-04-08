10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('951','953').
0.901522909781639::trusts('1398','953').
0.40951::trusts('957','953').
0.3439::trusts('27179','953').
0.1::trusts('27182','953').
0.717570463519::trusts('953','1398').
0.271::trusts('951','1398').
0.468559::trusts('27179','1398').
0.19::trusts('27182','1398').
0.1::trusts('14838','1398').
0.1::trusts('26395','1398').
0.271::trusts('953','957').
0.1::trusts('27180','957').
0.40951::trusts('953','27179').
0.468559::trusts('1398','27179').
0.271::trusts('1398','27182').
0.19::trusts('26504','27182').
0.1::trusts('14838','27182').
0.1::trusts('1065','7148').
0.1::trusts('7148','1065').
0.5217031::trusts('1398','1065').
0.1::trusts('27179','1065').
0.1::trusts('51195','1065').
0.271::trusts('1392','1065').
0.19::trusts('1398','14838').
0.1::trusts('27182','14838').
0.19::trusts('1398','26395').
0.19::trusts('957','27180').
0.1::trusts('27182','26504').
0.1::trusts('1398','1392').
0.271::trusts('1065','1392').
0.1::trusts('51195','1392').
0.1::trusts('953','14922').
0.1::trusts('951','14922').
0.1::trusts('951','56279').
0.1::trusts('27182','56760').

person('953').
person('951').
person('1398').
person('957').
person('27179').
person('27182').
person('7148').
person('1065').
person('14838').
person('26395').
person('27180').
person('26504').
person('51195').
person('1392').
person('14922').
person('56279').
person('56760').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('953')).
query(buys('951')).
query(buys('1398')).
query(buys('957')).
query(buys('27179')).
query(buys('27182')).
query(buys('7148')).
query(buys('1065')).
query(buys('14838')).
query(buys('26395')).
query(buys('27180')).
query(buys('26504')).
query(buys('51195')).
query(buys('1392')).
query(buys('14922')).
query(buys('56279')).
query(buys('56760')).
