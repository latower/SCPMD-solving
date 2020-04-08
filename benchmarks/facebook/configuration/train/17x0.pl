10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.717570463519::trusts('28701','21427').
0.1::trusts('33174','21427').
0.833228183003334::trusts('21427','28701').
0.878423345409431::trusts('18676','28701').
0.1::trusts('19402','28701').
0.19::trusts('12065','28701').
0.19::trusts('15135','28701').
0.19::trusts('21427','33174').
0.1::trusts('13150','19402').
0.271::trusts('28701','19402').
0.3439::trusts('28701','12065').
0.271::trusts('24585','12065').
0.271::trusts('28701','15135').
0.1::trusts('12065','24585').
0.271::trusts('13150','19013').
0.1::trusts('18676','19013').
0.1::trusts('28701','34393').
0.1::trusts('19013','38053').
0.1::trusts('30039','38053').
0.1::trusts('13150','19025').
0.1::trusts('21427','21036').
0.19::trusts('23816','21036').
0.1::trusts('21428','23816').
0.19::trusts('21036','23816').

person('21427').
person('28701').
person('33174').
person('18676').
person('19402').
person('12065').
person('15135').
person('13150').
person('24585').
person('19013').
person('34393').
person('38053').
person('30039').
person('19025').
person('21036').
person('23816').
person('21428').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('21427')).
query(buys('28701')).
query(buys('33174')).
query(buys('18676')).
query(buys('19402')).
query(buys('12065')).
query(buys('15135')).
query(buys('13150')).
query(buys('24585')).
query(buys('19013')).
query(buys('34393')).
query(buys('38053')).
query(buys('30039')).
query(buys('19025')).
query(buys('21036')).
query(buys('23816')).
query(buys('21428')).
