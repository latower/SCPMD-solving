10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('7649','1791').
0.1::trusts('16983','1791').
0.1::trusts('1348','1791').
0.19::trusts('16984','1791').
0.271::trusts('1791','16983').
0.271::trusts('1348','16983').
0.1::trusts('27829','16983').
0.468559::trusts('1791','1348').
0.40951::trusts('16983','1348').
0.1::trusts('16981','1348').
0.1::trusts('1346','1348').
0.271::trusts('1791','16984').
0.1::trusts('46325','16984').
0.1::trusts('54052','16984').
0.19::trusts('16983','27829').
0.19::trusts('21646','27829').
0.1::trusts('1791','16981').
0.1::trusts('1348','16981').
0.19::trusts('1348','1346').
0.1::trusts('16984','46325').
0.19::trusts('16984','54052').
0.1::trusts('33878','21646').
0.1::trusts('27829','21646').
0.1::trusts('21646','33878').
0.1::trusts('46325','57260').
0.19::trusts('46325','46573').
0.1::trusts('16984','1526').
0.1::trusts('18022','1526').
0.1::trusts('1526','18022').

person('1791').
person('7649').
person('16983').
person('1348').
person('16984').
person('27829').
person('16981').
person('1346').
person('46325').
person('54052').
person('21646').
person('33878').
person('57260').
person('46573').
person('1526').
person('18022').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1791')).
query(buys('7649')).
query(buys('16983')).
query(buys('1348')).
query(buys('16984')).
query(buys('27829')).
query(buys('16981')).
query(buys('1346')).
query(buys('46325')).
query(buys('54052')).
query(buys('21646')).
query(buys('33878')).
query(buys('57260')).
query(buys('46573')).
query(buys('1526')).
query(buys('18022')).
