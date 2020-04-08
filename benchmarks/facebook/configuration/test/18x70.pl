10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('15322','22664').
0.1::trusts('28903','22664').
0.19::trusts('22664','28903').
0.271::trusts('27624','28903').
0.3439::trusts('10916','27624').
0.19::trusts('28903','27624').
0.19::trusts('8680','27624').
0.19::trusts('14675','27624').
0.1::trusts('30272','27624').
0.1::trusts('39761','27624').
0.40951::trusts('27624','10916').
0.19::trusts('27624','8680').
0.3439::trusts('27624','14675').
0.19::trusts('27624','30272').
0.19::trusts('27624','39761').
0.3439::trusts('27624','22910').
0.19::trusts('40836','22910').
0.1::trusts('10916','22443').
0.1::trusts('8680','15602').
0.1::trusts('27624','15778').
0.1::trusts('13183','15778').
0.1::trusts('27624','39765').
0.1::trusts('40836','63689').
0.1::trusts('27624','39764').

person('22664').
person('15322').
person('28903').
person('27624').
person('10916').
person('8680').
person('14675').
person('30272').
person('39761').
person('22910').
person('40836').
person('22443').
person('15602').
person('15778').
person('13183').
person('39765').
person('63689').
person('39764').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22664')).
query(buys('15322')).
query(buys('28903')).
query(buys('27624')).
query(buys('10916')).
query(buys('8680')).
query(buys('14675')).
query(buys('30272')).
query(buys('39761')).
query(buys('22910')).
query(buys('40836')).
query(buys('22443')).
query(buys('15602')).
query(buys('15778')).
query(buys('13183')).
query(buys('39765')).
query(buys('63689')).
query(buys('39764')).
