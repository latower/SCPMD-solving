10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.77123207545039::trusts('16864','3038').
0.271::trusts('14191','3038').
0.1::trusts('22627','3038').
0.1::trusts('5642','3038').
0.56953279::trusts('3038','16864').
0.1::trusts('14191','16864').
0.19::trusts('48884','16864').
0.40951::trusts('22927','16864').
0.468559::trusts('3038','14191').
0.1::trusts('16864','14191').
0.19::trusts('3038','22627').
0.19::trusts('33008','22627').
0.1::trusts('3038','5642').
0.6513215599::trusts('48884','8773').
0.3439::trusts('8773','48884').
0.271::trusts('16864','48884').
0.5217031::trusts('16864','22927').
0.1::trusts('8773','16338').
0.19::trusts('24093','16338').
0.19::trusts('54190','16338').
0.1::trusts('16338','24093').
0.1::trusts('48884','23471').
0.1::trusts('48884','16341').
0.19::trusts('8773','13117').

person('3038').
person('16864').
person('14191').
person('22627').
person('5642').
person('8773').
person('48884').
person('22927').
person('33008').
person('16338').
person('24093').
person('54190').
person('23471').
person('16341').
person('13117').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('3038')).
query(buys('16864')).
query(buys('14191')).
query(buys('22627')).
query(buys('5642')).
query(buys('8773')).
query(buys('48884')).
query(buys('22927')).
query(buys('33008')).
query(buys('16338')).
query(buys('24093')).
query(buys('54190')).
query(buys('23471')).
query(buys('16341')).
query(buys('13117')).
