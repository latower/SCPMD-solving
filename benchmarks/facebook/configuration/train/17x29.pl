10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('7581','1136').
0.1::trusts('5920','1136').
0.19::trusts('27916','1136').
0.1::trusts('9140','1136').
0.19::trusts('19232','1136').
0.5217031::trusts('1136','5920').
0.271::trusts('19232','27916').
0.1::trusts('5235','27916').
0.1::trusts('44743','27916').
0.1::trusts('44742','27916').
0.19::trusts('44739','27916').
0.1::trusts('1136','9140').
0.1::trusts('48891','9140').
0.1::trusts('1136','19232').
0.19::trusts('27916','19232').
0.1::trusts('44742','19232').
0.1::trusts('27916','5235').
0.19::trusts('48512','5235').
0.1::trusts('27916','44743').
0.1::trusts('19232','44742').
0.271::trusts('27916','44739').
0.1::trusts('9140','48891').
0.40951::trusts('48512','46981').
0.1::trusts('5235','48512').
0.271::trusts('49011','48512').
0.1::trusts('1136','27917').
0.19::trusts('27916','27917').
0.1::trusts('7581','27888').
0.1::trusts('27916','27919').
0.1::trusts('44739','27919').

person('1136').
person('7581').
person('5920').
person('27916').
person('9140').
person('19232').
person('5235').
person('44743').
person('44742').
person('44739').
person('48891').
person('46981').
person('48512').
person('27917').
person('49011').
person('27888').
person('27919').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1136')).
query(buys('7581')).
query(buys('5920')).
query(buys('27916')).
query(buys('9140')).
query(buys('19232')).
query(buys('5235')).
query(buys('44743')).
query(buys('44742')).
query(buys('44739')).
query(buys('48891')).
query(buys('46981')).
query(buys('48512')).
query(buys('27917')).
query(buys('49011')).
query(buys('27888')).
query(buys('27919')).
