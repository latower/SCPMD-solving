10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('19229','22830').
0.1::trusts('58315','22830').
0.1::trusts('24425','22830').
0.19::trusts('22830','19229').
0.271::trusts('19223','19229').
0.1::trusts('22830','58315').
0.1::trusts('56844','58315').
0.19::trusts('22830','24425').
0.1::trusts('58315','24425').
0.1::trusts('56844','24425').
0.1::trusts('19223','1520').
0.1::trusts('19229','19223').
0.1::trusts('49683','19223').
0.1::trusts('18392','19223').
0.890581010868488::trusts('33940','19223').
0.271::trusts('22830','56844').
0.1::trusts('24425','56844').
0.1::trusts('19223','18392').
0.972187161055631::trusts('19223','33940').
0.1::trusts('62019','33940').
0.271::trusts('58282','50601').
0.1::trusts('22830','58282').
0.1::trusts('50601','58282').
0.1::trusts('33940','62019').
0.1::trusts('51959','62019').
0.1::trusts('33940','51959').
0.1::trusts('62019','41823').

person('22830').
person('19229').
person('58315').
person('24425').
person('1520').
person('19223').
person('56844').
person('49683').
person('18392').
person('33940').
person('50601').
person('58282').
person('62019').
person('51959').
person('41823').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('22830')).
query(buys('19229')).
query(buys('58315')).
query(buys('24425')).
query(buys('1520')).
query(buys('19223')).
query(buys('56844')).
query(buys('49683')).
query(buys('18392')).
query(buys('33940')).
query(buys('50601')).
query(buys('58282')).
query(buys('62019')).
query(buys('51959')).
query(buys('41823')).
