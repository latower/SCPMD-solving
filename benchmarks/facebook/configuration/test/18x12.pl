10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('26727','23905').
0.1::trusts('26851','23905').
0.1::trusts('6659','23905').
0.1::trusts('23905','26727').
0.1::trusts('18205','26727').
0.1::trusts('30741','26727').
0.1::trusts('23905','26851').
0.1::trusts('43517','26851').
0.19::trusts('23905','6659').
0.1::trusts('61501','6659').
0.1::trusts('23905','43517').
0.1::trusts('46673','43517').
0.271::trusts('24451','13797').
0.1::trusts('30741','13797').
0.1::trusts('41018','13797').
0.1::trusts('40281','13797').
0.271::trusts('13797','24451').
0.19::trusts('30741','24451').
0.19::trusts('13797','30741').
0.19::trusts('24451','30741').
0.1::trusts('26727','30741').
0.1::trusts('60595','30741').
0.1::trusts('13797','41018').
0.19::trusts('13797','40281').
0.1::trusts('1666','40281').
0.19::trusts('30741','60595').
0.1::trusts('40281','1666').
0.1::trusts('6659','61501').
0.1::trusts('6659','6653').
0.1::trusts('46673','26444').
0.1::trusts('43517','26447').

person('23905').
person('26727').
person('26851').
person('6659').
person('43517').
person('46673').
person('13797').
person('24451').
person('30741').
person('41018').
person('40281').
person('60595').
person('1666').
person('18205').
person('61501').
person('6653').
person('26444').
person('26447').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23905')).
query(buys('26727')).
query(buys('26851')).
query(buys('6659')).
query(buys('43517')).
query(buys('46673')).
query(buys('13797')).
query(buys('24451')).
query(buys('30741')).
query(buys('41018')).
query(buys('40281')).
query(buys('60595')).
query(buys('1666')).
query(buys('18205')).
query(buys('61501')).
query(buys('6653')).
query(buys('26444')).
query(buys('26447')).
