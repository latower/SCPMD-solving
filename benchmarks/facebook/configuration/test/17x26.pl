10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('7378','42364').
0.1::trusts('13140','42364').
0.271::trusts('57698','42364').
0.1::trusts('60373','42364').
0.19::trusts('42364','13140').
0.1::trusts('49655','13140').
0.1::trusts('7378','57698').
0.19::trusts('42364','57698').
0.1::trusts('41520','57698').
0.19::trusts('42364','60373').
0.1::trusts('41520','41497').
0.1::trusts('56389','41497').
0.1::trusts('41497','41520').
0.1::trusts('57698','41520').
0.1::trusts('59373','59372').
0.19::trusts('61539','59373').
0.1::trusts('7378','61539').
0.1::trusts('59373','61539').
0.19::trusts('7378','53814').
0.1::trusts('7378','61540').
0.19::trusts('41497','60483').
0.1::trusts('56389','60483').
0.1::trusts('42933','60483').
0.19::trusts('60483','42933').
0.1::trusts('7378','18563').

person('42364').
person('7378').
person('13140').
person('57698').
person('60373').
person('41497').
person('41520').
person('56389').
person('49655').
person('59372').
person('59373').
person('61539').
person('53814').
person('61540').
person('60483').
person('42933').
person('18563').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('42364')).
query(buys('7378')).
query(buys('13140')).
query(buys('57698')).
query(buys('60373')).
query(buys('41497')).
query(buys('41520')).
query(buys('56389')).
query(buys('49655')).
query(buys('59372')).
query(buys('59373')).
query(buys('61539')).
query(buys('53814')).
query(buys('61540')).
query(buys('60483')).
query(buys('42933')).
query(buys('18563')).
