10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('2250','4958').
0.1::trusts('6247','4958').
0.271::trusts('5533','4958').
0.1::trusts('5901','4958').
0.1::trusts('6250','4958').
0.271::trusts('4958','2250').
0.40951::trusts('6247','2250').
0.1::trusts('4958','6247').
0.68618940391::trusts('2250','6247').
0.1::trusts('1081','6247').
0.3439::trusts('4958','5533').
0.1::trusts('5248','5533').
0.271::trusts('4958','5901').
0.1::trusts('4958','6250').
0.1::trusts('5538','5248').
0.1::trusts('5533','5248').
0.19::trusts('6247','1081').
0.1::trusts('1236','1081').
0.1::trusts('1081','1236').
0.468559::trusts('13609','1236').
0.1::trusts('35','1236').
0.40951::trusts('13999','13284').
0.890581010868488::trusts('13284','13999').
0.271::trusts('13610','13999').
0.56953279::trusts('1236','13609').
0.468559::trusts('13610','13609').
0.56953279::trusts('13611','13609').
0.1::trusts('1236','35').
0.1::trusts('13999','13610').
0.19::trusts('13609','13610').
0.40951::trusts('13609','13611').
0.1::trusts('6247','10876').

person('4958').
person('2250').
person('6247').
person('5533').
person('5901').
person('6250').
person('5248').
person('5538').
person('1081').
person('1236').
person('13284').
person('13999').
person('13609').
person('35').
person('13610').
person('13611').
person('10876').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4958')).
query(buys('2250')).
query(buys('6247')).
query(buys('5533')).
query(buys('5901')).
query(buys('6250')).
query(buys('5248')).
query(buys('5538')).
query(buys('1081')).
query(buys('1236')).
query(buys('13284')).
query(buys('13999')).
query(buys('13609')).
query(buys('35')).
query(buys('13610')).
query(buys('13611')).
query(buys('10876')).
