10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('14025','18059').
0.1::trusts('48455','18059').
0.1::trusts('18059','14025').
0.40951::trusts('37114','14025').
0.19::trusts('46052','14025').
0.1::trusts('37411','14025').
0.1::trusts('16507','14025').
0.1::trusts('18059','48455').
0.1::trusts('14025','37411').
0.271::trusts('32852','37411').
0.19::trusts('14025','16507').
0.1::trusts('21432','32852').
0.19::trusts('34223','32852').
0.1::trusts('37411','32852').
0.1::trusts('32852','21432').
0.1::trusts('32852','34223').
0.1::trusts('32852','24647').
0.3439::trusts('51631','24647').
0.5217031::trusts('51632','24647').
0.1::trusts('24647','51631').
0.271::trusts('24647','51632').
0.1::trusts('18059','6799').
0.1::trusts('18059','21309').

person('18059').
person('14025').
person('48455').
person('37114').
person('46052').
person('37411').
person('16507').
person('32852').
person('21432').
person('34223').
person('24647').
person('51631').
person('51632').
person('6799').
person('21309').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18059')).
query(buys('14025')).
query(buys('48455')).
query(buys('37114')).
query(buys('46052')).
query(buys('37411')).
query(buys('16507')).
query(buys('32852')).
query(buys('21432')).
query(buys('34223')).
query(buys('24647')).
query(buys('51631')).
query(buys('51632')).
query(buys('6799')).
query(buys('21309')).
