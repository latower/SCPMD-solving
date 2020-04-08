10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('750','6287').
0.468559::trusts('9402','6287').
0.1::trusts('6287','750').
0.1::trusts('4273','750').
0.1::trusts('2155','750').
0.271::trusts('7146','750').
0.19::trusts('2002','750').
0.1::trusts('6287','9402').
0.19::trusts('750','2155').
0.3439::trusts('750','7146').
0.19::trusts('4056','7146').
0.19::trusts('2571','7146').
0.1::trusts('16597','7146').
0.1::trusts('649','7146').
0.271::trusts('750','2002').
0.19::trusts('7146','2571').
0.1::trusts('16597','2571').
0.19::trusts('4056','16597').
0.19::trusts('46594','16597').
0.1::trusts('7146','649').
0.19::trusts('16597','46594').
0.1::trusts('58516','46594').
0.1::trusts('46594','58516').
0.1::trusts('750','7142').
0.5217031::trusts('4273','7139').
0.1::trusts('6287','9408').
0.1::trusts('60692','9408').
0.19::trusts('6287','9411').

person('6287').
person('750').
person('9402').
person('4273').
person('2155').
person('7146').
person('2002').
person('4056').
person('2571').
person('16597').
person('649').
person('46594').
person('58516').
person('7142').
person('7139').
person('9408').
person('60692').
person('9411').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('6287')).
query(buys('750')).
query(buys('9402')).
query(buys('4273')).
query(buys('2155')).
query(buys('7146')).
query(buys('2002')).
query(buys('4056')).
query(buys('2571')).
query(buys('16597')).
query(buys('649')).
query(buys('46594')).
query(buys('58516')).
query(buys('7142')).
query(buys('7139')).
query(buys('9408')).
query(buys('60692')).
query(buys('9411')).
