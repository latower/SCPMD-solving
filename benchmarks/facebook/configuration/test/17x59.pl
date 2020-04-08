10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('22042','34544').
0.1::trusts('25184','34544').
0.19::trusts('44075','34544').
0.19::trusts('34544','22042').
0.1::trusts('28779','25184').
0.1::trusts('41578','25184').
0.19::trusts('50927','25184').
0.1::trusts('42591','25184').
0.1::trusts('34544','44075').
0.1::trusts('44074','44075').
0.1::trusts('42591','33463').
0.1::trusts('33463','42591').
0.5217031::trusts('25184','42591').
0.1::trusts('41578','28779').
0.1::trusts('58826','28779').
0.1::trusts('25184','41578').
0.1::trusts('28779','41578').
0.1::trusts('34544','50927').
0.19::trusts('25184','50927').
0.1::trusts('48330','58826').
0.1::trusts('28779','58826').
0.1::trusts('25184','62155').
0.1::trusts('25184','28253').
0.1::trusts('34544','49219').
0.1::trusts('25184','49219').
0.1::trusts('25184','47285').
0.1::trusts('25184','25177').

person('34544').
person('22042').
person('25184').
person('44075').
person('33463').
person('42591').
person('28779').
person('41578').
person('50927').
person('58826').
person('48330').
person('44074').
person('62155').
person('28253').
person('49219').
person('47285').
person('25177').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('34544')).
query(buys('22042')).
query(buys('25184')).
query(buys('44075')).
query(buys('33463')).
query(buys('42591')).
query(buys('28779')).
query(buys('41578')).
query(buys('50927')).
query(buys('58826')).
query(buys('48330')).
query(buys('44074')).
query(buys('62155')).
query(buys('28253')).
query(buys('49219')).
query(buys('47285')).
query(buys('25177')).
