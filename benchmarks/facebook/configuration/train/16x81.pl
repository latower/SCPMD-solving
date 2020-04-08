10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.911370618803475::trusts('38826','25488').
0.19::trusts('18110','25488').
0.7458134171671::trusts('16582','25488').
0.19::trusts('32487','25488').
0.19::trusts('27526','25488').
0.864914828232701::trusts('25488','38826').
0.468559::trusts('18110','38826').
0.1::trusts('50251','38826').
0.19::trusts('25488','18110').
0.5217031::trusts('38826','18110').
0.965663161797075::trusts('25488','16582').
0.1::trusts('25488','32487').
0.1::trusts('25488','27526').
0.19::trusts('38826','50251').
0.1::trusts('38535','50251').
0.1::trusts('50247','38535').
0.19::trusts('38535','50247').
0.1::trusts('41778','41005').
0.40951::trusts('41005','41778').
0.19::trusts('38358','41778').
0.19::trusts('41778','38358').
0.1::trusts('10486','38358').
0.1::trusts('38358','10486').
0.1::trusts('32487','45284').
0.1::trusts('41005','56049').
0.1::trusts('25488','31680').

person('25488').
person('38826').
person('18110').
person('16582').
person('32487').
person('27526').
person('50251').
person('38535').
person('50247').
person('41005').
person('41778').
person('38358').
person('10486').
person('45284').
person('56049').
person('31680').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25488')).
query(buys('38826')).
query(buys('18110')).
query(buys('16582')).
query(buys('32487')).
query(buys('27526')).
query(buys('50251')).
query(buys('38535')).
query(buys('50247')).
query(buys('41005')).
query(buys('41778')).
query(buys('38358')).
query(buys('10486')).
query(buys('45284')).
query(buys('56049')).
query(buys('31680')).
