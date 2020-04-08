10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('39257','17071').
0.1::trusts('51079','17071').
0.1::trusts('17071','51079').
0.5217031::trusts('2656','51079').
0.1::trusts('5928','2656').
0.1::trusts('39257','2656').
0.271::trusts('51079','2656').
0.7458134171671::trusts('50545','2656').
0.19::trusts('43600','2656').
0.3439::trusts('9027','2656').
0.40951::trusts('22842','2656').
0.833228183003334::trusts('5928','50545').
0.612579511::trusts('2656','50545').
0.271::trusts('10636','50545').
0.19::trusts('5928','10636').
0.40951::trusts('50545','10636').
0.271::trusts('2656','43600').
0.271::trusts('2656','22842').
0.1::trusts('5928','7770').
0.1::trusts('5928','5940').
0.1::trusts('5928','5955').
0.1::trusts('20730','5955').
0.1::trusts('2656','27864').
0.1::trusts('27864','2657').
0.1::trusts('9027','46389').
0.19::trusts('2656','37378').

person('17071').
person('39257').
person('51079').
person('2656').
person('50545').
person('5928').
person('10636').
person('43600').
person('9027').
person('22842').
person('7770').
person('5940').
person('5955').
person('20730').
person('27864').
person('2657').
person('46389').
person('37378').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('17071')).
query(buys('39257')).
query(buys('51079')).
query(buys('2656')).
query(buys('50545')).
query(buys('5928')).
query(buys('10636')).
query(buys('43600')).
query(buys('9027')).
query(buys('22842')).
query(buys('7770')).
query(buys('5940')).
query(buys('5955')).
query(buys('20730')).
query(buys('27864')).
query(buys('2657')).
query(buys('46389')).
query(buys('37378')).
