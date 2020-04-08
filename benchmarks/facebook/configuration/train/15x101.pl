10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.814697981114816::trusts('10727','17882').
0.833228183003334::trusts('23971','17882').
0.1::trusts('31407','17882').
0.833228183003334::trusts('17882','10727').
0.1::trusts('23971','10727').
0.1::trusts('28928','10727').
0.94185026299696::trusts('17882','23971').
0.5217031::trusts('27589','23971').
0.1::trusts('36656','23971').
0.5217031::trusts('23971','27589').
0.56953279::trusts('29125','27589').
0.1::trusts('29114','27589').
0.1::trusts('29122','27589').
0.1::trusts('34784','27589').
0.40951::trusts('27589','29125').
0.1::trusts('27589','29114').
0.1::trusts('27589','29122').
0.1::trusts('27589','34784').
0.19::trusts('10727','17048').
0.1::trusts('10727','27195').
0.1::trusts('29122','54506').
0.1::trusts('10727','23975').

person('17882').
person('10727').
person('23971').
person('31407').
person('27589').
person('29125').
person('29114').
person('29122').
person('34784').
person('28928').
person('36656').
person('17048').
person('27195').
person('54506').
person('23975').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17882')).
query(buys('10727')).
query(buys('23971')).
query(buys('31407')).
query(buys('27589')).
query(buys('29125')).
query(buys('29114')).
query(buys('29122')).
query(buys('34784')).
query(buys('28928')).
query(buys('36656')).
query(buys('17048')).
query(buys('27195')).
query(buys('54506')).
query(buys('23975')).
