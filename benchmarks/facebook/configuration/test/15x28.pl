10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('6945','35277').
0.1::trusts('6945','37680').
0.40951::trusts('39804','37680').
0.40951::trusts('37680','39804').
0.1::trusts('31597','39804').
0.19::trusts('6945','36842').
0.19::trusts('39804','31597').
0.1::trusts('6945','37679').
0.1::trusts('35379','35378').
0.1::trusts('6945','35379').
0.1::trusts('35390','35379').
0.1::trusts('35379','35390').
0.1::trusts('6945','4330').
0.1::trusts('51118','51348').
0.1::trusts('34491','51348').
0.1::trusts('6945','51118').
0.1::trusts('51348','51118').
0.1::trusts('51348','34491').
0.1::trusts('6945','37686').

person('35277').
person('6945').
person('37680').
person('39804').
person('36842').
person('31597').
person('37679').
person('35378').
person('35379').
person('35390').
person('4330').
person('51348').
person('51118').
person('34491').
person('37686').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('35277')).
query(buys('6945')).
query(buys('37680')).
query(buys('39804')).
query(buys('36842')).
query(buys('31597')).
query(buys('37679')).
query(buys('35378')).
query(buys('35379')).
query(buys('35390')).
query(buys('4330')).
query(buys('51348')).
query(buys('51118')).
query(buys('34491')).
query(buys('37686')).
