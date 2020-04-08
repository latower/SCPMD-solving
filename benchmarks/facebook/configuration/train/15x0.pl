10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('11573','5641').
0.19::trusts('5641','11573').
0.1::trusts('6634','11573').
0.19::trusts('11573','6634').
0.1::trusts('20188','6634').
0.1::trusts('44267','6634').
0.1::trusts('6634','20188').
0.1::trusts('30146','20188').
0.271::trusts('20188','30146').
0.1::trusts('30144','30146').
0.1::trusts('11573','21269').
0.1::trusts('23913','21269').
0.19::trusts('28729','30144').
0.1::trusts('57037','30144').
0.271::trusts('30144','28729').
0.1::trusts('30146','28729').
0.1::trusts('30144','57037').
0.1::trusts('59162','57037').
0.1::trusts('57037','59162').
0.19::trusts('20188','47079').
0.1::trusts('14561','47079').
0.1::trusts('44267','50956').

person('5641').
person('11573').
person('6634').
person('20188').
person('30146').
person('21269').
person('23913').
person('44267').
person('30144').
person('28729').
person('57037').
person('59162').
person('47079').
person('14561').
person('50956').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5641')).
query(buys('11573')).
query(buys('6634')).
query(buys('20188')).
query(buys('30146')).
query(buys('21269')).
query(buys('23913')).
query(buys('44267')).
query(buys('30144')).
query(buys('28729')).
query(buys('57037')).
query(buys('59162')).
query(buys('47079')).
query(buys('14561')).
query(buys('50956')).
