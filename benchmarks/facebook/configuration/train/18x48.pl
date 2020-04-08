10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('3109','10420').
0.19::trusts('17691','10420').
0.612579511::trusts('6462','10420').
0.1::trusts('10420','3109').
0.1::trusts('10420','17691').
0.271::trusts('10420','6462').
0.1::trusts('5079','6462').
0.1::trusts('9284','6462').
0.1::trusts('15978','6462').
0.3439::trusts('56730','6462').
0.1::trusts('6462','5079').
0.271::trusts('6462','9284').
0.271::trusts('9281','9284').
0.1::trusts('6462','15978').
0.271::trusts('6462','56730').
0.1::trusts('1621','56730').
0.1::trusts('56730','1621').
0.3439::trusts('43048','1621').
0.19::trusts('9281','4680').
0.1::trusts('1695','4680').
0.1::trusts('4680','9281').
0.19::trusts('9284','9281').
0.1::trusts('5079','17114').
0.1::trusts('8171','17114').
0.1::trusts('10420','12861').
0.1::trusts('9281','46491').
0.1::trusts('15978','31390').

person('10420').
person('3109').
person('17691').
person('6462').
person('5079').
person('9284').
person('15978').
person('56730').
person('1621').
person('43048').
person('4680').
person('9281').
person('1695').
person('17114').
person('8171').
person('12861').
person('46491').
person('31390').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('10420')).
query(buys('3109')).
query(buys('17691')).
query(buys('6462')).
query(buys('5079')).
query(buys('9284')).
query(buys('15978')).
query(buys('56730')).
query(buys('1621')).
query(buys('43048')).
query(buys('4680')).
query(buys('9281')).
query(buys('1695')).
query(buys('17114')).
query(buys('8171')).
query(buys('12861')).
query(buys('46491')).
query(buys('31390')).
