10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('34574','31248').
0.1::trusts('15780','31248').
0.1::trusts('34569','31248').
0.271::trusts('34576','31248').
0.1::trusts('31681','31248').
0.19::trusts('31248','34574').
0.19::trusts('15780','34574').
0.1::trusts('34574','15780').
0.19::trusts('31678','15780').
0.19::trusts('24477','15780').
0.1::trusts('31248','34569').
0.271::trusts('14950','34569').
0.1::trusts('31681','39674').
0.1::trusts('40072','39674').
0.19::trusts('39674','40072').
0.1::trusts('22676','40072').
0.1::trusts('31248','31678').
0.19::trusts('15780','31678').
0.1::trusts('22676','31678').
0.1::trusts('34572','31678').
0.1::trusts('31678','22676').
0.1::trusts('31248','34572').
0.1::trusts('31678','34572').
0.1::trusts('15869','34572').
0.1::trusts('15780','24477').
0.1::trusts('22676','15869').
0.1::trusts('12288','15869').
0.19::trusts('15869','12288').
0.271::trusts('36044','12288').
0.271::trusts('34569','14950').
0.19::trusts('12288','36044').

person('31248').
person('34574').
person('15780').
person('34569').
person('34576').
person('31681').
person('39674').
person('40072').
person('31678').
person('22676').
person('34572').
person('24477').
person('15869').
person('12288').
person('14950').
person('36044').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('31248')).
query(buys('34574')).
query(buys('15780')).
query(buys('34569')).
query(buys('34576')).
query(buys('31681')).
query(buys('39674')).
query(buys('40072')).
query(buys('31678')).
query(buys('22676')).
query(buys('34572')).
query(buys('24477')).
query(buys('15869')).
query(buys('12288')).
query(buys('14950')).
query(buys('36044')).
