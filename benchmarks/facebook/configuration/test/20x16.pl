10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('53138','9574').
0.1::trusts('55935','9574').
0.1::trusts('51816','9574').
0.1::trusts('55937','9574').
0.271::trusts('45247','9574').
0.19::trusts('9574','53138').
0.3439::trusts('11430','53138').
0.271::trusts('58104','53138').
0.1::trusts('9574','55935').
0.19::trusts('9574','51816').
0.56953279::trusts('51815','51816').
0.40951::trusts('9574','55937').
0.3439::trusts('9574','45247').
0.1::trusts('51815','11433').
0.1::trusts('11433','51815').
0.5217031::trusts('51816','51815').
0.7458134171671::trusts('53138','11430').
0.19::trusts('58104','11430').
0.1::trusts('61768','11430').
0.3439::trusts('53138','58104').
0.1::trusts('11430','58104').
0.1::trusts('53491','58104').
0.1::trusts('11430','61768').
0.271::trusts('54182','61768').
0.1::trusts('9574','55938').
0.1::trusts('58104','53491').
0.271::trusts('61768','54182').
0.19::trusts('9574','53297').
0.19::trusts('11430','52364').
0.19::trusts('9574','55939').
0.19::trusts('11430','58105').
0.1::trusts('45247','19960').
0.1::trusts('11430','59306').

person('9574').
person('53138').
person('55935').
person('51816').
person('55937').
person('45247').
person('11433').
person('51815').
person('11430').
person('58104').
person('61768').
person('55938').
person('53491').
person('54182').
person('53297').
person('52364').
person('55939').
person('58105').
person('19960').
person('59306').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9574')).
query(buys('53138')).
query(buys('55935')).
query(buys('51816')).
query(buys('55937')).
query(buys('45247')).
query(buys('11433')).
query(buys('51815')).
query(buys('11430')).
query(buys('58104')).
query(buys('61768')).
query(buys('55938')).
query(buys('53491')).
query(buys('54182')).
query(buys('53297')).
query(buys('52364')).
query(buys('55939')).
query(buys('58105')).
query(buys('19960')).
query(buys('59306')).
