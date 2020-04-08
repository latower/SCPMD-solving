10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('50567','20616').
0.19::trusts('9501','20616').
0.1::trusts('49764','20616').
0.19::trusts('20616','50567').
0.1::trusts('42616','50567').
0.19::trusts('9501','50567').
0.1::trusts('23748','50567').
0.1::trusts('45585','50567').
0.19::trusts('50567','9501').
0.1::trusts('45654','9501').
0.3439::trusts('37509','9501').
0.1::trusts('50921','9501').
0.3439::trusts('20616','49764').
0.1::trusts('50567','49764').
0.1::trusts('22188','49764').
0.1::trusts('50567','42616').
0.1::trusts('41008','42616').
0.1::trusts('20616','23748').
0.1::trusts('50567','23748').
0.1::trusts('49764','23748').
0.19::trusts('50567','45585').
0.1::trusts('49764','45585').
0.1::trusts('42616','41008').
0.1::trusts('20616','22188').
0.1::trusts('50567','22188').
0.19::trusts('49764','22188').
0.1::trusts('9501','45654').
0.1::trusts('47904','45654').
0.40951::trusts('9501','37509').
0.1::trusts('45655','37509').
0.1::trusts('45654','47904').
0.19::trusts('37509','45655').
0.1::trusts('45513','25565').
0.19::trusts('42616','45513').
0.1::trusts('37509','45657').
0.1::trusts('45513','52439').

person('20616').
person('50567').
person('9501').
person('49764').
person('42616').
person('23748').
person('45585').
person('41008').
person('22188').
person('45654').
person('37509').
person('50921').
person('47904').
person('45655').
person('25565').
person('45513').
person('45657').
person('52439').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('20616')).
query(buys('50567')).
query(buys('9501')).
query(buys('49764')).
query(buys('42616')).
query(buys('23748')).
query(buys('45585')).
query(buys('41008')).
query(buys('22188')).
query(buys('45654')).
query(buys('37509')).
query(buys('50921')).
query(buys('47904')).
query(buys('45655')).
query(buys('25565')).
query(buys('45513')).
query(buys('45657')).
query(buys('52439')).
