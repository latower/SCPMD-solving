10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('33553','13364').
0.1::trusts('32150','13364').
0.19::trusts('13364','33553').
0.271::trusts('41591','33553').
0.19::trusts('32150','33553').
0.19::trusts('13364','32150').
0.878423345409431::trusts('41591','32150').
0.271::trusts('33553','32150').
0.19::trusts('6676','32150').
0.1::trusts('3060','32150').
0.1::trusts('33553','41591').
0.717570463519::trusts('32150','41591').
0.1::trusts('6676','41591').
0.6513215599::trusts('17462','41591').
0.1::trusts('24742','41591').
0.977471600455061::trusts('41591','17462').
0.1::trusts('14300','17462').
0.1::trusts('5164','17462').
0.3439::trusts('41591','24742').
0.1::trusts('17462','14300').
0.1::trusts('25856','14300').
0.1::trusts('31710','14300').
0.1::trusts('14300','25856').
0.1::trusts('25858','25856').
0.1::trusts('25858','24282').
0.5217031::trusts('25856','25858').
0.1::trusts('32150','3060').
0.1::trusts('17462','5164').
0.271::trusts('6676','41590').
0.1::trusts('14300','17851').
0.1::trusts('17462','17851').

person('13364').
person('33553').
person('32150').
person('41591').
person('6676').
person('17462').
person('24742').
person('14300').
person('25856').
person('31710').
person('24282').
person('25858').
person('3060').
person('5164').
person('41590').
person('17851').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13364')).
query(buys('33553')).
query(buys('32150')).
query(buys('41591')).
query(buys('6676')).
query(buys('17462')).
query(buys('24742')).
query(buys('14300')).
query(buys('25856')).
query(buys('31710')).
query(buys('24282')).
query(buys('25858')).
query(buys('3060')).
query(buys('5164')).
query(buys('41590')).
query(buys('17851')).
