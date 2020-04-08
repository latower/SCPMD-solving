10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('12414','5424').
0.3439::trusts('19207','5424').
0.1::trusts('29969','5424').
0.271::trusts('29928','5424').
0.1::trusts('15845','5424').
0.40951::trusts('31868','5424').
0.1::trusts('13533','5424').
0.1::trusts('31877','5424').
0.19::trusts('20922','5424').
0.19::trusts('31865','5424').
0.1::trusts('5424','12414').
0.1::trusts('9935','12414').
0.468559::trusts('5424','19207').
0.19::trusts('30340','19207').
0.19::trusts('16213','19207').
0.19::trusts('5424','29969').
0.40951::trusts('5424','29928').
0.1::trusts('5424','15845').
0.1::trusts('14071','15845').
0.19::trusts('40640','15845').
0.56953279::trusts('5424','31868').
0.1::trusts('5424','13533').
0.1::trusts('5424','31877').
0.19::trusts('5424','20922').
0.19::trusts('5424','31865').
0.19::trusts('12414','9935').
0.271::trusts('19207','16213').
0.1::trusts('15845','14071').
0.271::trusts('15845','40640').
0.19::trusts('19207','31194').
0.1::trusts('14071','40342').

person('5424').
person('12414').
person('19207').
person('29969').
person('29928').
person('15845').
person('31868').
person('13533').
person('31877').
person('20922').
person('31865').
person('9935').
person('30340').
person('16213').
person('14071').
person('40640').
person('31194').
person('40342').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5424')).
query(buys('12414')).
query(buys('19207')).
query(buys('29969')).
query(buys('29928')).
query(buys('15845')).
query(buys('31868')).
query(buys('13533')).
query(buys('31877')).
query(buys('20922')).
query(buys('31865')).
query(buys('9935')).
query(buys('30340')).
query(buys('16213')).
query(buys('14071')).
query(buys('40640')).
query(buys('31194')).
query(buys('40342')).
