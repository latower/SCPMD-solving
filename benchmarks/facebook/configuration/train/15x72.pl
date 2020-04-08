10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('43928','25537').
0.40951::trusts('34447','18869').
0.1::trusts('14856','18869').
0.1::trusts('13874','18869').
0.468559::trusts('34386','18869').
0.56953279::trusts('35637','18869').
0.1::trusts('18869','34447').
0.468559::trusts('19066','34447').
0.1::trusts('25537','14856').
0.19::trusts('18869','14856').
0.1::trusts('18869','13874').
0.3439::trusts('18869','34386').
0.1::trusts('35637','34386').
0.612579511::trusts('18869','35637').
0.1::trusts('34386','35637').
0.68618940391::trusts('34447','19066').
0.19::trusts('25537','18867').
0.1::trusts('18869','18867').
0.1::trusts('35637','33746').
0.1::trusts('32409','33746').
0.1::trusts('35637','40002').
0.19::trusts('35637','44304').
0.1::trusts('35637','30675').

person('25537').
person('43928').
person('18869').
person('34447').
person('14856').
person('13874').
person('34386').
person('35637').
person('19066').
person('18867').
person('33746').
person('32409').
person('40002').
person('44304').
person('30675').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('25537')).
query(buys('43928')).
query(buys('18869')).
query(buys('34447')).
query(buys('14856')).
query(buys('13874')).
query(buys('34386')).
query(buys('35637')).
query(buys('19066')).
query(buys('18867')).
query(buys('33746')).
query(buys('32409')).
query(buys('40002')).
query(buys('44304')).
query(buys('30675')).
