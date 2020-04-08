10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('12948','4755').
0.19::trusts('4755','12948').
0.19::trusts('14007','12948').
0.19::trusts('27897','12948').
0.1::trusts('27360','12948').
0.3439::trusts('27364','12948').
0.19::trusts('27367','12948').
0.1::trusts('34375','21093').
0.271::trusts('14007','21093').
0.19::trusts('21540','21093').
0.468559::trusts('21093','14007').
0.1::trusts('21540','14007').
0.271::trusts('27897','14007').
0.3439::trusts('12948','14007').
0.19::trusts('21093','21540').
0.1::trusts('30793','21540').
0.271::trusts('14007','27897').
0.19::trusts('12948','27897').
0.1::trusts('31803','27897').
0.19::trusts('27897','31803').
0.3439::trusts('12948','27360').
0.40951::trusts('12948','27364').
0.1::trusts('27367','27364').
0.271::trusts('12948','27367').
0.985219117058565::trusts('34375','39886').
0.1::trusts('23464','39886').
0.40951::trusts('34375','23464').
0.1::trusts('27897','50817').

person('4755').
person('12948').
person('21093').
person('34375').
person('14007').
person('21540').
person('27897').
person('30793').
person('31803').
person('27360').
person('27364').
person('27367').
person('39886').
person('23464').
person('50817').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4755')).
query(buys('12948')).
query(buys('21093')).
query(buys('34375')).
query(buys('14007')).
query(buys('21540')).
query(buys('27897')).
query(buys('30793')).
query(buys('31803')).
query(buys('27360')).
query(buys('27364')).
query(buys('27367')).
query(buys('39886')).
query(buys('23464')).
query(buys('50817')).
