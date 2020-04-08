10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('10540','5123').
0.1::trusts('5123','10540').
0.1::trusts('28531','10540').
0.1::trusts('53029','10540').
0.271::trusts('6485','10540').
0.1::trusts('10540','28531').
0.56953279::trusts('62036','28531').
0.19::trusts('10540','53029').
0.19::trusts('10540','6485').
0.1::trusts('17550','6485').
0.1::trusts('36062','6485').
0.3439::trusts('28531','62036').
0.271::trusts('24437','62036').
0.3439::trusts('57573','62036').
0.1::trusts('41274','62036').
0.1::trusts('6485','17550').
0.1::trusts('6485','36062').
0.1::trusts('22777','36062').
0.271::trusts('62036','24437').
0.19::trusts('62036','57573').
0.19::trusts('59003','57573').
0.1::trusts('46409','57573').
0.19::trusts('62036','41274').
0.1::trusts('36062','22777').
0.19::trusts('57573','59003').
0.1::trusts('33905','59003').
0.1::trusts('57573','46409').
0.1::trusts('22407','33905').
0.19::trusts('59003','33905').
0.1::trusts('10540','28526').
0.271::trusts('59003','59870').
0.1::trusts('10540','31869').

person('5123').
person('10540').
person('28531').
person('53029').
person('6485').
person('62036').
person('17550').
person('36062').
person('24437').
person('57573').
person('41274').
person('22777').
person('59003').
person('46409').
person('33905').
person('22407').
person('28526').
person('59870').
person('31869').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('5123')).
query(buys('10540')).
query(buys('28531')).
query(buys('53029')).
query(buys('6485')).
query(buys('62036')).
query(buys('17550')).
query(buys('36062')).
query(buys('24437')).
query(buys('57573')).
query(buys('41274')).
query(buys('22777')).
query(buys('59003')).
query(buys('46409')).
query(buys('33905')).
query(buys('22407')).
query(buys('28526')).
query(buys('59870')).
query(buys('31869')).
