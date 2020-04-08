10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('40843','13973').
0.1::trusts('13973','40843').
0.19::trusts('50654','40843').
0.1::trusts('11226','40843').
0.3439::trusts('17874','40843').
0.19::trusts('17163','40843').
0.1::trusts('55154','40843').
0.271::trusts('40843','50654').
0.19::trusts('40843','11226').
0.3439::trusts('40843','17874').
0.1::trusts('18069','17874').
0.1::trusts('8051','17874').
0.1::trusts('7730','17874').
0.3439::trusts('40843','17163').
0.19::trusts('20619','17163').
0.1::trusts('18175','18069').
0.19::trusts('17874','18069').
0.1::trusts('18069','18175').
0.1::trusts('18506','18175').
0.1::trusts('17874','8051').
0.271::trusts('17163','20619').
0.19::trusts('13973','23516').
0.1::trusts('18069','11412').

person('13973').
person('40843').
person('50654').
person('11226').
person('17874').
person('17163').
person('55154').
person('18069').
person('18175').
person('8051').
person('18506').
person('7730').
person('20619').
person('23516').
person('11412').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13973')).
query(buys('40843')).
query(buys('50654')).
query(buys('11226')).
query(buys('17874')).
query(buys('17163')).
query(buys('55154')).
query(buys('18069')).
query(buys('18175')).
query(buys('8051')).
query(buys('18506')).
query(buys('7730')).
query(buys('20619')).
query(buys('23516')).
query(buys('11412')).
