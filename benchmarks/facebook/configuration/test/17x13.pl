10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('36822','39396').
0.1::trusts('39396','36822').
0.19::trusts('27329','36822').
0.1::trusts('40004','36822').
0.1::trusts('25133','36822').
0.40951::trusts('36822','27329').
0.19::trusts('36822','40004').
0.1::trusts('40008','40004').
0.1::trusts('25030','40004').
0.19::trusts('40013','40004').
0.1::trusts('36822','25133').
0.1::trusts('40008','25133').
0.1::trusts('40007','25133').
0.1::trusts('40005','25133').
0.1::trusts('25133','40008').
0.5217031::trusts('25030','40008').
0.5217031::trusts('40006','40008').
0.19::trusts('40013','40008').
0.1::trusts('40008','25030').
0.3439::trusts('40006','25030').
0.1::trusts('40004','40013').
0.1::trusts('25133','40007').
0.1::trusts('40006','40007').
0.1::trusts('40013','40007').
0.1::trusts('40016','40007').
0.1::trusts('40020','40005').
0.271::trusts('40008','40006').
0.40951::trusts('25030','40006').
0.1::trusts('40007','40006').
0.1::trusts('40015','40006').
0.1::trusts('40006','40015').
0.1::trusts('40013','40015').
0.19::trusts('36822','41467').
0.1::trusts('40015','40019').
0.1::trusts('40016','40011').

person('39396').
person('36822').
person('27329').
person('40004').
person('25133').
person('40008').
person('25030').
person('40013').
person('40007').
person('40005').
person('40006').
person('40015').
person('40016').
person('40020').
person('41467').
person('40019').
person('40011').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('39396')).
query(buys('36822')).
query(buys('27329')).
query(buys('40004')).
query(buys('25133')).
query(buys('40008')).
query(buys('25030')).
query(buys('40013')).
query(buys('40007')).
query(buys('40005')).
query(buys('40006')).
query(buys('40015')).
query(buys('40016')).
query(buys('40020')).
query(buys('41467')).
query(buys('40019')).
query(buys('40011')).
