10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.890581010868488::trusts('30904','17902').
0.3439::trusts('37456','17902').
0.19::trusts('21778','17902').
0.271::trusts('17903','17902').
0.1::trusts('43683','17902').
0.1::trusts('23703','17902').
0.1::trusts('15114','17902').
0.40951::trusts('17902','37456').
0.3439::trusts('48533','37456').
0.271::trusts('17902','21778').
0.3439::trusts('17902','17903').
0.1::trusts('30904','17903').
0.5217031::trusts('17902','43683').
0.19::trusts('17902','15114').
0.3439::trusts('30904','15114').
0.19::trusts('37456','48533').
0.1::trusts('30585','48533').
0.40951::trusts('14819','23273').
0.271::trusts('23273','14819').
0.1::trusts('30585','14819').
0.1::trusts('14819','30585').
0.1::trusts('48533','30585').
0.1::trusts('17902','36004').
0.1::trusts('23703','19830').
0.1::trusts('28504','19830').
0.1::trusts('19830','28504').
0.1::trusts('17902','37674').
0.1::trusts('23703','29780').
0.1::trusts('17902','52745').
0.1::trusts('52745','33337').

person('17902').
person('30904').
person('37456').
person('21778').
person('17903').
person('43683').
person('23703').
person('15114').
person('48533').
person('23273').
person('14819').
person('30585').
person('36004').
person('19830').
person('28504').
person('37674').
person('29780').
person('52745').
person('33337').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17902')).
query(buys('30904')).
query(buys('37456')).
query(buys('21778')).
query(buys('17903')).
query(buys('43683')).
query(buys('23703')).
query(buys('15114')).
query(buys('48533')).
query(buys('23273')).
query(buys('14819')).
query(buys('30585')).
query(buys('36004')).
query(buys('19830')).
query(buys('28504')).
query(buys('37674')).
query(buys('29780')).
query(buys('52745')).
query(buys('33337')).
