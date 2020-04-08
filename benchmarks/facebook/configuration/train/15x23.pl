10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('5086','16290').
0.3439::trusts('5206','16290').
0.1::trusts('6160','16290').
0.3439::trusts('22404','16290').
0.1::trusts('20562','16290').
0.19::trusts('29425','16290').
0.56953279::trusts('16290','5206').
0.56953279::trusts('3401','5206').
0.19::trusts('16290','6160').
0.1::trusts('20562','6160').
0.19::trusts('18259','6160').
0.19::trusts('16290','29425').
0.1::trusts('5086','29425').
0.19::trusts('6160','18259').
0.19::trusts('16290','25853').
0.1::trusts('5086','25853').
0.1::trusts('22404','25853').
0.271::trusts('5086','20560').
0.1::trusts('25853','20560').
0.1::trusts('30428','20560').
0.1::trusts('35585','30428').
0.1::trusts('30428','35585').
0.1::trusts('5086','23097').
0.1::trusts('22404','23097').
0.1::trusts('5206','35434').

person('16290').
person('5086').
person('5206').
person('6160').
person('22404').
person('20562').
person('29425').
person('3401').
person('18259').
person('25853').
person('20560').
person('30428').
person('35585').
person('23097').
person('35434').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('16290')).
query(buys('5086')).
query(buys('5206')).
query(buys('6160')).
query(buys('22404')).
query(buys('20562')).
query(buys('29425')).
query(buys('3401')).
query(buys('18259')).
query(buys('25853')).
query(buys('20560')).
query(buys('30428')).
query(buys('35585')).
query(buys('23097')).
query(buys('35434')).
