10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.5217031::trusts('22808','23576').
0.1::trusts('22058','23576').
0.1::trusts('23576','22058').
0.1::trusts('22808','22058').
0.3439::trusts('25193','49903').
0.3439::trusts('50507','49903').
0.19::trusts('53082','49903').
0.271::trusts('58277','49903').
0.1::trusts('23576','25193').
0.1::trusts('22808','25193').
0.40951::trusts('49903','25193').
0.19::trusts('26734','25193').
0.1::trusts('53082','25193').
0.1::trusts('38293','25193').
0.19::trusts('57538','25193').
0.271::trusts('49903','50507').
0.1::trusts('26734','50507').
0.1::trusts('49903','53082').
0.1::trusts('25193','53082').
0.19::trusts('26734','53082').
0.1::trusts('50507','53082').
0.19::trusts('40933','53082').
0.1::trusts('49903','58277').
0.1::trusts('23576','38293').
0.19::trusts('22808','38293').
0.1::trusts('25193','38293').
0.271::trusts('22808','57538').
0.19::trusts('53082','40933').
0.1::trusts('63015','8467').
0.1::trusts('26734','63015').
0.1::trusts('26734','60360').

person('23576').
person('22808').
person('22058').
person('49903').
person('25193').
person('50507').
person('53082').
person('58277').
person('26734').
person('38293').
person('57538').
person('40933').
person('8467').
person('63015').
person('60360').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23576')).
query(buys('22808')).
query(buys('22058')).
query(buys('49903')).
query(buys('25193')).
query(buys('50507')).
query(buys('53082')).
query(buys('58277')).
query(buys('26734')).
query(buys('38293')).
query(buys('57538')).
query(buys('40933')).
query(buys('8467')).
query(buys('63015')).
query(buys('60360')).
