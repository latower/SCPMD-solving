10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('22868','2816').
0.56953279::trusts('22869','2816').
0.1::trusts('7493','2816').
0.1::trusts('9615','2816').
0.1::trusts('7951','2816').
0.1::trusts('26694','2816').
0.1::trusts('36493','2816').
0.1::trusts('2816','22868').
0.612579511::trusts('22870','22868').
0.6513215599::trusts('22869','22868').
0.19::trusts('28392','22868').
0.1::trusts('22871','22868').
0.56953279::trusts('2816','22869').
0.56953279::trusts('22870','22869').
0.5217031::trusts('22868','22869').
0.19::trusts('2816','9615').
0.1::trusts('50240','9615').
0.1::trusts('2816','7951').
0.40951::trusts('2816','26694').
0.271::trusts('2816','36493').
0.3439::trusts('29087','22870').
0.1::trusts('2219','22870').
0.271::trusts('19173','22870').
0.40951::trusts('22868','22870').
0.468559::trusts('22869','22870').
0.271::trusts('22870','29087').
0.1::trusts('22870','2219').
0.19::trusts('22870','19173').
0.19::trusts('34982','16074').
0.1::trusts('16074','34982').
0.3439::trusts('22871','34982').
0.19::trusts('22868','28392').
0.40951::trusts('22871','28392').
0.19::trusts('28392','22871').
0.19::trusts('34982','22871').
0.1::trusts('50240','13659').
0.1::trusts('2816','50302').

person('2816').
person('22868').
person('22869').
person('7493').
person('9615').
person('7951').
person('26694').
person('36493').
person('22870').
person('29087').
person('2219').
person('19173').
person('16074').
person('34982').
person('28392').
person('22871').
person('50240').
person('13659').
person('50302').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2816')).
query(buys('22868')).
query(buys('22869')).
query(buys('7493')).
query(buys('9615')).
query(buys('7951')).
query(buys('26694')).
query(buys('36493')).
query(buys('22870')).
query(buys('29087')).
query(buys('2219')).
query(buys('19173')).
query(buys('16074')).
query(buys('34982')).
query(buys('28392')).
query(buys('22871')).
query(buys('50240')).
query(buys('13659')).
query(buys('50302')).
