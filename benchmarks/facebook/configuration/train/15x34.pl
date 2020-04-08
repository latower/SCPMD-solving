10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.1::trusts('18605','15016').
0.1::trusts('15016','18605').
0.1::trusts('13759','18605').
0.468559::trusts('58186','18605').
0.1::trusts('18605','13759').
0.271::trusts('14564','13759').
0.56953279::trusts('19973','13759').
0.1::trusts('18605','58186').
0.1::trusts('19385','58186').
0.1::trusts('14564','8316').
0.1::trusts('14481','8316').
0.1::trusts('26351','8316').
0.1::trusts('8316','14564').
0.271::trusts('13759','14564').
0.19::trusts('8316','14481').
0.1::trusts('8316','26351').
0.1::trusts('13759','19973').
0.19::trusts('19985','19973').
0.5217031::trusts('19973','19985').
0.1::trusts('60225','19985').
0.1::trusts('13759','14165').
0.271::trusts('58186','19385').
0.19::trusts('19985','60225').
0.19::trusts('19973','59149').
0.1::trusts('60225','52923').

person('15016').
person('18605').
person('13759').
person('58186').
person('8316').
person('14564').
person('14481').
person('26351').
person('19973').
person('19985').
person('14165').
person('19385').
person('60225').
person('59149').
person('52923').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('15016')).
query(buys('18605')).
query(buys('13759')).
query(buys('58186')).
query(buys('8316')).
query(buys('14564')).
query(buys('14481')).
query(buys('26351')).
query(buys('19973')).
query(buys('19985')).
query(buys('14165')).
query(buys('19385')).
query(buys('60225')).
query(buys('59149')).
query(buys('52923')).
