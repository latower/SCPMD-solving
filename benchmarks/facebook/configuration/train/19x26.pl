10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('7500','7498').
0.56953279::trusts('29852','7498').
0.1::trusts('30692','7498').
0.1::trusts('29851','7498').
0.1::trusts('7498','7500').
0.1::trusts('4495','7500').
0.19::trusts('7499','7500').
0.468559::trusts('7498','29852').
0.56953279::trusts('23448','29852').
0.1::trusts('57528','29852').
0.1::trusts('7498','30692').
0.19::trusts('53098','30692').
0.1::trusts('7498','29851').
0.19::trusts('55701','29851').
0.1::trusts('7498','4495').
0.1::trusts('7500','4495').
0.5217031::trusts('1285','4495').
0.271::trusts('4495','1285').
0.3439::trusts('7498','7499').
0.19::trusts('7500','7499').
0.19::trusts('29852','7499').
0.40951::trusts('29850','11333').
0.1::trusts('46616','11333').
0.40951::trusts('11333','29850').
0.1::trusts('29852','29850').
0.1::trusts('7499','29850').
0.1::trusts('51455','29850').
0.612579511::trusts('29852','23448').
0.19::trusts('30692','53098').
0.1::trusts('7498','29853').
0.1::trusts('7499','29853').
0.19::trusts('29850','51455').
0.1::trusts('7498','40257').
0.1::trusts('40255','40257').
0.1::trusts('40257','40255').

person('7498').
person('7500').
person('29852').
person('30692').
person('29851').
person('4495').
person('1285').
person('7499').
person('11333').
person('29850').
person('46616').
person('23448').
person('57528').
person('53098').
person('55701').
person('29853').
person('51455').
person('40257').
person('40255').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7498')).
query(buys('7500')).
query(buys('29852')).
query(buys('30692')).
query(buys('29851')).
query(buys('4495')).
query(buys('1285')).
query(buys('7499')).
query(buys('11333')).
query(buys('29850')).
query(buys('46616')).
query(buys('23448')).
query(buys('57528')).
query(buys('53098')).
query(buys('55701')).
query(buys('29853')).
query(buys('51455')).
query(buys('40257')).
query(buys('40255')).
