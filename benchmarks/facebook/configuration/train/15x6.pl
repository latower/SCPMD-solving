10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('51766','5478').
0.1::trusts('5478','51766').
0.19::trusts('50731','51766').
0.1::trusts('54184','24049').
0.19::trusts('54371','24049').
0.271::trusts('50731','24049').
0.19::trusts('47821','24049').
0.1::trusts('58086','24049').
0.1::trusts('24049','54184').
0.1::trusts('24049','54371').
0.1::trusts('54370','54371').
0.19::trusts('22231','54371').
0.3439::trusts('24049','50731').
0.19::trusts('51766','50731').
0.1::trusts('56266','50731').
0.1::trusts('24049','47821').
0.19::trusts('54371','22231').
0.1::trusts('27424','22231').
0.1::trusts('50731','56266').
0.1::trusts('5478','51770').
0.1::trusts('5478','27977').
0.1::trusts('51766','51769').

person('5478').
person('51766').
person('24049').
person('54184').
person('54371').
person('50731').
person('47821').
person('58086').
person('54370').
person('22231').
person('27424').
person('56266').
person('51770').
person('27977').
person('51769').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5478')).
query(buys('51766')).
query(buys('24049')).
query(buys('54184')).
query(buys('54371')).
query(buys('50731')).
query(buys('47821')).
query(buys('58086')).
query(buys('54370')).
query(buys('22231')).
query(buys('27424')).
query(buys('56266')).
query(buys('51770')).
query(buys('27977')).
query(buys('51769')).
