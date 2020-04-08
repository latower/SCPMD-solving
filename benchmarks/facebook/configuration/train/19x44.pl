10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('20733','12688').
0.1::trusts('31054','12688').
0.1::trusts('9189','12688').
0.1::trusts('12688','20733').
0.1::trusts('20737','20733').
0.1::trusts('12688','31054').
0.19::trusts('12688','9189').
0.19::trusts('16085','9189').
0.19::trusts('16107','9189').
0.19::trusts('20733','20737').
0.1::trusts('19530','20737').
0.19::trusts('3671','20737').
0.1::trusts('20737','19530').
0.19::trusts('3671','19530').
0.271::trusts('16683','19530').
0.1::trusts('29035','16156').
0.19::trusts('9189','16085').
0.1::trusts('61001','16107').
0.271::trusts('19530','16683').
0.1::trusts('44214','16683').
0.1::trusts('20737','33569').
0.1::trusts('19530','33569').
0.1::trusts('12688','33930').
0.1::trusts('20737','16158').
0.1::trusts('29035','16158').
0.1::trusts('61001','33935').
0.1::trusts('62044','33935').

person('12688').
person('20733').
person('31054').
person('9189').
person('20737').
person('19530').
person('3671').
person('16156').
person('29035').
person('16085').
person('16107').
person('16683').
person('33569').
person('61001').
person('44214').
person('33930').
person('16158').
person('33935').
person('62044').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('12688')).
query(buys('20733')).
query(buys('31054')).
query(buys('9189')).
query(buys('20737')).
query(buys('19530')).
query(buys('3671')).
query(buys('16156')).
query(buys('29035')).
query(buys('16085')).
query(buys('16107')).
query(buys('16683')).
query(buys('33569')).
query(buys('61001')).
query(buys('44214')).
query(buys('33930')).
query(buys('16158')).
query(buys('33935')).
query(buys('62044')).
