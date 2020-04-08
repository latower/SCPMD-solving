10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6843','2923').
0.19::trusts('1987','2923').
0.1::trusts('15017','2923').
0.1::trusts('2923','6843').
0.56953279::trusts('9369','6843').
0.271::trusts('1987','6843').
0.1::trusts('15017','6843').
0.3439::trusts('2923','1987').
0.1::trusts('6843','1987').
0.1::trusts('9369','1987').
0.1::trusts('15950','1987').
0.1::trusts('2923','15017').
0.19::trusts('6843','9369').
0.6513215599::trusts('23602','9369').
0.1::trusts('1987','9369').
0.1::trusts('19424','9369').
0.1::trusts('17037','9369').
0.1::trusts('23992','9369').
0.7458134171671::trusts('9369','23602').
0.19::trusts('3781','23602').
0.40951::trusts('2903','23602').
0.5217031::trusts('9369','19424').
0.1::trusts('9369','17037').
0.1::trusts('9369','23992').
0.468559::trusts('23602','2903').
0.1::trusts('1987','15950').
0.1::trusts('9369','5252').
0.1::trusts('25602','5252').
0.1::trusts('1987','3058').

person('2923').
person('6843').
person('1987').
person('15017').
person('9369').
person('23602').
person('19424').
person('17037').
person('23992').
person('3781').
person('2903').
person('15950').
person('5252').
person('25602').
person('3058').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2923')).
query(buys('6843')).
query(buys('1987')).
query(buys('15017')).
query(buys('9369')).
query(buys('23602')).
query(buys('19424')).
query(buys('17037')).
query(buys('23992')).
query(buys('3781')).
query(buys('2903')).
query(buys('15950')).
query(buys('5252')).
query(buys('25602')).
query(buys('3058')).
