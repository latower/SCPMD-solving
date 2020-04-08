10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('8990','1809').
0.1::trusts('4478','1809').
0.1::trusts('7144','1809').
0.1::trusts('8979','8990').
0.1::trusts('4478','8990').
0.5217031::trusts('8983','8990').
0.1::trusts('8988','8990').
0.271::trusts('53136','8990').
0.3439::trusts('1809','4478').
0.271::trusts('8990','4478').
0.1::trusts('1809','7144').
0.1::trusts('8990','8979').
0.19::trusts('9000','8979').
0.1::trusts('23998','8979').
0.271::trusts('8990','8983').
0.1::trusts('8990','8988').
0.3439::trusts('8990','53136').
0.1::trusts('45800','53136').
0.19::trusts('8979','9000').
0.271::trusts('38731','9000').
0.1::trusts('1809','45800').
0.1::trusts('8988','45800').
0.271::trusts('26449','45800').
0.1::trusts('51376','26449').
0.1::trusts('38692','26449').
0.1::trusts('45800','26449').
0.1::trusts('9000','38731').
0.19::trusts('30886','38731').
0.19::trusts('38731','30886').
0.1::trusts('8983','8995').
0.1::trusts('53136','46692').

person('1809').
person('8990').
person('4478').
person('7144').
person('8979').
person('8983').
person('8988').
person('53136').
person('9000').
person('23998').
person('45800').
person('26449').
person('38731').
person('30886').
person('51376').
person('38692').
person('8995').
person('46692').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1809')).
query(buys('8990')).
query(buys('4478')).
query(buys('7144')).
query(buys('8979')).
query(buys('8983')).
query(buys('8988')).
query(buys('53136')).
query(buys('9000')).
query(buys('23998')).
query(buys('45800')).
query(buys('26449')).
query(buys('38731')).
query(buys('30886')).
query(buys('51376')).
query(buys('38692')).
query(buys('8995')).
query(buys('46692')).
