10
?::marketed(P) :- person(P).

0.2::buy_from_marketing(_).

0.19::trusts('9630','20449').
0.271::trusts('38463','20449').
0.1::trusts('40738','20449').
0.271::trusts('45777','20449').
0.1::trusts('45955','20449').
0.1::trusts('8992','20449').
0.19::trusts('20449','9630').
0.1::trusts('37967','9630').
0.1::trusts('40738','9630').
0.19::trusts('20449','38463').
0.1::trusts('30040','38463').
0.1::trusts('20449','40738').
0.19::trusts('3275','40738').
0.1::trusts('20449','45777').
0.1::trusts('38463','45777').
0.1::trusts('20449','45955').
0.1::trusts('20449','8992').
0.1::trusts('38463','8992').
0.271::trusts('30040','8992').
0.1::trusts('55953','8992').
0.1::trusts('7395','8992').
0.19::trusts('38463','30040').
0.19::trusts('8992','30040').
0.1::trusts('40738','3275').
0.1::trusts('8992','55953').
0.1::trusts('8992','7395').
0.1::trusts('23812','7395').
0.19::trusts('60086','7395').
0.1::trusts('7395','23812').
0.1::trusts('7395','60086').
0.1::trusts('40738','57800').
0.1::trusts('57078','57800').
0.1::trusts('38463','45776').
0.1::trusts('37967','24095').
0.1::trusts('7395','60087').

person('20449').
person('9630').
person('38463').
person('40738').
person('45777').
person('45955').
person('8992').
person('37967').
person('30040').
person('3275').
person('55953').
person('7395').
person('23812').
person('60086').
person('57800').
person('57078').
person('45776').
person('24095').
person('60087').

buys(X) :- marketed(X), buy_from_marketing(X).
buys(X) :- trusts(X,Y), buys(Y).

query(buys('20449')).
query(buys('9630')).
query(buys('38463')).
query(buys('40738')).
query(buys('45777')).
query(buys('45955')).
query(buys('8992')).
query(buys('37967')).
query(buys('30040')).
query(buys('3275')).
query(buys('55953')).
query(buys('7395')).
query(buys('23812')).
query(buys('60086')).
query(buys('57800')).
query(buys('57078')).
query(buys('45776')).
query(buys('24095')).
query(buys('60087')).
