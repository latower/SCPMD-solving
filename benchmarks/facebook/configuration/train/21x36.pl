10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('28421','3903').
0.5217031::trusts('5132','3903').
0.56953279::trusts('32266','3903').
0.271::trusts('9813','3903').
0.3439::trusts('31211','3903').
0.1::trusts('20465','3903').
0.468559::trusts('3903','5132').
0.19::trusts('3894','5132').
0.19::trusts('17234','5132').
0.1::trusts('7929','5132').
0.6513215599::trusts('3903','32266').
0.19::trusts('9208','32266').
0.56953279::trusts('31211','32266').
0.1::trusts('48143','32266').
0.19::trusts('28421','9813').
0.3439::trusts('3903','9813').
0.19::trusts('29151','9813').
0.19::trusts('9805','9813').
0.1::trusts('32413','9813').
0.19::trusts('28421','31211').
0.40951::trusts('3903','31211').
0.612579511::trusts('32266','31211').
0.1::trusts('3894','31211').
0.1::trusts('10526','31211').
0.1::trusts('3903','20465').
0.271::trusts('5132','3894').
0.1::trusts('10526','3894').
0.19::trusts('31211','3894').
0.271::trusts('5132','17234').
0.19::trusts('5132','7929').
0.1::trusts('3903','9208').
0.271::trusts('32266','9208').
0.19::trusts('32266','48143').
0.1::trusts('9813','29151').
0.1::trusts('29151','8660').
0.1::trusts('22315','8660').
0.1::trusts('28421','10526').
0.1::trusts('3894','10526').
0.1::trusts('31211','10526').
0.1::trusts('9813','9805').
0.1::trusts('10526','4327').
0.1::trusts('20465','50423').
0.1::trusts('29151','17126').

person('3903').
person('28421').
person('5132').
person('32266').
person('9813').
person('31211').
person('20465').
person('3894').
person('17234').
person('7929').
person('9208').
person('48143').
person('29151').
person('8660').
person('22315').
person('10526').
person('9805').
person('32413').
person('4327').
person('50423').
person('17126').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3903')).
query(buys('28421')).
query(buys('5132')).
query(buys('32266')).
query(buys('9813')).
query(buys('31211')).
query(buys('20465')).
query(buys('3894')).
query(buys('17234')).
query(buys('7929')).
query(buys('9208')).
query(buys('48143')).
query(buys('29151')).
query(buys('8660')).
query(buys('22315')).
query(buys('10526')).
query(buys('9805')).
query(buys('32413')).
query(buys('4327')).
query(buys('50423')).
query(buys('17126')).
