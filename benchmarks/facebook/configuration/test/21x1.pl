10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('30881','6456').
0.19::trusts('48293','6456').
0.1::trusts('53032','6456').
0.1::trusts('6456','30881').
0.1::trusts('6456','48293').
0.1::trusts('6456','53032').
0.1::trusts('12776','53032').
0.1::trusts('53032','12776').
0.1::trusts('2803','12776').
0.19::trusts('2803','9626').
0.1::trusts('22224','9626').
0.1::trusts('9626','2803').
0.1::trusts('12776','2803').
0.1::trusts('21963','2803').
0.271::trusts('9626','22224').
0.1::trusts('19282','22224').
0.1::trusts('2803','21963').
0.19::trusts('11685','21963').
0.1::trusts('9626','18952').
0.1::trusts('18484','18952').
0.1::trusts('50408','18952').
0.1::trusts('21963','11685').
0.1::trusts('12105','11685').
0.3439::trusts('11685','12105').
0.1::trusts('15250','12105').
0.1::trusts('22224','19282').
0.19::trusts('15250','12104').
0.1::trusts('22224','58278').
0.1::trusts('19282','54581').
0.19::trusts('55268','63634').
0.1::trusts('30881','55268').

person('6456').
person('30881').
person('48293').
person('53032').
person('12776').
person('9626').
person('2803').
person('22224').
person('21963').
person('18952').
person('18484').
person('50408').
person('11685').
person('12105').
person('19282').
person('15250').
person('12104').
person('58278').
person('54581').
person('63634').
person('55268').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6456')).
query(buys('30881')).
query(buys('48293')).
query(buys('53032')).
query(buys('12776')).
query(buys('9626')).
query(buys('2803')).
query(buys('22224')).
query(buys('21963')).
query(buys('18952')).
query(buys('18484')).
query(buys('50408')).
query(buys('11685')).
query(buys('12105')).
query(buys('19282')).
query(buys('15250')).
query(buys('12104')).
query(buys('58278')).
query(buys('54581')).
query(buys('63634')).
query(buys('55268')).
