10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('26691','9260').
0.1::trusts('11774','9260').
0.1::trusts('9254','9260').
0.1::trusts('2214','9260').
0.1::trusts('18030','9260').
0.1::trusts('9260','26691').
0.1::trusts('9260','11774').
0.19::trusts('9260','9254').
0.1::trusts('9260','18030').
0.19::trusts('39323','18030').
0.19::trusts('9260','29159').
0.1::trusts('18030','39323').
0.1::trusts('43559','39323').
0.1::trusts('29747','43559').
0.1::trusts('9260','6630').
0.1::trusts('8708','6630').
0.1::trusts('8708','61493').
0.1::trusts('9254','28357').
0.1::trusts('9260','46854').

person('9260').
person('26691').
person('11774').
person('9254').
person('2214').
person('18030').
person('29159').
person('39323').
person('43559').
person('29747').
person('6630').
person('8708').
person('61493').
person('28357').
person('46854').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9260')).
query(buys('26691')).
query(buys('11774')).
query(buys('9254')).
query(buys('2214')).
query(buys('18030')).
query(buys('29159')).
query(buys('39323')).
query(buys('43559')).
query(buys('29747')).
query(buys('6630')).
query(buys('8708')).
query(buys('61493')).
query(buys('28357')).
query(buys('46854')).
