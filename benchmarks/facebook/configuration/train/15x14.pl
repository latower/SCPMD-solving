10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('28675','23182').
0.19::trusts('23182','28675').
0.271::trusts('33834','28675').
0.271::trusts('25162','28675').
0.19::trusts('28675','33834').
0.19::trusts('25162','33834').
0.1::trusts('26074','33834').
0.271::trusts('28675','25162').
0.19::trusts('33834','25162').
0.1::trusts('33825','25162').
0.19::trusts('33834','26074').
0.19::trusts('25162','33825').
0.19::trusts('23182','34014').
0.19::trusts('33825','42050').
0.1::trusts('25162','25167').
0.1::trusts('13777','25167').
0.1::trusts('34115','13777').
0.1::trusts('26074','44502').
0.1::trusts('33834','16271').
0.1::trusts('16270','16271').
0.1::trusts('26074','59255').

person('23182').
person('28675').
person('33834').
person('25162').
person('26074').
person('33825').
person('34014').
person('42050').
person('25167').
person('13777').
person('34115').
person('44502').
person('16271').
person('16270').
person('59255').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23182')).
query(buys('28675')).
query(buys('33834')).
query(buys('25162')).
query(buys('26074')).
query(buys('33825')).
query(buys('34014')).
query(buys('42050')).
query(buys('25167')).
query(buys('13777')).
query(buys('34115')).
query(buys('44502')).
query(buys('16271')).
query(buys('16270')).
query(buys('59255')).
