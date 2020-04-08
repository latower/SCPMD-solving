10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18238','18615').
0.1::trusts('6864','18615').
0.1::trusts('15739','18615').
0.1::trusts('14164','18615').
0.890581010868488::trusts('18615','18238').
0.271::trusts('19969','18238').
0.271::trusts('15871','18238').
0.1::trusts('18615','6864').
0.1::trusts('18615','15739').
0.19::trusts('7859','15739').
0.1::trusts('62799','15739').
0.1::trusts('61526','15739').
0.1::trusts('60920','15739').
0.56953279::trusts('18615','14164').
0.1::trusts('19969','14164').
0.1::trusts('23737','14164').
0.1::trusts('23740','14164').
0.1::trusts('24704','19969').
0.1::trusts('18229','19969').
0.1::trusts('14164','19969').
0.19::trusts('18238','15871').
0.19::trusts('19969','18229').
0.19::trusts('15739','7859').
0.1::trusts('15739','62799').
0.1::trusts('15739','60920').
0.19::trusts('48539','60920').
0.1::trusts('20541','20540').
0.3439::trusts('24704','20541').
0.19::trusts('24704','23740').
0.1::trusts('60920','48539').
0.1::trusts('48539','62144').
0.1::trusts('15739','46686').
0.1::trusts('61526','63654').

person('18615').
person('18238').
person('6864').
person('15739').
person('14164').
person('19969').
person('15871').
person('24704').
person('18229').
person('7859').
person('62799').
person('61526').
person('60920').
person('20540').
person('20541').
person('23737').
person('23740').
person('48539').
person('62144').
person('46686').
person('63654').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('18615')).
query(buys('18238')).
query(buys('6864')).
query(buys('15739')).
query(buys('14164')).
query(buys('19969')).
query(buys('15871')).
query(buys('24704')).
query(buys('18229')).
query(buys('7859')).
query(buys('62799')).
query(buys('61526')).
query(buys('60920')).
query(buys('20540')).
query(buys('20541')).
query(buys('23737')).
query(buys('23740')).
query(buys('48539')).
query(buys('62144')).
query(buys('46686')).
query(buys('63654')).
