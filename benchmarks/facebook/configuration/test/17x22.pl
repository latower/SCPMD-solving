10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('3492','12062').
0.1::trusts('23532','12062').
0.19::trusts('29877','12062').
0.271::trusts('12062','3492').
0.40951::trusts('3490','3492').
0.19::trusts('12062','29877').
0.3439::trusts('3463','3490').
0.40951::trusts('17202','3490').
0.271::trusts('3492','3490').
0.271::trusts('3468','3490').
0.1::trusts('3517','3490').
0.6513215599::trusts('3490','3463').
0.1::trusts('3517','3463').
0.40951::trusts('3490','17202').
0.1::trusts('29826','17202').
0.5217031::trusts('3490','3468').
0.1::trusts('17202','3468').
0.1::trusts('3491','3468').
0.1::trusts('3490','3517').
0.19::trusts('3463','3517').
0.1::trusts('36177','3517').
0.1::trusts('17202','29826').
0.271::trusts('61840','29826').
0.19::trusts('12062','3491').
0.1::trusts('3490','3491').
0.19::trusts('3492','3491').
0.1::trusts('3468','3491').
0.1::trusts('3517','36177').
0.3439::trusts('41771','36177').
0.19::trusts('29826','61840').
0.3439::trusts('36177','41771').
0.3439::trusts('3490','3514').
0.1::trusts('3507','3514').
0.1::trusts('33111','3507').

person('12062').
person('3492').
person('23532').
person('29877').
person('3490').
person('3463').
person('17202').
person('3468').
person('3517').
person('29826').
person('3491').
person('36177').
person('61840').
person('41771').
person('3514').
person('3507').
person('33111').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12062')).
query(buys('3492')).
query(buys('23532')).
query(buys('29877')).
query(buys('3490')).
query(buys('3463')).
query(buys('17202')).
query(buys('3468')).
query(buys('3517')).
query(buys('29826')).
query(buys('3491')).
query(buys('36177')).
query(buys('61840')).
query(buys('41771')).
query(buys('3514')).
query(buys('3507')).
query(buys('33111')).
