10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('55893','197').
0.1::trusts('56570','197').
0.3439::trusts('202','197').
0.1::trusts('11700','197').
0.1::trusts('197','55893').
0.3439::trusts('197','202').
0.1::trusts('197','11700').
0.1::trusts('47','11700').
0.1::trusts('47','829').
0.1::trusts('2403','47').
0.1::trusts('829','47').
0.19::trusts('50304','47').
0.1::trusts('46770','47').
0.1::trusts('47','50304').
0.19::trusts('50303','50304').
0.19::trusts('47','46770').
0.1::trusts('44252','46770').
0.3439::trusts('50304','50303').
0.1::trusts('46770','44252').
0.1::trusts('39478','44252').
0.1::trusts('39478','25732').
0.1::trusts('47','44247').

person('197').
person('55893').
person('56570').
person('202').
person('11700').
person('829').
person('47').
person('2403').
person('50304').
person('46770').
person('50303').
person('44252').
person('39478').
person('25732').
person('44247').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('197')).
query(buys('55893')).
query(buys('56570')).
query(buys('202')).
query(buys('11700')).
query(buys('829')).
query(buys('47')).
query(buys('2403')).
query(buys('50304')).
query(buys('46770')).
query(buys('50303')).
query(buys('44252')).
query(buys('39478')).
query(buys('25732')).
query(buys('44247')).
