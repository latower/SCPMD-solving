10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('49238','11416').
0.19::trusts('46442','11416').
0.19::trusts('11416','49238').
0.271::trusts('43816','49238').
0.1::trusts('59834','49238').
0.1::trusts('11416','46442').
0.1::trusts('43816','26047').
0.19::trusts('24641','26047').
0.1::trusts('34671','26047').
0.40951::trusts('60192','43816').
0.271::trusts('60191','43816').
0.19::trusts('49238','43816').
0.1::trusts('45905','43816').
0.19::trusts('30151','43816').
0.19::trusts('60940','43816').
0.1::trusts('26047','24641').
0.1::trusts('26047','34671').
0.1::trusts('43816','34671').
0.1::trusts('60192','34671').
0.1::trusts('60191','34671').
0.1::trusts('21659','50880').
0.1::trusts('21659','50881').
0.1::trusts('43816','50881').
0.7458134171671::trusts('43816','60192').
0.468559::trusts('43816','60191').
0.1::trusts('60192','60191').
0.19::trusts('43816','45905').
0.1::trusts('43816','30151').
0.1::trusts('43816','60940').

person('11416').
person('49238').
person('46442').
person('26047').
person('43816').
person('24641').
person('34671').
person('50880').
person('21659').
person('50881').
person('60192').
person('60191').
person('45905').
person('30151').
person('60940').
person('59834').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11416')).
query(buys('49238')).
query(buys('46442')).
query(buys('26047')).
query(buys('43816')).
query(buys('24641')).
query(buys('34671')).
query(buys('50880')).
query(buys('21659')).
query(buys('50881')).
query(buys('60192')).
query(buys('60191')).
query(buys('45905')).
query(buys('30151')).
query(buys('60940')).
query(buys('59834')).
