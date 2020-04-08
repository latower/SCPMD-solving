10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.468559::trusts('21055','20989').
0.1::trusts('32798','20989').
0.1::trusts('32801','20989').
0.19::trusts('20989','21055').
0.717570463519::trusts('4911','21055').
0.1::trusts('32773','21055').
0.19::trusts('20989','32798').
0.1::trusts('20989','32801').
0.1::trusts('53094','32801').
0.1::trusts('41102','32801').
0.5217031::trusts('21055','4911').
0.19::trusts('21614','4911').
0.19::trusts('21055','32773').
0.1::trusts('41102','53094').
0.271::trusts('27607','53094').
0.19::trusts('52191','53094').
0.1::trusts('14544','21614').
0.1::trusts('4911','21614').
0.271::trusts('53094','27607').
0.271::trusts('41102','27607').
0.1::trusts('34073','27607').
0.19::trusts('52191','27607').
0.19::trusts('53094','52191').
0.1::trusts('41102','52191').
0.19::trusts('27607','52191').
0.19::trusts('27607','34073').
0.40951::trusts('33855','34073').
0.1::trusts('27362','34073').
0.19::trusts('34073','27362').
0.19::trusts('49197','27362').
0.1::trusts('27362','49197').
0.1::trusts('4911','30097').
0.1::trusts('33855','47972').
0.1::trusts('26885','47972').
0.271::trusts('33855','26885').
0.1::trusts('49197','49198').

person('20989').
person('21055').
person('32798').
person('32801').
person('4911').
person('32773').
person('53094').
person('41102').
person('21614').
person('27607').
person('52191').
person('14544').
person('34073').
person('33855').
person('27362').
person('49197').
person('30097').
person('47972').
person('26885').
person('49198').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('20989')).
query(buys('21055')).
query(buys('32798')).
query(buys('32801')).
query(buys('4911')).
query(buys('32773')).
query(buys('53094')).
query(buys('41102')).
query(buys('21614')).
query(buys('27607')).
query(buys('52191')).
query(buys('14544')).
query(buys('34073')).
query(buys('33855')).
query(buys('27362')).
query(buys('49197')).
query(buys('30097')).
query(buys('47972')).
query(buys('26885')).
query(buys('49198')).
