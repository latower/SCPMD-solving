10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('27808','30777').
0.1::trusts('42872','30777').
0.19::trusts('32192','27808').
0.1::trusts('36868','27808').
0.1::trusts('19695','27808').
0.1::trusts('27803','27808').
0.1::trusts('30777','42872').
0.19::trusts('27808','36868').
0.1::trusts('27808','19695').
0.271::trusts('27808','27803').
0.1::trusts('27808','27786').
0.1::trusts('30777','3634').
0.1::trusts('30777','36489').
0.1::trusts('47269','16057').
0.1::trusts('36868','47269').
0.1::trusts('36868','30806').
0.1::trusts('36868','31662').
0.1::trusts('36868','36870').

person('30777').
person('27808').
person('42872').
person('36868').
person('32192').
person('19695').
person('27803').
person('27786').
person('3634').
person('36489').
person('16057').
person('47269').
person('30806').
person('31662').
person('36870').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('30777')).
query(buys('27808')).
query(buys('42872')).
query(buys('36868')).
query(buys('32192')).
query(buys('19695')).
query(buys('27803')).
query(buys('27786')).
query(buys('3634')).
query(buys('36489')).
query(buys('16057')).
query(buys('47269')).
query(buys('30806')).
query(buys('31662')).
query(buys('36870')).
