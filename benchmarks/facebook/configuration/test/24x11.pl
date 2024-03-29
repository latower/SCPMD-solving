10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.814697981114816::trusts('13316','13313').
0.998938883388004::trusts('24591','13313').
0.928210201230815::trusts('48446','13313').
0.77123207545039::trusts('37827','13313').
0.952898713027537::trusts('11261','13313').
0.77123207545039::trusts('9547','13313').
0.19::trusts('16565','13313').
0.890581010868488::trusts('41218','13313').
0.1::trusts('42221','13313').
0.1::trusts('13317','13313').
0.1::trusts('49761','13313').
0.999044995049203::trusts('13313','13316').
0.3439::trusts('37827','13316').
0.1::trusts('47245','13316').
0.999996770753982::trusts('13313','24591').
0.40951::trusts('11509','24591').
0.271::trusts('48446','24591').
0.1::trusts('12646','24591').
0.965663161797075::trusts('13313','48446').
0.1::trusts('24591','48446').
0.612579511::trusts('37827','48446').
0.5217031::trusts('40152','48446').
0.928210201230815::trusts('13313','37827').
0.271::trusts('13316','37827').
0.612579511::trusts('48446','37827').
0.911370618803475::trusts('13313','11261').
0.864914828232701::trusts('13313','9547').
0.1::trusts('37827','9547').
0.19::trusts('43115','9547').
0.3439::trusts('13317','9547').
0.1::trusts('58474','9547').
0.19::trusts('13313','16565').
0.972187161055631::trusts('13313','41218').
0.1::trusts('13313','42221').
0.56953279::trusts('13313','13317').
0.3439::trusts('9547','13317').
0.1::trusts('13313','49761').
0.56953279::trusts('24591','11509').
0.1::trusts('13427','11509').
0.1::trusts('39954','11509').
0.1::trusts('24591','12646').
0.468559::trusts('48446','40152').
0.271::trusts('9547','43115').
0.1::trusts('49067','43115').
0.19::trusts('43115','49067').
0.1::trusts('11261','41217').
0.5217031::trusts('39288','41217').
0.1::trusts('42221','47070').

person('13313').
person('13316').
person('24591').
person('48446').
person('37827').
person('11261').
person('9547').
person('16565').
person('41218').
person('42221').
person('13317').
person('49761').
person('47245').
person('11509').
person('12646').
person('13427').
person('39954').
person('40152').
person('43115').
person('49067').
person('58474').
person('41217').
person('39288').
person('47070').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('13313')).
query(buys('13316')).
query(buys('24591')).
query(buys('48446')).
query(buys('37827')).
query(buys('11261')).
query(buys('9547')).
query(buys('16565')).
query(buys('41218')).
query(buys('42221')).
query(buys('13317')).
query(buys('49761')).
query(buys('47245')).
query(buys('11509')).
query(buys('12646')).
query(buys('13427')).
query(buys('39954')).
query(buys('40152')).
query(buys('43115')).
query(buys('49067')).
query(buys('58474')).
query(buys('41217')).
query(buys('39288')).
query(buys('47070')).
