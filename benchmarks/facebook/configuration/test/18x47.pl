10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.911370618803475::trusts('22965','19071').
0.271::trusts('27603','19071').
0.1::trusts('18500','19071').
0.5217031::trusts('19071','22965').
0.5217031::trusts('19082','22965').
0.1::trusts('49162','22965').
0.3439::trusts('19071','27603').
0.864914828232701::trusts('22965','19082').
0.1::trusts('22965','49162').
0.1::trusts('49303','49162').
0.3439::trusts('56816','49162').
0.1::trusts('49162','49303').
0.1::trusts('54258','49303').
0.1::trusts('50548','49303').
0.3439::trusts('49162','56816').
0.19::trusts('49303','54258').
0.19::trusts('22965','58196').
0.1::trusts('19071','55861').
0.1::trusts('22965','55861').
0.1::trusts('22965','50621').
0.1::trusts('54258','52524').
0.1::trusts('49303','63297').
0.1::trusts('49303','21649').
0.1::trusts('21649','39670').
0.1::trusts('39669','39670').

person('19071').
person('22965').
person('27603').
person('18500').
person('19082').
person('49162').
person('49303').
person('56816').
person('54258').
person('50548').
person('58196').
person('55861').
person('50621').
person('52524').
person('63297').
person('21649').
person('39670').
person('39669').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('19071')).
query(buys('22965')).
query(buys('27603')).
query(buys('18500')).
query(buys('19082')).
query(buys('49162')).
query(buys('49303')).
query(buys('56816')).
query(buys('54258')).
query(buys('50548')).
query(buys('58196')).
query(buys('55861')).
query(buys('50621')).
query(buys('52524')).
query(buys('63297')).
query(buys('21649')).
query(buys('39670')).
query(buys('39669')).
