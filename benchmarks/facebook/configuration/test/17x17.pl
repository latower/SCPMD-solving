10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('3079','1183').
0.19::trusts('1183','3079').
0.3439::trusts('19791','3079').
0.1::trusts('6586','3079').
0.833228183003334::trusts('28023','3079').
0.1::trusts('29738','3079').
0.1::trusts('12809','3079').
0.1::trusts('3572','3079').
0.1::trusts('1183','19791').
0.271::trusts('3079','19791').
0.19::trusts('12809','19791').
0.1::trusts('3079','12809').
0.6513215599::trusts('3760','1429').
0.1::trusts('6586','1429').
0.1::trusts('3267','1429').
0.271::trusts('16901','1429').
0.3439::trusts('1429','3760').
0.19::trusts('3767','3760').
0.1::trusts('1438','6586').
0.1::trusts('1429','6586').
0.1::trusts('3079','6586').
0.6513215599::trusts('1438','3267').
0.1::trusts('1429','3267').
0.19::trusts('6586','3267').
0.271::trusts('3079','3267').
0.1::trusts('1429','16901').
0.1::trusts('3760','3767').
0.56953279::trusts('3079','28023').
0.1::trusts('2042','28023').
0.19::trusts('3079','3572').
0.19::trusts('18014','3572').
0.19::trusts('3572','18014').
0.1::trusts('2042','36172').

person('1183').
person('3079').
person('19791').
person('12809').
person('1429').
person('3760').
person('6586').
person('3267').
person('16901').
person('3767').
person('1438').
person('28023').
person('29738').
person('3572').
person('2042').
person('18014').
person('36172').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1183')).
query(buys('3079')).
query(buys('19791')).
query(buys('12809')).
query(buys('1429')).
query(buys('3760')).
query(buys('6586')).
query(buys('3267')).
query(buys('16901')).
query(buys('3767')).
query(buys('1438')).
query(buys('28023')).
query(buys('29738')).
query(buys('3572')).
query(buys('2042')).
query(buys('18014')).
query(buys('36172')).
