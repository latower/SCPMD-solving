?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('2413','1985').
0.19::trusts('1985','2413').
0.1::trusts('836','2413').
0.1::trusts('2419','2413').
0.19::trusts('40358','8989').
0.468559::trusts('842','8989').
0.19::trusts('8989','40358').
0.7458134171671::trusts('8989','842').
0.1::trusts('836','842').
0.19::trusts('335','842').
0.1::trusts('51','842').
0.1::trusts('1654','842').
0.1::trusts('2419','836').
0.1::trusts('10597','836').
0.1::trusts('836','2419').
0.1::trusts('836','10597').
0.1::trusts('51','2054').
0.1::trusts('2119','2054').
0.1::trusts('842','51').
0.1::trusts('2054','2119').
0.1::trusts('842','335').
0.19::trusts('52170','335').
0.3439::trusts('335','52170').
0.1::trusts('836','1654').
0.1::trusts('2054','1654').
0.1::trusts('335','4222').
0.1::trusts('51228','4222').
0.1::trusts('2419','5847').
0.1::trusts('335','344').
0.1::trusts('5847','17329').
0.1::trusts('836','10428').

person('1985').
person('2413').
person('8989').
person('40358').
person('842').
person('836').
person('2419').
person('10597').
person('2054').
person('51').
person('2119').
person('335').
person('52170').
person('1654').
person('4222').
person('51228').
person('5847').
person('344').
person('17329').
person('10428').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1985')).
query(buys('344')).
query(buys('51228')).
query(buys('2413')).
query(buys('2054')).
query(buys('836')).
query(buys('335')).
query(buys('40358')).
query(buys('17329')).
query(buys('5847')).
