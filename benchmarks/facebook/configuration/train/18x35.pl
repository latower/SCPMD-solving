10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('7149','1106').
0.1::trusts('1110','1106').
0.271::trusts('1106','7149').
0.1::trusts('5852','7149').
0.1::trusts('17124','7149').
0.1::trusts('447','7149').
0.271::trusts('17740','7149').
0.1::trusts('1106','1110').
0.1::trusts('31476','1110').
0.19::trusts('7149','5852').
0.1::trusts('17125','17124').
0.19::trusts('5852','17125').
0.1::trusts('7149','17125').
0.19::trusts('27999','17125').
0.19::trusts('17125','27999').
0.1::trusts('7149','447').
0.19::trusts('8538','447').
0.271::trusts('7149','17740').
0.1::trusts('8538','2602').
0.1::trusts('28777','31476').
0.1::trusts('7149','54087').
0.1::trusts('447','14783').
0.19::trusts('1106','6989').
0.1::trusts('28777','28780').
0.1::trusts('7149','41796').

person('1106').
person('7149').
person('1110').
person('5852').
person('17124').
person('17125').
person('27999').
person('447').
person('17740').
person('2602').
person('8538').
person('31476').
person('54087').
person('28777').
person('14783').
person('6989').
person('28780').
person('41796').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('1106')).
query(buys('7149')).
query(buys('1110')).
query(buys('5852')).
query(buys('17124')).
query(buys('17125')).
query(buys('27999')).
query(buys('447')).
query(buys('17740')).
query(buys('2602')).
query(buys('8538')).
query(buys('31476')).
query(buys('54087')).
query(buys('28777')).
query(buys('14783')).
query(buys('6989')).
query(buys('28780')).
query(buys('41796')).
