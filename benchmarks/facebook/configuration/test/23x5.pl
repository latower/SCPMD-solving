10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19342','7014').
0.19::trusts('9606','7014').
0.271::trusts('25878','7014').
0.1::trusts('7014','19342').
0.1::trusts('25877','19342').
0.271::trusts('7014','9606').
0.19::trusts('11328','9606').
0.1::trusts('38759','9606').
0.19::trusts('7014','25878').
0.1::trusts('11332','17154').
0.1::trusts('17154','11332').
0.1::trusts('46508','11332').
0.1::trusts('11361','11332').
0.19::trusts('11332','46508').
0.1::trusts('38759','46508').
0.1::trusts('11332','11361').
0.1::trusts('11328','11361').
0.1::trusts('19342','25877').
0.468559::trusts('43041','24900').
0.271::trusts('43045','24900').
0.271::trusts('43049','24900').
0.612579511::trusts('24900','43041').
0.19::trusts('43049','43041').
0.7458134171671::trusts('24900','43045').
0.1::trusts('24900','43049').
0.19::trusts('43041','43049').
0.1::trusts('32778','43049').
0.1::trusts('9606','11328').
0.1::trusts('11343','11328').
0.1::trusts('11339','11328').
0.1::trusts('7014','38759').
0.468559::trusts('24900','38759').
0.1::trusts('46508','38759').
0.1::trusts('43049','32778').
0.1::trusts('11328','11343').
0.1::trusts('11328','11339').
0.19::trusts('24900','43044').
0.19::trusts('11339','9065').
0.19::trusts('11343','47131').
0.1::trusts('25878','45580').
0.1::trusts('38759','47806').

person('7014').
person('19342').
person('9606').
person('25878').
person('17154').
person('11332').
person('46508').
person('11361').
person('25877').
person('24900').
person('43041').
person('43045').
person('43049').
person('11328').
person('38759').
person('32778').
person('11343').
person('11339').
person('43044').
person('9065').
person('47131').
person('45580').
person('47806').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('7014')).
query(buys('19342')).
query(buys('9606')).
query(buys('25878')).
query(buys('17154')).
query(buys('11332')).
query(buys('46508')).
query(buys('11361')).
query(buys('25877')).
query(buys('24900')).
query(buys('43041')).
query(buys('43045')).
query(buys('43049')).
query(buys('11328')).
query(buys('38759')).
query(buys('32778')).
query(buys('11343')).
query(buys('11339')).
query(buys('43044')).
query(buys('9065')).
query(buys('47131')).
query(buys('45580')).
query(buys('47806')).