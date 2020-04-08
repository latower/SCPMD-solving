10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.833228183003334::trusts('301','13112').
0.1::trusts('12729','13112').
0.19::trusts('9460','13112').
0.1::trusts('29787','13112').
0.94185026299696::trusts('13112','301').
0.19::trusts('12729','301').
0.1::trusts('13112','12729').
0.1::trusts('30454','12729').
0.271::trusts('13112','9460').
0.1::trusts('9462','9460').
0.1::trusts('13112','29787').
0.56953279::trusts('17236','7073').
0.19::trusts('25226','7073').
0.1::trusts('17102','7073').
0.1::trusts('17110','7073').
0.40951::trusts('36736','7073').
0.1::trusts('36640','7073').
0.6513215599::trusts('7073','17236').
0.19::trusts('25226','17236').
0.40951::trusts('7073','25226').
0.271::trusts('17236','25226').
0.19::trusts('17110','17102').
0.19::trusts('9462','17102').
0.1::trusts('37059','17102').
0.3439::trusts('17102','17110').
0.1::trusts('27190','17110').
0.40951::trusts('7073','36736').
0.1::trusts('13112','9462').
0.1::trusts('17102','9462').
0.1::trusts('9460','9462').
0.19::trusts('17102','37059').
0.1::trusts('12729','30454').
0.1::trusts('17102','27190').
0.1::trusts('17102','13027').

person('13112').
person('301').
person('12729').
person('9460').
person('29787').
person('7073').
person('17236').
person('25226').
person('17102').
person('17110').
person('36736').
person('36640').
person('9462').
person('37059').
person('30454').
person('27190').
person('13027').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13112')).
query(buys('301')).
query(buys('12729')).
query(buys('9460')).
query(buys('29787')).
query(buys('7073')).
query(buys('17236')).
query(buys('25226')).
query(buys('17102')).
query(buys('17110')).
query(buys('36736')).
query(buys('36640')).
query(buys('9462')).
query(buys('37059')).
query(buys('30454')).
query(buys('27190')).
query(buys('13027')).
