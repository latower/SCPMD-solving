10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('17505','9836').
0.1::trusts('24194','9836').
0.19::trusts('9810','9836').
0.1::trusts('13247','9836').
0.19::trusts('9836','17505').
0.19::trusts('24194','17505').
0.1::trusts('9836','24194').
0.1::trusts('9696','24194').
0.1::trusts('17505','24194').
0.1::trusts('8183','24194').
0.1::trusts('6170','24194').
0.3439::trusts('31943','24194').
0.271::trusts('23885','24194').
0.40951::trusts('9836','9810').
0.19::trusts('9836','13247').
0.271::trusts('23695','9696').
0.1::trusts('24194','9696').
0.271::trusts('9696','23695').
0.1::trusts('31943','6170').
0.1::trusts('45975','6170').
0.19::trusts('24194','31943').
0.1::trusts('8183','31943').
0.1::trusts('14121','31943').
0.19::trusts('6170','31943').
0.19::trusts('24194','23885').
0.1::trusts('31943','14121').
0.1::trusts('6170','45975').
0.1::trusts('9836','12180').
0.1::trusts('8183','31944').
0.19::trusts('45975','63586').

person('9836').
person('17505').
person('24194').
person('9810').
person('13247').
person('9696').
person('23695').
person('8183').
person('6170').
person('31943').
person('23885').
person('14121').
person('45975').
person('12180').
person('31944').
person('63586').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9836')).
query(buys('17505')).
query(buys('24194')).
query(buys('9810')).
query(buys('13247')).
query(buys('9696')).
query(buys('23695')).
query(buys('8183')).
query(buys('6170')).
query(buys('31943')).
query(buys('23885')).
query(buys('14121')).
query(buys('45975')).
query(buys('12180')).
query(buys('31944')).
query(buys('63586')).
