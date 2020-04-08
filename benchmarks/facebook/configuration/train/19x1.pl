10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.271::trusts('49191','49184').
0.1::trusts('49192','49184').
0.1::trusts('49190','49184').
0.19::trusts('49184','49191').
0.19::trusts('49185','49191').
0.1::trusts('43370','49191').
0.1::trusts('18330','49191').
0.1::trusts('13981','49191').
0.1::trusts('49184','49192').
0.1::trusts('49184','49190').
0.1::trusts('49191','49185').
0.1::trusts('9972','49185').
0.19::trusts('49185','9972').
0.271::trusts('44305','9972').
0.1::trusts('49191','18330').
0.1::trusts('49255','18330').
0.1::trusts('22584','18330').
0.271::trusts('49184','13981').
0.1::trusts('49191','13981').
0.1::trusts('18330','49255').
0.1::trusts('9972','44305').
0.1::trusts('11415','44305').
0.1::trusts('52365','44305').
0.19::trusts('44305','52365').
0.1::trusts('49191','22584').
0.1::trusts('18330','22584').
0.1::trusts('26741','22584').
0.3439::trusts('18330','16945').
0.1::trusts('22584','26741').
0.19::trusts('13981','26741').
0.1::trusts('49192','49253').
0.1::trusts('49184','49193').
0.1::trusts('49191','45717').

person('49184').
person('49191').
person('49192').
person('49190').
person('49185').
person('9972').
person('43370').
person('18330').
person('13981').
person('49255').
person('44305').
person('11415').
person('52365').
person('22584').
person('16945').
person('26741').
person('49253').
person('49193').
person('45717').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('49184')).
query(buys('49191')).
query(buys('49192')).
query(buys('49190')).
query(buys('49185')).
query(buys('9972')).
query(buys('43370')).
query(buys('18330')).
query(buys('13981')).
query(buys('49255')).
query(buys('44305')).
query(buys('11415')).
query(buys('52365')).
query(buys('22584')).
query(buys('16945')).
query(buys('26741')).
query(buys('49253')).
query(buys('49193')).
query(buys('45717')).
