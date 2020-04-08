10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('4581','5626').
0.19::trusts('1718','5626').
0.271::trusts('5633','5626').
0.1::trusts('5626','1718').
0.19::trusts('4581','1718').
0.1::trusts('5627','1718').
0.1::trusts('21107','1718').
0.1::trusts('17272','1718').
0.1::trusts('1718','5627').
0.1::trusts('1718','21107').
0.1::trusts('1718','17272').
0.1::trusts('47272','17272').
0.1::trusts('47673','17272').
0.1::trusts('47272','47673').
0.1::trusts('25629','47673').
0.1::trusts('58976','47673').
0.1::trusts('17272','25629').
0.1::trusts('47272','25629').
0.1::trusts('47673','25629').
0.1::trusts('17277','25629').
0.1::trusts('47673','58976').
0.1::trusts('25629','17277').
0.271::trusts('5633','48417').
0.1::trusts('47861','48417').
0.19::trusts('48417','47861').
0.1::trusts('51759','47861').

person('5626').
person('4581').
person('1718').
person('5633').
person('5627').
person('21107').
person('17272').
person('47272').
person('47673').
person('25629').
person('58976').
person('17277').
person('48417').
person('47861').
person('51759').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5626')).
query(buys('4581')).
query(buys('1718')).
query(buys('5633')).
query(buys('5627')).
query(buys('21107')).
query(buys('17272')).
query(buys('47272')).
query(buys('47673')).
query(buys('25629')).
query(buys('58976')).
query(buys('17277')).
query(buys('48417')).
query(buys('47861')).
query(buys('51759')).
