10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('34875','26241').
0.1::trusts('27886','26241').
0.1::trusts('34800','26241').
0.19::trusts('53101','26241').
0.19::trusts('26241','34875').
0.1::trusts('27881','34875').
0.271::trusts('50686','34875').
0.1::trusts('50991','34875').
0.1::trusts('25832','34875').
0.19::trusts('53097','34875').
0.3439::trusts('26241','27886').
0.19::trusts('26241','34800').
0.19::trusts('26241','53101').
0.271::trusts('53157','53101').
0.271::trusts('27881','6537').
0.19::trusts('26241','27881').
0.271::trusts('6537','27881').
0.19::trusts('34875','27881').
0.1::trusts('34875','50686').
0.1::trusts('34875','50991').
0.19::trusts('54485','50991').
0.1::trusts('34875','25832').
0.19::trusts('34875','53097').
0.19::trusts('53101','53157').
0.1::trusts('50991','54485').
0.1::trusts('50686','46521').
0.1::trusts('27881','59074').

person('26241').
person('34875').
person('27886').
person('34800').
person('53101').
person('6537').
person('27881').
person('50686').
person('50991').
person('25832').
person('53097').
person('53157').
person('54485').
person('46521').
person('59074').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('26241')).
query(buys('34875')).
query(buys('27886')).
query(buys('34800')).
query(buys('53101')).
query(buys('6537')).
query(buys('27881')).
query(buys('50686')).
query(buys('50991')).
query(buys('25832')).
query(buys('53097')).
query(buys('53157')).
query(buys('54485')).
query(buys('46521')).
query(buys('59074')).
