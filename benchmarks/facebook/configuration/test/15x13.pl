10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('42782','9977').
0.271::trusts('9018','9977').
0.1::trusts('46812','9977').
0.1::trusts('7281','9977').
0.19::trusts('9977','42782').
0.19::trusts('9977','9018').
0.1::trusts('57254','9018').
0.1::trusts('60249','9018').
0.1::trusts('9977','46812').
0.1::trusts('56288','46812').
0.1::trusts('9977','7281').
0.1::trusts('46806','7281').
0.19::trusts('9018','57254').
0.1::trusts('46812','56288').
0.1::trusts('7281','46806').
0.1::trusts('35318','46806').
0.19::trusts('46806','35318').
0.1::trusts('46806','22497').
0.1::trusts('22497','30615').
0.1::trusts('42782','46497').
0.1::trusts('7281','38718').
0.1::trusts('60249','60250').

person('9977').
person('42782').
person('9018').
person('46812').
person('7281').
person('57254').
person('60249').
person('56288').
person('46806').
person('35318').
person('22497').
person('30615').
person('46497').
person('38718').
person('60250').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('9977')).
query(buys('42782')).
query(buys('9018')).
query(buys('46812')).
query(buys('7281')).
query(buys('57254')).
query(buys('60249')).
query(buys('56288')).
query(buys('46806')).
query(buys('35318')).
query(buys('22497')).
query(buys('30615')).
query(buys('46497')).
query(buys('38718')).
query(buys('60250')).
