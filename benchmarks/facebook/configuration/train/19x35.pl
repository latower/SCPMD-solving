10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('3326','3252').
0.271::trusts('648','3252').
0.19::trusts('14806','3252').
0.1::trusts('15524','3252').
0.19::trusts('3500','3252').
0.68618940391::trusts('3252','3326').
0.1::trusts('14806','3326').
0.1::trusts('15524','3326').
0.271::trusts('3252','648').
0.1::trusts('15524','14806').
0.468559::trusts('15520','14806').
0.77123207545039::trusts('12835','14806').
0.19::trusts('27896','14806').
0.271::trusts('3252','15524').
0.1::trusts('3326','15524').
0.1::trusts('14806','15524').
0.19::trusts('28006','15524').
0.19::trusts('3252','3500').
0.1::trusts('18909','3500').
0.1::trusts('32775','3500').
0.271::trusts('14806','15520').
0.19::trusts('12835','15520').
0.1::trusts('32750','15520').
0.612579511::trusts('14806','12835').
0.1::trusts('15520','12835').
0.1::trusts('3171','12835').
0.19::trusts('15524','28006').
0.3439::trusts('28005','28006').
0.1::trusts('3500','18909').
0.271::trusts('3252','16922').
0.1::trusts('15520','32750').
0.5217031::trusts('28006','28005').
0.1::trusts('3252','14375').
0.1::trusts('648','32879').
0.1::trusts('32879','40648').

person('3252').
person('3326').
person('648').
person('14806').
person('15524').
person('3500').
person('15520').
person('12835').
person('27896').
person('28006').
person('18909').
person('32775').
person('16922').
person('32750').
person('3171').
person('28005').
person('14375').
person('32879').
person('40648').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3252')).
query(buys('3326')).
query(buys('648')).
query(buys('14806')).
query(buys('15524')).
query(buys('3500')).
query(buys('15520')).
query(buys('12835')).
query(buys('27896')).
query(buys('28006')).
query(buys('18909')).
query(buys('32775')).
query(buys('16922')).
query(buys('32750')).
query(buys('3171')).
query(buys('28005')).
query(buys('14375')).
query(buys('32879')).
query(buys('40648')).
