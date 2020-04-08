10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('11895','11893').
0.40951::trusts('11891','11893').
0.1::trusts('11893','11895').
0.1::trusts('26724','11895').
0.468559::trusts('25036','11895').
0.7458134171671::trusts('11893','11891').
0.19::trusts('11895','11891').
0.1::trusts('11895','26724').
0.19::trusts('52195','26724').
0.68618940391::trusts('11895','25036').
0.1::trusts('26724','52195').
0.19::trusts('52906','52195').
0.1::trusts('52906','41488').
0.1::trusts('41488','52906').
0.19::trusts('52195','52906').
0.1::trusts('52906','53858').
0.468559::trusts('27617','4264').
0.1::trusts('11895','4264').
0.19::trusts('35648','35400').
0.19::trusts('27617','35648').
0.3439::trusts('35400','35648').
0.1::trusts('26724','22660').
0.1::trusts('52906','59956').

person('11893').
person('11895').
person('11891').
person('26724').
person('25036').
person('52195').
person('41488').
person('52906').
person('53858').
person('4264').
person('27617').
person('35400').
person('35648').
person('22660').
person('59956').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('11893')).
query(buys('11895')).
query(buys('11891')).
query(buys('26724')).
query(buys('25036')).
query(buys('52195')).
query(buys('41488')).
query(buys('52906')).
query(buys('53858')).
query(buys('4264')).
query(buys('27617')).
query(buys('35400')).
query(buys('35648')).
query(buys('22660')).
query(buys('59956')).
