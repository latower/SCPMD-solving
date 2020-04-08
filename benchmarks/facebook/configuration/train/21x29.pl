10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('10832','30022').
0.19::trusts('30022','10832').
0.1::trusts('22916','10832').
0.1::trusts('28308','10832').
0.1::trusts('8956','10832').
0.1::trusts('19518','10832').
0.1::trusts('32044','10832').
0.1::trusts('10832','28308').
0.1::trusts('10832','8956').
0.1::trusts('10832','19518').
0.1::trusts('37816','19518').
0.1::trusts('10832','32044').
0.1::trusts('10832','12979').
0.1::trusts('19854','12979').
0.1::trusts('36529','12979').
0.271::trusts('12979','19854').
0.1::trusts('22741','19854').
0.1::trusts('19854','22741').
0.1::trusts('10832','9808').
0.1::trusts('11695','9808').
0.1::trusts('28406','9808').
0.1::trusts('10832','11695').
0.1::trusts('12979','11695').
0.1::trusts('23085','11695').
0.19::trusts('11695','23085').
0.1::trusts('10832','37158').
0.1::trusts('32044','35525').
0.1::trusts('28406','35182').
0.1::trusts('22916','50322').
0.1::trusts('30022','32048').

person('30022').
person('10832').
person('22916').
person('28308').
person('8956').
person('19518').
person('32044').
person('12979').
person('19854').
person('36529').
person('22741').
person('9808').
person('11695').
person('28406').
person('23085').
person('37816').
person('37158').
person('35525').
person('35182').
person('50322').
person('32048').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30022')).
query(buys('10832')).
query(buys('22916')).
query(buys('28308')).
query(buys('8956')).
query(buys('19518')).
query(buys('32044')).
query(buys('12979')).
query(buys('19854')).
query(buys('36529')).
query(buys('22741')).
query(buys('9808')).
query(buys('11695')).
query(buys('28406')).
query(buys('23085')).
query(buys('37816')).
query(buys('37158')).
query(buys('35525')).
query(buys('35182')).
query(buys('50322')).
query(buys('32048')).
