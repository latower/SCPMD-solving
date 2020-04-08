10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('3828','4030').
0.271::trusts('11533','4030').
0.19::trusts('4029','4030').
0.56953279::trusts('29402','4030').
0.271::trusts('4030','3828').
0.1::trusts('4030','11533').
0.19::trusts('30309','11533').
0.612579511::trusts('4030','4029').
0.56953279::trusts('4040','4029').
0.1::trusts('10735','7336').
0.1::trusts('50176','7336').
0.19::trusts('7336','10735').
0.1::trusts('11533','10735').
0.1::trusts('7336','50176').
0.3439::trusts('11533','30309').
0.19::trusts('19639','30309').
0.1::trusts('30309','19639').
0.1::trusts('10457','19639').
0.19::trusts('17982','19639').
0.717570463519::trusts('4029','4040').
0.1::trusts('19639','17982').
0.1::trusts('29402','48873').
0.1::trusts('10457','24374').
0.1::trusts('19639','24374').
0.1::trusts('10735','23958').
0.19::trusts('11533','23958').

person('4030').
person('3828').
person('11533').
person('4029').
person('29402').
person('7336').
person('10735').
person('50176').
person('30309').
person('19639').
person('4040').
person('17982').
person('48873').
person('10457').
person('24374').
person('23958').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4030')).
query(buys('3828')).
query(buys('11533')).
query(buys('4029')).
query(buys('29402')).
query(buys('7336')).
query(buys('10735')).
query(buys('50176')).
query(buys('30309')).
query(buys('19639')).
query(buys('4040')).
query(buys('17982')).
query(buys('48873')).
query(buys('10457')).
query(buys('24374')).
query(buys('23958')).
