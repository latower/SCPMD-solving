10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('2043','2040').
0.1::trusts('1772','2040').
0.1::trusts('7059','2040').
0.814697981114816::trusts('2040','2043').
0.1::trusts('18871','2043').
0.1::trusts('13691','2043').
0.56953279::trusts('1772','2043').
0.1::trusts('2040','1772').
0.40951::trusts('2043','1772').
0.19::trusts('1467','1772').
0.19::trusts('2040','7059').
0.1::trusts('19982','7059').
0.1::trusts('31520','7059').
0.1::trusts('2043','18871').
0.271::trusts('2043','13691').
0.271::trusts('32996','13691').
0.1::trusts('9961','13691').
0.19::trusts('13691','32996').
0.1::trusts('1772','1467').
0.1::trusts('7059','31520').
0.19::trusts('32008','51743').
0.1::trusts('2040','32008').
0.1::trusts('43783','32008').
0.5217031::trusts('51743','32008').
0.1::trusts('2040','6033').
0.1::trusts('13691','33667').
0.1::trusts('7059','31519').
0.1::trusts('2040','15976').
0.1::trusts('13691','37920').

person('2040').
person('2043').
person('1772').
person('7059').
person('18871').
person('13691').
person('32996').
person('9961').
person('1467').
person('19982').
person('31520').
person('51743').
person('32008').
person('43783').
person('6033').
person('33667').
person('31519').
person('15976').
person('37920').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('2040')).
query(buys('2043')).
query(buys('1772')).
query(buys('7059')).
query(buys('18871')).
query(buys('13691')).
query(buys('32996')).
query(buys('9961')).
query(buys('1467')).
query(buys('19982')).
query(buys('31520')).
query(buys('51743')).
query(buys('32008')).
query(buys('43783')).
query(buys('6033')).
query(buys('33667')).
query(buys('31519')).
query(buys('15976')).
query(buys('37920')).
