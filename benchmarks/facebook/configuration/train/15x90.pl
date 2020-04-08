10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('25214','40520').
0.1::trusts('40520','25214').
0.998820981542226::trusts('40517','25214').
0.1::trusts('40518','25214').
0.271::trusts('41437','37254').
0.1::trusts('43169','37254').
0.19::trusts('45062','37254').
0.3439::trusts('37254','41437').
0.40951::trusts('23058','41437').
0.1::trusts('37254','43169').
0.1::trusts('37254','45062').
0.3439::trusts('41437','23058').
0.56953279::trusts('40517','23058').
0.68618940391::trusts('23058','40517').
0.999436079126604::trusts('25214','40517').
0.5217031::trusts('40651','40517').
0.19::trusts('25214','40518').
0.1::trusts('34610','40518').
0.1::trusts('25214','15374').
0.1::trusts('40520','36942').
0.1::trusts('25214','29144').
0.1::trusts('37254','44380').

person('40520').
person('25214').
person('37254').
person('41437').
person('43169').
person('45062').
person('23058').
person('40517').
person('40518').
person('40651').
person('34610').
person('15374').
person('36942').
person('29144').
person('44380').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('40520')).
query(buys('25214')).
query(buys('37254')).
query(buys('41437')).
query(buys('43169')).
query(buys('45062')).
query(buys('23058')).
query(buys('40517')).
query(buys('40518')).
query(buys('40651')).
query(buys('34610')).
query(buys('15374')).
query(buys('36942')).
query(buys('29144')).
query(buys('44380')).
