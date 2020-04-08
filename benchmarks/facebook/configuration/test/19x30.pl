10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.3439::trusts('2975','6852').
0.19::trusts('6837','6852').
0.3439::trusts('6852','2975').
0.1::trusts('6837','2975').
0.1::trusts('6882','2975').
0.468559::trusts('21667','2975').
0.19::trusts('10042','2975').
0.1::trusts('11249','2975').
0.1::trusts('6852','6837').
0.271::trusts('15678','6837').
0.1::trusts('15679','6837').
0.1::trusts('2975','6882').
0.1::trusts('16026','6882').
0.19::trusts('46502','6882').
0.1::trusts('7271','6882').
0.56953279::trusts('2975','21667').
0.1::trusts('2975','11249').
0.3439::trusts('6837','15678').
0.68618940391::trusts('15679','15678').
0.19::trusts('6311','15679').
0.814697981114816::trusts('15678','15679').
0.1::trusts('6882','16026').
0.5217031::trusts('6882','46502').
0.1::trusts('6882','7271').
0.1::trusts('16334','7271').
0.19::trusts('15679','6311').
0.1::trusts('6882','16334').
0.1::trusts('7271','16334').
0.1::trusts('21667','42319').
0.19::trusts('10042','16776').
0.1::trusts('9353','9354').
0.1::trusts('6852','9353').
0.1::trusts('16776','16909').

person('6852').
person('2975').
person('6837').
person('6882').
person('21667').
person('10042').
person('11249').
person('15678').
person('15679').
person('16026').
person('46502').
person('7271').
person('6311').
person('16334').
person('42319').
person('16776').
person('9354').
person('9353').
person('16909').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6852')).
query(buys('2975')).
query(buys('6837')).
query(buys('6882')).
query(buys('21667')).
query(buys('10042')).
query(buys('11249')).
query(buys('15678')).
query(buys('15679')).
query(buys('16026')).
query(buys('46502')).
query(buys('7271')).
query(buys('6311')).
query(buys('16334')).
query(buys('42319')).
query(buys('16776')).
query(buys('9354')).
query(buys('9353')).
query(buys('16909')).
