10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.40951::trusts('25854','17843').
0.468559::trusts('7411','17843').
0.1::trusts('9596','17843').
0.3439::trusts('17843','25854').
0.40951::trusts('29435','25854').
0.5217031::trusts('17843','7411').
0.1::trusts('29436','7411').
0.814697981114816::trusts('15065','7411').
0.3439::trusts('15066','7411').
0.1::trusts('25855','7411').
0.1::trusts('25863','7411').
0.19::trusts('59158','7411').
0.468559::trusts('25854','29435').
0.1::trusts('7411','29436').
0.5217031::trusts('7411','15065').
0.1::trusts('15066','15065').
0.271::trusts('7411','15066').
0.19::trusts('15065','15066').
0.1::trusts('7411','25863').
0.19::trusts('7411','59158').
0.1::trusts('59160','59158').
0.1::trusts('59158','59160').
0.1::trusts('60057','59160').
0.19::trusts('15065','7309').
0.1::trusts('15065','52454').
0.1::trusts('29435','45722').
0.1::trusts('7411','41149').

person('17843').
person('25854').
person('7411').
person('9596').
person('29435').
person('29436').
person('15065').
person('15066').
person('25855').
person('25863').
person('59158').
person('59160').
person('60057').
person('7309').
person('52454').
person('45722').
person('41149').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17843')).
query(buys('25854')).
query(buys('7411')).
query(buys('9596')).
query(buys('29435')).
query(buys('29436')).
query(buys('15065')).
query(buys('15066')).
query(buys('25855')).
query(buys('25863')).
query(buys('59158')).
query(buys('59160')).
query(buys('60057')).
query(buys('7309')).
query(buys('52454')).
query(buys('45722')).
query(buys('41149')).
