10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('41762','35188').
0.19::trusts('44561','35188').
0.1::trusts('35333','41762').
0.1::trusts('35335','41762').
0.1::trusts('36960','41762').
0.1::trusts('44562','41762').
0.19::trusts('35188','44561').
0.1::trusts('29165','36960').
0.1::trusts('35333','36960').
0.19::trusts('42090','36960').
0.1::trusts('44381','36960').
0.1::trusts('41762','42090').
0.1::trusts('25060','42090').
0.1::trusts('35335','25060').
0.1::trusts('42090','25060').
0.19::trusts('44381','25060').
0.1::trusts('8711','25060').
0.1::trusts('35335','27729').
0.1::trusts('42090','53197').
0.271::trusts('27729','53197').
0.1::trusts('44562','36580').
0.1::trusts('42090','36580').
0.1::trusts('27729','36580').

person('35188').
person('41762').
person('44561').
person('35333').
person('35335').
person('36960').
person('44562').
person('29165').
person('42090').
person('44381').
person('25060').
person('8711').
person('27729').
person('53197').
person('36580').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('35188')).
query(buys('41762')).
query(buys('44561')).
query(buys('35333')).
query(buys('35335')).
query(buys('36960')).
query(buys('44562')).
query(buys('29165')).
query(buys('42090')).
query(buys('44381')).
query(buys('25060')).
query(buys('8711')).
query(buys('27729')).
query(buys('53197')).
query(buys('36580')).
