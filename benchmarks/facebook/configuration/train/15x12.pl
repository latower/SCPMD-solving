10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('40470','4230').
0.1::trusts('4230','40470').
0.1::trusts('4230','18555').
0.1::trusts('25778','18555').
0.3439::trusts('43202','18555').
0.271::trusts('41293','18555').
0.1::trusts('43204','18555').
0.19::trusts('18555','25778').
0.3439::trusts('18555','43202').
0.1::trusts('42494','43202').
0.40951::trusts('27573','43202').
0.271::trusts('18555','41293').
0.1::trusts('18555','43204').
0.19::trusts('61201','9967').
0.40951::trusts('9967','61201').
0.468559::trusts('27573','61201').
0.1::trusts('43202','42494').
0.5217031::trusts('43202','27573').
0.40951::trusts('61201','27573').
0.19::trusts('55977','27573').
0.1::trusts('27573','55977').
0.1::trusts('42494','29465').
0.1::trusts('33923','29465').
0.1::trusts('18555','22482').

person('4230').
person('40470').
person('18555').
person('25778').
person('43202').
person('41293').
person('43204').
person('9967').
person('61201').
person('42494').
person('27573').
person('55977').
person('29465').
person('33923').
person('22482').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4230')).
query(buys('40470')).
query(buys('18555')).
query(buys('25778')).
query(buys('43202')).
query(buys('41293')).
query(buys('43204')).
query(buys('9967')).
query(buys('61201')).
query(buys('42494')).
query(buys('27573')).
query(buys('55977')).
query(buys('29465')).
query(buys('33923')).
query(buys('22482')).
