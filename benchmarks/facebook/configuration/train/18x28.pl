10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('52216','23349').
0.56953279::trusts('50409','23349').
0.814697981114816::trusts('51171','23349').
0.1::trusts('54608','23349').
0.1::trusts('53285','23349').
0.271::trusts('23349','52216').
0.271::trusts('23349','50409').
0.19::trusts('52216','50409').
0.1::trusts('49450','50409').
0.814697981114816::trusts('51171','50409').
0.1::trusts('54467','50409').
0.717570463519::trusts('23349','51171').
0.988027484817438::trusts('50409','51171').
0.1::trusts('54467','51171').
0.271::trusts('23349','53285').
0.1::trusts('46811','53285').
0.1::trusts('46811','49450').
0.1::trusts('38297','49450').
0.1::trusts('23349','54467').
0.271::trusts('50409','54467').
0.1::trusts('52401','54467').
0.1::trusts('50409','10971').
0.19::trusts('43977','46811').
0.1::trusts('49450','46811').
0.271::trusts('46811','43977').
0.1::trusts('49450','38297').
0.1::trusts('54467','52401').
0.5217031::trusts('59741','52401').
0.56953279::trusts('52401','59741').
0.1::trusts('52401','26132').
0.1::trusts('45886','60762').
0.1::trusts('60762','45886').
0.19::trusts('52401','54469').
0.1::trusts('45886','54469').

person('23349').
person('52216').
person('50409').
person('51171').
person('54608').
person('53285').
person('49450').
person('54467').
person('10971').
person('46811').
person('43977').
person('38297').
person('52401').
person('59741').
person('26132').
person('60762').
person('45886').
person('54469').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('23349')).
query(buys('52216')).
query(buys('50409')).
query(buys('51171')).
query(buys('54608')).
query(buys('53285')).
query(buys('49450')).
query(buys('54467')).
query(buys('10971')).
query(buys('46811')).
query(buys('43977')).
query(buys('38297')).
query(buys('52401')).
query(buys('59741')).
query(buys('26132')).
query(buys('60762')).
query(buys('45886')).
query(buys('54469')).
