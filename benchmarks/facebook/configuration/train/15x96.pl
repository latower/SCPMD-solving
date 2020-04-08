10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('9738','4313').
0.972187161055631::trusts('21263','27007').
0.6513215599::trusts('27015','27007').
0.1::trusts('26368','27007').
0.68618940391::trusts('27007','21263').
0.1::trusts('26368','21263').
0.271::trusts('42861','21263').
0.19::trusts('45288','21263').
0.468559::trusts('27007','27015').
0.19::trusts('21263','27015').
0.1::trusts('27007','26368').
0.1::trusts('21263','26368').
0.3439::trusts('25466','26368').
0.19::trusts('21263','42861').
0.612579511::trusts('43604','42861').
0.19::trusts('25466','36253').
0.1::trusts('9738','25466').
0.19::trusts('34673','25466').
0.19::trusts('26368','25466').
0.1::trusts('4313','34673').
0.1::trusts('9738','34673').
0.1::trusts('25466','34673').
0.1::trusts('21263','43604').
0.7458134171671::trusts('42861','43604').
0.1::trusts('9738','22889').
0.1::trusts('9738','36854').
0.1::trusts('21263','54289').

person('4313').
person('9738').
person('27007').
person('21263').
person('27015').
person('26368').
person('42861').
person('45288').
person('36253').
person('25466').
person('34673').
person('43604').
person('22889').
person('36854').
person('54289').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('4313')).
query(buys('9738')).
query(buys('27007')).
query(buys('21263')).
query(buys('27015')).
query(buys('26368')).
query(buys('42861')).
query(buys('45288')).
query(buys('36253')).
query(buys('25466')).
query(buys('34673')).
query(buys('43604')).
query(buys('22889')).
query(buys('36854')).
query(buys('54289')).
