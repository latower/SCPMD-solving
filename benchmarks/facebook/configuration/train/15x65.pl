10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('27670','24251').
0.19::trusts('24249','24251').
0.1::trusts('33945','24251').
0.271::trusts('13638','27670').
0.1::trusts('24249','27670').
0.19::trusts('24251','24249').
0.19::trusts('24251','33945').
0.19::trusts('30747','33945').
0.19::trusts('61245','22057').
0.1::trusts('22057','61245').
0.1::trusts('33945','61245').
0.1::trusts('53875','61245').
0.271::trusts('27670','13638').
0.1::trusts('46496','13638').
0.1::trusts('22057','53875').
0.19::trusts('61245','53875').
0.19::trusts('36161','53875').
0.1::trusts('13638','46496').
0.19::trusts('30747','36085').
0.19::trusts('36085','30747').
0.19::trusts('33945','30747').
0.3439::trusts('54252','30747').
0.271::trusts('30747','54252').
0.1::trusts('22057','36161').
0.19::trusts('53875','36161').
0.19::trusts('13638','31415').
0.1::trusts('13638','46498').
0.1::trusts('46496','46498').

person('24251').
person('27670').
person('24249').
person('33945').
person('22057').
person('61245').
person('13638').
person('53875').
person('46496').
person('36085').
person('30747').
person('54252').
person('36161').
person('31415').
person('46498').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('24251')).
query(buys('27670')).
query(buys('24249')).
query(buys('33945')).
query(buys('22057')).
query(buys('61245')).
query(buys('13638')).
query(buys('53875')).
query(buys('46496')).
query(buys('36085')).
query(buys('30747')).
query(buys('54252')).
query(buys('36161')).
query(buys('31415')).
query(buys('46498')).
