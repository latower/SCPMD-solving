10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('5789','1481').
0.468559::trusts('6048','1481').
0.1::trusts('4768','1481').
0.19::trusts('7284','1481').
0.1::trusts('7615','1481').
0.271::trusts('4213','5789').
0.1::trusts('3774','5789').
0.999436079126604::trusts('5777','5789').
0.271::trusts('6988','5789').
0.271::trusts('11376','5789').
0.40951::trusts('1481','6048').
0.3439::trusts('7284','6048').
0.1::trusts('6047','6048').
0.833228183003334::trusts('1481','4768').
0.19::trusts('1481','7284').
0.19::trusts('6048','7284').
0.19::trusts('6086','7284').
0.1::trusts('5777','7284').
0.1::trusts('4213','3774').
0.997781468765538::trusts('5789','5777').
0.1::trusts('7284','5777').
0.19::trusts('5789','11376').
0.1::trusts('6048','6047').
0.68618940391::trusts('6050','6047').
0.1::trusts('15206','6047').
0.1::trusts('7284','6086').
0.271::trusts('6090','6086').
0.612579511::trusts('6047','6050').
0.1::trusts('6047','15206').
0.19::trusts('6086','6090').
0.7458134171671::trusts('6988','11159').

person('1481').
person('5789').
person('6048').
person('4768').
person('7284').
person('7615').
person('4213').
person('3774').
person('5777').
person('6988').
person('11376').
person('6047').
person('6086').
person('6050').
person('15206').
person('6090').
person('11159').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1481')).
query(buys('5789')).
query(buys('6048')).
query(buys('4768')).
query(buys('7284')).
query(buys('7615')).
query(buys('4213')).
query(buys('3774')).
query(buys('5777')).
query(buys('6988')).
query(buys('11376')).
query(buys('6047')).
query(buys('6086')).
query(buys('6050')).
query(buys('15206')).
query(buys('6090')).
query(buys('11159')).
