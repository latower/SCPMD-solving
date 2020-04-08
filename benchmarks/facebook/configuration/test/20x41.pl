10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('23984','23982').
0.19::trusts('25173','23982').
0.1::trusts('48236','23982').
0.1::trusts('23982','23984').
0.1::trusts('23982','25173').
0.19::trusts('25164','25173').
0.468559::trusts('27361','25173').
0.468559::trusts('27363','25173').
0.468559::trusts('43406','25173').
0.1::trusts('34013','25173').
0.1::trusts('23982','48236').
0.1::trusts('25173','25164').
0.1::trusts('40307','25164').
0.19::trusts('27361','27771').
0.40951::trusts('27365','27771').
0.1::trusts('34307','27771').
0.1::trusts('27771','27361').
0.3439::trusts('25173','27361').
0.40951::trusts('27363','27361').
0.19::trusts('27365','27361').
0.19::trusts('26854','27361').
0.271::trusts('27771','27365').
0.271::trusts('27361','27365').
0.19::trusts('27771','34307').
0.1::trusts('23982','27363').
0.271::trusts('25173','27363').
0.40951::trusts('27361','27363').
0.3439::trusts('43406','27363').
0.5217031::trusts('25173','43406').
0.19::trusts('27363','43406').
0.1::trusts('27361','26854').
0.19::trusts('27359','26854').
0.1::trusts('27363','27359').
0.1::trusts('26854','27359').
0.19::trusts('4449','27359').
0.271::trusts('27359','4449').
0.1::trusts('34013','34016').
0.19::trusts('23982','23990').
0.271::trusts('23984','23990').
0.1::trusts('25173','39102').
0.1::trusts('27771','34304').

person('23982').
person('23984').
person('25173').
person('48236').
person('25164').
person('40307').
person('27771').
person('27361').
person('27365').
person('34307').
person('27363').
person('43406').
person('34013').
person('26854').
person('27359').
person('4449').
person('34016').
person('23990').
person('39102').
person('34304').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23982')).
query(buys('23984')).
query(buys('25173')).
query(buys('48236')).
query(buys('25164')).
query(buys('40307')).
query(buys('27771')).
query(buys('27361')).
query(buys('27365')).
query(buys('34307')).
query(buys('27363')).
query(buys('43406')).
query(buys('34013')).
query(buys('26854')).
query(buys('27359')).
query(buys('4449')).
query(buys('34016')).
query(buys('23990')).
query(buys('39102')).
query(buys('34304')).
