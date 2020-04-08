10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('41565','30044').
0.19::trusts('40581','30044').
0.19::trusts('10658','30044').
0.1::trusts('9518','30044').
0.19::trusts('40583','30044').
0.1::trusts('53419','30044').
0.1::trusts('30044','41565').
0.1::trusts('30044','40581').
0.3439::trusts('10658','40581').
0.19::trusts('40583','40581').
0.1::trusts('53420','40581').
0.19::trusts('30044','10658').
0.40951::trusts('40581','10658').
0.1::trusts('53420','10658').
0.19::trusts('40923','10658').
0.1::trusts('30044','9518').
0.1::trusts('30044','40583').
0.1::trusts('40581','40583').
0.19::trusts('30044','53419').
0.1::trusts('44535','53419').
0.1::trusts('40581','53420').
0.1::trusts('10658','53420').
0.1::trusts('10658','40923').
0.1::trusts('53419','44535').
0.1::trusts('50218','44535').
0.271::trusts('50218','17676').
0.1::trusts('15443','17676').
0.271::trusts('17676','50218').
0.1::trusts('44535','50218').
0.1::trusts('17676','15443').
0.3439::trusts('51366','24143').
0.271::trusts('24143','51366').
0.3439::trusts('30044','49998').
0.1::trusts('30044','51369').
0.19::trusts('51366','51369').
0.1::trusts('30044','47463').

person('30044').
person('41565').
person('40581').
person('10658').
person('9518').
person('40583').
person('53419').
person('53420').
person('40923').
person('44535').
person('17676').
person('50218').
person('15443').
person('24143').
person('51366').
person('49998').
person('51369').
person('47463').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30044')).
query(buys('41565')).
query(buys('40581')).
query(buys('10658')).
query(buys('9518')).
query(buys('40583')).
query(buys('53419')).
query(buys('53420')).
query(buys('40923')).
query(buys('44535')).
query(buys('17676')).
query(buys('50218')).
query(buys('15443')).
query(buys('24143')).
query(buys('51366')).
query(buys('49998')).
query(buys('51369')).
query(buys('47463')).
