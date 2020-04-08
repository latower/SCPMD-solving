10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('10536','9344').
0.19::trusts('48549','9344').
0.1::trusts('2432','9344').
0.1::trusts('10395','9344').
0.1::trusts('42600','9344').
0.1::trusts('9344','10536').
0.40951::trusts('11395','10536').
0.1::trusts('10573','10536').
0.1::trusts('11408','10536').
0.1::trusts('11407','10536').
0.19::trusts('9344','48549').
0.1::trusts('9344','2432').
0.1::trusts('9344','10395').
0.1::trusts('9344','10573').
0.1::trusts('10536','10573').
0.19::trusts('11395','10573').
0.1::trusts('10536','11408').
0.19::trusts('10536','11407').
0.19::trusts('11402','11407').
0.1::trusts('11407','11402').
0.1::trusts('11905','11402').
0.1::trusts('11395','12909').
0.1::trusts('9344','12914').
0.1::trusts('11395','12914').
0.19::trusts('10536','11403').
0.1::trusts('11402','11403').
0.1::trusts('11399','11403').
0.1::trusts('10573','54647').
0.1::trusts('10536','9346').
0.1::trusts('9344','50187').
0.1::trusts('9344','10571').
0.1::trusts('9346','10571').

person('9344').
person('10536').
person('48549').
person('2432').
person('10395').
person('42600').
person('11395').
person('10573').
person('11408').
person('11407').
person('11402').
person('11905').
person('12909').
person('12914').
person('11403').
person('11399').
person('54647').
person('9346').
person('50187').
person('10571').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9344')).
query(buys('10536')).
query(buys('48549')).
query(buys('2432')).
query(buys('10395')).
query(buys('42600')).
query(buys('11395')).
query(buys('10573')).
query(buys('11408')).
query(buys('11407')).
query(buys('11402')).
query(buys('11905')).
query(buys('12909')).
query(buys('12914')).
query(buys('11403')).
query(buys('11399')).
query(buys('54647')).
query(buys('9346')).
query(buys('50187')).
query(buys('10571')).
