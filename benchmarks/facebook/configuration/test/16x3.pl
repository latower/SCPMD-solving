10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('8234','8205').
0.19::trusts('9692','8205').
0.1::trusts('20530','8205').
0.271::trusts('8205','9692').
0.19::trusts('20600','9692').
0.1::trusts('49616','9692').
0.1::trusts('50544','9692').
0.1::trusts('8205','20530').
0.271::trusts('29191','9077').
0.19::trusts('9081','9077').
0.19::trusts('9077','29191').
0.3439::trusts('20600','29191').
0.1::trusts('47215','29191').
0.3439::trusts('9077','9081').
0.271::trusts('9692','20600').
0.468559::trusts('29191','20600').
0.19::trusts('41131','20600').
0.1::trusts('20600','41131').
0.1::trusts('29191','47215').
0.1::trusts('9692','6380').
0.1::trusts('9077','23627').
0.19::trusts('9081','48863').
0.1::trusts('8205','28420').
0.1::trusts('9692','28420').

person('8205').
person('8234').
person('9692').
person('20530').
person('9077').
person('29191').
person('9081').
person('20600').
person('49616').
person('50544').
person('41131').
person('47215').
person('6380').
person('23627').
person('48863').
person('28420').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('8205')).
query(buys('8234')).
query(buys('9692')).
query(buys('20530')).
query(buys('9077')).
query(buys('29191')).
query(buys('9081')).
query(buys('20600')).
query(buys('49616')).
query(buys('50544')).
query(buys('41131')).
query(buys('47215')).
query(buys('6380')).
query(buys('23627')).
query(buys('48863')).
query(buys('28420')).
