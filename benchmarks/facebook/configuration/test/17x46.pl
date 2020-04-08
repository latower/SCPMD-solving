10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('31583','22635').
0.271::trusts('10777','22635').
0.1::trusts('22635','31583').
0.1::trusts('27665','31583').
0.271::trusts('22635','10777').
0.19::trusts('40488','10777').
0.1::trusts('22645','10777').
0.1::trusts('10777','40488').
0.1::trusts('22645','40488').
0.1::trusts('59910','40488').
0.1::trusts('22635','22645').
0.1::trusts('10777','22645').
0.1::trusts('40488','22645').
0.1::trusts('47439','22645').
0.1::trusts('40488','59910').
0.1::trusts('22645','47439').
0.1::trusts('50220','47439').
0.1::trusts('47439','50220').
0.1::trusts('30333','50220').
0.1::trusts('56754','23494').
0.1::trusts('50282','56754').
0.717570463519::trusts('30333','50282').
0.1::trusts('48391','50282').
0.1::trusts('61921','50282').
0.612579511::trusts('50282','30333').
0.1::trusts('50220','30333').
0.1::trusts('50282','48391').
0.1::trusts('48391','34635').
0.1::trusts('40488','24857').

person('22635').
person('31583').
person('10777').
person('27665').
person('40488').
person('22645').
person('59910').
person('47439').
person('50220').
person('23494').
person('56754').
person('50282').
person('30333').
person('48391').
person('61921').
person('34635').
person('24857').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22635')).
query(buys('31583')).
query(buys('10777')).
query(buys('27665')).
query(buys('40488')).
query(buys('22645')).
query(buys('59910')).
query(buys('47439')).
query(buys('50220')).
query(buys('23494')).
query(buys('56754')).
query(buys('50282')).
query(buys('30333')).
query(buys('48391')).
query(buys('61921')).
query(buys('34635')).
query(buys('24857')).
