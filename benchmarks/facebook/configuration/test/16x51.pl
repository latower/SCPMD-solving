10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6850','13772').
0.1::trusts('13772','6850').
0.19::trusts('964','6850').
0.3439::trusts('21550','6850').
0.1::trusts('27711','6850').
0.271::trusts('964','2028').
0.19::trusts('2028','964').
0.1::trusts('5217','964').
0.40951::trusts('4052','964').
0.3439::trusts('13863','964').
0.1::trusts('6850','964').
0.1::trusts('2025','964').
0.1::trusts('964','5217').
0.56953279::trusts('964','4052').
0.1::trusts('21172','4052').
0.19::trusts('964','13863').
0.1::trusts('22139','13863').
0.271::trusts('7971','13863').
0.19::trusts('34302','13863').
0.271::trusts('4052','21172').
0.3439::trusts('13813','21172').
0.19::trusts('13863','22139').
0.19::trusts('13863','7971').
0.920233556923127::trusts('18234','7971').
0.19::trusts('13863','34302').
0.1::trusts('6850','21550').
0.19::trusts('27711','21550').
0.19::trusts('21172','13813').
0.40951::trusts('18234','13813').
0.969096845617367::trusts('7971','18234').
0.19::trusts('13813','18234').

person('13772').
person('6850').
person('2028').
person('964').
person('5217').
person('4052').
person('13863').
person('2025').
person('21172').
person('22139').
person('7971').
person('34302').
person('21550').
person('27711').
person('13813').
person('18234').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13772')).
query(buys('6850')).
query(buys('2028')).
query(buys('964')).
query(buys('5217')).
query(buys('4052')).
query(buys('13863')).
query(buys('2025')).
query(buys('21172')).
query(buys('22139')).
query(buys('7971')).
query(buys('34302')).
query(buys('21550')).
query(buys('27711')).
query(buys('13813')).
query(buys('18234')).
