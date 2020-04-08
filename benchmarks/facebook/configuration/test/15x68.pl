10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.68618940391::trusts('23732','2084').
0.1::trusts('23730','2084').
0.3439::trusts('30912','2084').
0.19::trusts('40607','2084').
0.468559::trusts('2084','23732').
0.952898713027537::trusts('23730','23732').
0.1::trusts('1472','23732').
0.1::trusts('60266','23732').
0.957608841724784::trusts('23732','23730').
0.271::trusts('2084','30912').
0.1::trusts('2084','40607').
0.40951::trusts('57535','29077').
0.3439::trusts('18670','29077').
0.1::trusts('29077','57535').
0.1::trusts('29077','18670').
0.928210201230815::trusts('22651','18670').
0.19::trusts('23732','1472').
0.1::trusts('52129','1472').
0.1::trusts('22651','1472').
0.19::trusts('23732','60266').
0.911370618803475::trusts('18670','22651').
0.1::trusts('1472','22651').
0.1::trusts('1472','52129').
0.1::trusts('2084','16808').
0.19::trusts('23732','17625').
0.1::trusts('23732','54181').

person('2084').
person('23732').
person('23730').
person('30912').
person('40607').
person('29077').
person('57535').
person('18670').
person('1472').
person('60266').
person('22651').
person('52129').
person('16808').
person('17625').
person('54181').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2084')).
query(buys('23732')).
query(buys('23730')).
query(buys('30912')).
query(buys('40607')).
query(buys('29077')).
query(buys('57535')).
query(buys('18670')).
query(buys('1472')).
query(buys('60266')).
query(buys('22651')).
query(buys('52129')).
query(buys('16808')).
query(buys('17625')).
query(buys('54181')).
