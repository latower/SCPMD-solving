10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('4807','6192').
0.19::trusts('6185','6192').
0.1::trusts('6199','6192').
0.1::trusts('6192','4807').
0.3439::trusts('4549','4807').
0.19::trusts('6154','4807').
0.1::trusts('19816','4807').
0.1::trusts('6199','4807').
0.19::trusts('6192','6185').
0.271::trusts('4549','6185').
0.40951::trusts('6154','6185').
0.468559::trusts('6230','6185').
0.19::trusts('12873','6185').
0.1::trusts('4549','6199').
0.1::trusts('6185','6199').
0.271::trusts('4549','6154').
0.1::trusts('4807','6154').
0.271::trusts('6185','6154').
0.40951::trusts('6230','6154').
0.19::trusts('6154','6230').
0.19::trusts('6185','6230').
0.1::trusts('60135','6230').
0.271::trusts('63567','6230').
0.1::trusts('4807','19816').
0.271::trusts('35998','19816').
0.1::trusts('6185','12873').
0.271::trusts('6230','60135').
0.271::trusts('6230','63567').
0.19::trusts('19816','35998').
0.1::trusts('4807','35463').
0.1::trusts('35166','35463').
0.271::trusts('35166','20273').
0.1::trusts('6199','60332').

person('6192').
person('4807').
person('6185').
person('6199').
person('6154').
person('4549').
person('6230').
person('19816').
person('12873').
person('60135').
person('63567').
person('35998').
person('35463').
person('35166').
person('20273').
person('60332').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6192')).
query(buys('4807')).
query(buys('6185')).
query(buys('6199')).
query(buys('6154')).
query(buys('4549')).
query(buys('6230')).
query(buys('19816')).
query(buys('12873')).
query(buys('60135')).
query(buys('63567')).
query(buys('35998')).
query(buys('35463')).
query(buys('35166')).
query(buys('20273')).
query(buys('60332')).
