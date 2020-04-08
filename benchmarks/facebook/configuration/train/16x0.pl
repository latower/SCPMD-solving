10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('676','17535').
0.1::trusts('17535','676').
0.6513215599::trusts('14930','676').
0.1::trusts('665','676').
0.5217031::trusts('1351','676').
0.3439::trusts('14929','14930').
0.7458134171671::trusts('676','14930').
0.1::trusts('18209','14930').
0.1::trusts('18212','14930').
0.3439::trusts('14930','14929').
0.1::trusts('14930','18212').
0.6513215599::trusts('24091','665').
0.1::trusts('1339','665').
0.468559::trusts('676','1351').
0.271::trusts('1036','1351').
0.271::trusts('665','1339').
0.40951::trusts('1328','1339').
0.40951::trusts('1339','1328').
0.1::trusts('1036','1353').
0.1::trusts('745','1353').
0.1::trusts('52530','745').
0.1::trusts('745','52530').
0.1::trusts('18209','18208').

person('17535').
person('676').
person('14930').
person('14929').
person('18209').
person('18212').
person('665').
person('1351').
person('24091').
person('1339').
person('1036').
person('1328').
person('1353').
person('745').
person('52530').
person('18208').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17535')).
query(buys('676')).
query(buys('14930')).
query(buys('14929')).
query(buys('18209')).
query(buys('18212')).
query(buys('665')).
query(buys('1351')).
query(buys('24091')).
query(buys('1339')).
query(buys('1036')).
query(buys('1328')).
query(buys('1353')).
query(buys('745')).
query(buys('52530')).
query(buys('18208')).
